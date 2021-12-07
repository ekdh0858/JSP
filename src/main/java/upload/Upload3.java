package upload;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;

@WebServlet("/upload3")
public class Upload3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//파일 업로드를 하기 위한 객체 생성
			DiskFileUpload upload = new DiskFileUpload();
			
			//요청 정보를 parseRequest 메서드를 사용해서 items에 저장
			List items = upload.parseRequest(request);
			
			Iterator params = items.iterator();
			
			
			while(params.hasNext()) {
				FileItem item = (FileItem) params.next();
				if(item.isFormField()) {
					String value = item.getString("UTF-8");
					System.out.println("value="+value);
				}else {
					String filename = item.getName();
					filename = filename.substring(filename.lastIndexOf("\\")+1);
					File file = new File("C:\\upload\\"+filename);
					item.write(file);
					System.out.println("filename = "+filename);
				}
			}
		}catch(FileUploadException e) {
			System.out.println("FileuoloadException예외가 발생했음");
		}catch(Exception e) {
			System.out.println("Exception 예외가 발생했음");
		}
		
	}

}
