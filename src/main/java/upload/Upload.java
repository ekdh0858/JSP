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
		// DefaultFileRenamePolicy() -> 서버에 동일한 파일이 존재하면 웹 브라우저에서 전송된 파일명 뒤에 숫자를 덧붙여서 파일명이 중복되지 않게 하는 파일명 중복 처리 정책
		// 파일이름이 중복됬다는건 동일한 파일이다가 아님
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
	
		String title = multi.getParameter("title");
		
		// getFileNames() -> 보내온 파일들의 파라미터 이름들을 반환
		Enumeration<String> files = multi.getFileNames();
		String name = files.nextElement();
		
		// getFilesystemName(String) -> 실제 서버에 업로드된 파일의 이름이 바뀌었다면 그 바뀐 이름(실제 서버에 저장된 파일 이름)을 반환
		// 매개변수 -> 파라미터의 이름
		String filename = multi.getFilesystemName(name);
		// getOriginalFileName(String) -> 사용자가 보낸 파일의 이름을 반환 / 파일명이 중복되어서 파일의 이름이 바뀌었다면 바뀌기 전 이름을 반환
		// 매개변수 -> 파라미터의 이름
		String original = multi.getOriginalFileName(name);
		
		System.out.println("title = "+title);
		System.out.println("name = "+name);
		System.out.println("filename = "+filename);
		System.out.println("original = "+original);
	}

}
