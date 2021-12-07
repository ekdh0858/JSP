package upload;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload")
public class Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DefaultFileRenamePolicy() -> ������ ������ ������ �����ϸ� �� ���������� ���۵� ���ϸ� �ڿ� ���ڸ� ���ٿ��� ���ϸ��� �ߺ����� �ʰ� �ϴ� ���ϸ� �ߺ� ó�� ��å
		// �����̸��� �ߺ���ٴ°� ������ �����̴ٰ� �ƴ�
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
	
		String title = multi.getParameter("title");
		
		// getFileNames() -> ������ ���ϵ��� �Ķ���� �̸����� ��ȯ
		Enumeration<String> files = multi.getFileNames();
		String name = files.nextElement();
		
		// getFilesystemName(String) -> ���� ������ ���ε�� ������ �̸��� �ٲ���ٸ� �� �ٲ� �̸�(���� ������ ����� ���� �̸�)�� ��ȯ
		// �Ű����� -> �Ķ������ �̸�
		String filename = multi.getFilesystemName(name);
		// getOriginalFileName(String) -> ����ڰ� ���� ������ �̸��� ��ȯ / ���ϸ��� �ߺ��Ǿ ������ �̸��� �ٲ���ٸ� �ٲ�� �� �̸��� ��ȯ
		// �Ű����� -> �Ķ������ �̸�
		String original = multi.getOriginalFileName(name);
		
		System.out.println("title = "+title);
		System.out.println("name = "+name);
		System.out.println("filename = "+filename);
		System.out.println("original = "+original);
	}

}
