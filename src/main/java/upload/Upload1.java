package upload;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload1")
public class Upload1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ���� ���ε� ��ɿ����� HttpServletRequest Ÿ���� ��ü�� ����� �� ����
		// ����ڰ� ���� �Ķ���� ���� ���������� MultipartRequest Ÿ���� ��ü�� ����ؾ���
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
		
		Enumeration<String> paramNames = multi.getParameterNames();
		
		// type�� file�� �ƴ� �Ķ���Ϳ� �����ϴ� �ڵ�
		while(paramNames.hasMoreElements()) {
			String paramName = paramNames.nextElement();
			String paramValue = multi.getParameter(paramName);
			
			System.out.println(paramName + " =>" + paramValue);
		}
		System.out.println(" - - - - - ");
		// type�� file�� �ƴ� �Ķ���Ϳ� �����ϴ� �ڵ�
		
		Enumeration<String> fileNames = multi.getFileNames();
		
		// type�� file�� �Ķ���Ϳ� �����ϴ� �ڵ�
		while(fileNames.hasMoreElements()) {
			String paramName = fileNames.nextElement();
			String fileName = multi.getFilesystemName(paramName);
			String original = multi.getOriginalFileName(paramName);
			String type = multi.getContentType(paramName);
			File file = multi.getFile(paramName);
			
			System.out.println("������ ��� �ִ� �Ķ������ �̸� => "+ paramName);
			System.out.println("���� ����� ������ �̸� => "+ fileName);
			System.out.println("����ڰ� ���� ������ �̸� => "+ original);
			System.out.println("����ڰ� ���� ������ MimeType �̸� => "+ type);
			
			if(file != null) {
				System.out.println("������ ũ�� =>" + file.length());
			}
		}
		// type�� file�� �Ķ���Ϳ� �����ϴ� �ڵ�
	}

}
