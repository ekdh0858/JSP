package upload;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload2")
public class Upload2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// 사용자가 악의를 갖고 해킹 프로그램을 업로드를 할 수가 있음
		// 그러면 사용자는 모르고 해킹 프로그램을 설치하는 경우도 있음
		// 웹 해킹과 관련된 보안 사항을 준비를 해야하지만
		// 보안은 많은 공부와 많은 경험이 필요한 분야이기 때문에
		// 가장 간단한 형태의 보안 사항을 준비
		
		// 백도어(Back-Door) : 해커가 사용자 모르게 컴퓨터로 접근해서 제어를 할 수 있음
		// 일반적으로 백도어는 무언가를 설치하면서 설치되는 형태이기 때문에
		// 설치 프로그램을 업로드 하지 못하게 하는 방법을 강구
	
		// 파일의 확장자를 체크해서 우리가 지정한 확장자의 파일은 업로드 되지 못하도록 막으면 됨
		
		//1. 업로드 하면 안되는 파일의 목록을 작성
		List<String> denyList = new ArrayList<>();
		denyList.add("zip");
		denyList.add("txt");
		denyList.add("exe");
		denyList.add("xlsx");
		denyList.add("xlx");
		
		//2. 우선은 업로드를 해야 사용자가 보낸파일이 어떤 파일인지 파일 정보를 알 수 있음
		// 	  파일 업로드 처리
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
		
		//3. 파일 정보를 꺼냄
		File filename1 = multi.getFile("filename1");
		
		//4. 파일 정보에서 이 파일의 확장자가 업로드 하면 안되는 파일인지 체크
		
		//5. 체크 상태에 따라서 적절한 응답을 하도록 설정
		// 업로드 하면 안되는 파일인 경우에는 400 상태코드를 response
		
		//파일의 확장자는 파일 이름의 가장 끝에 위치함
		//deny = true / 업로드 하면 안되는 파일을 업로드 했음
		//deny = false / 업로드 해도 되는 파일을 업로드 했음
		
		String realFilename1 = filename1.getName();
		boolean  deny = false;
		
		for(String denyfile : denyList) {
			deny = realFilename1.endsWith(denyfile);
			if(deny) {
				break;
			}
		}
		
		
		if(deny) {
			filename1.delete();
			response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		}else {
			response.setStatus(HttpServletResponse.SC_CREATED);
		}
		
		
		// 업로드 해도 되는 파일일 경우에는 201 상태코드를 response
		
		
		
	}

}
