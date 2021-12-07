package mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberService {
	public int joinMember(HttpServletRequest request,HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");
		
		// ...
		// 클라이언트가 전달한 
		// id,pw,name,mail
		//을 검증하는 코드
		// ...
		memberDTO member = new memberDTO();
		member.setId(id);
		member.setPw(pw);
		member.setName(name);
		member.setMail(mail);
		
		memberDAO dao = new memberDAO();
		boolean success = dao.insertMember(member);
		
		int statusCode = HttpServletResponse.SC_BAD_REQUEST;
		if(success) statusCode = HttpServletResponse.SC_CREATED;
		
		return statusCode;
	}
	
	public int getMemberById(HttpServletRequest request,HttpServletResponse response) {
		
		return 0;
	}
	
	public int updateMember(HttpServletRequest request,HttpServletResponse response) {
		
		return 0;
	}
	
	public int deleteMember(HttpServletRequest request,HttpServletResponse response) {
		
		return 0;
	}
}
