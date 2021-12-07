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
		
		
		// ����ڰ� ���Ǹ� ���� ��ŷ ���α׷��� ���ε带 �� ���� ����
		// �׷��� ����ڴ� �𸣰� ��ŷ ���α׷��� ��ġ�ϴ� ��쵵 ����
		// �� ��ŷ�� ���õ� ���� ������ �غ� �ؾ�������
		// ������ ���� ���ο� ���� ������ �ʿ��� �о��̱� ������
		// ���� ������ ������ ���� ������ �غ�
		
		// �鵵��(Back-Door) : ��Ŀ�� ����� �𸣰� ��ǻ�ͷ� �����ؼ� ��� �� �� ����
		// �Ϲ������� �鵵��� ���𰡸� ��ġ�ϸ鼭 ��ġ�Ǵ� �����̱� ������
		// ��ġ ���α׷��� ���ε� ���� ���ϰ� �ϴ� ����� ����
	
		// ������ Ȯ���ڸ� üũ�ؼ� �츮�� ������ Ȯ������ ������ ���ε� ���� ���ϵ��� ������ ��
		
		//1. ���ε� �ϸ� �ȵǴ� ������ ����� �ۼ�
		List<String> denyList = new ArrayList<>();
		denyList.add("zip");
		denyList.add("txt");
		denyList.add("exe");
		denyList.add("xlsx");
		denyList.add("xlx");
		
		//2. �켱�� ���ε带 �ؾ� ����ڰ� ���������� � �������� ���� ������ �� �� ����
		// 	  ���� ���ε� ó��
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024,"UTF-8",new DefaultFileRenamePolicy());
		
		//3. ���� ������ ����
		File filename1 = multi.getFile("filename1");
		
		//4. ���� �������� �� ������ Ȯ���ڰ� ���ε� �ϸ� �ȵǴ� �������� üũ
		
		//5. üũ ���¿� ���� ������ ������ �ϵ��� ����
		// ���ε� �ϸ� �ȵǴ� ������ ��쿡�� 400 �����ڵ带 response
		
		//������ Ȯ���ڴ� ���� �̸��� ���� ���� ��ġ��
		//deny = true / ���ε� �ϸ� �ȵǴ� ������ ���ε� ����
		//deny = false / ���ε� �ص� �Ǵ� ������ ���ε� ����
		
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
		
		
		// ���ε� �ص� �Ǵ� ������ ��쿡�� 201 �����ڵ带 response
		
		
		
	}

}
