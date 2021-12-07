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
		// 파일 업로드 기능에서는 HttpServletRequest 타입의 객체를 사용할 수 없음
		// 사용자가 보낸 파라미터 값을 가져오려면 MultipartRequest 타입의 객체만 사용해야함
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
		
		Enumeration<String> paramNames = multi.getParameterNames();
		
		// type이 file이 아닌 파라미터에 접근하는 코드
		while(paramNames.hasMoreElements()) {
			String paramName = paramNames.nextElement();
			String paramValue = multi.getParameter(paramName);
			
			System.out.println(paramName + " =>" + paramValue);
		}
		System.out.println(" - - - - - ");
		// type이 file이 아닌 파라미터에 접근하는 코드
		
		Enumeration<String> fileNames = multi.getFileNames();
		
		// type이 file인 파라미터에 접근하는 코드
		while(fileNames.hasMoreElements()) {
			String paramName = fileNames.nextElement();
			String fileName = multi.getFilesystemName(paramName);
			String original = multi.getOriginalFileName(paramName);
			String type = multi.getContentType(paramName);
			File file = multi.getFile(paramName);
			
			System.out.println("파일을 담고 있는 파라미터의 이름 => "+ paramName);
			System.out.println("실제 저장된 파일의 이름 => "+ fileName);
			System.out.println("사용자가 보낸 파일의 이름 => "+ original);
			System.out.println("사용자가 보낸 파일의 MimeType 이름 => "+ type);
			
			if(file != null) {
				System.out.println("파일의 크기 =>" + file.length());
			}
		}
		// type이 file인 파라미터에 접근하는 코드
	}

}
