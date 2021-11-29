<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!-- 기능을 담당하는건 Servlet임 / loginProc.jsp처럼 JSP가 기능을 담당하면 안됨! / JSP는 시각적인 부분만 담당!! -->
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String method = request.getMethod();

	if(method.equals("POST")){
		//로그인을 하려고 한다면
		// 자바 코드는 절대! body 안에 있으면 안됨!!
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		boolean isEmpty = (id==null || id.isEmpty());
		isEmpty = isEmpty || (pw==null || pw.isEmpty());
		if(isEmpty){
			request.setAttribute("error", "Id또는 비밀번호를 입력하세요");
			RequestDispatcher dispatcher = request.getRequestDispatcher("ex1.jsp");
			dispatcher.forward(request, response);
			return;
		} else{
			session.setAttribute("id",id);
			out.print("<h1>로그인이 되었습니다.</h1>");
			out.print("<h1>5초 귀 로그인 페이지로 이동합니다.</h1>");
			out.print(
					"<script>"+
					"	setTimeout(function(){"+ 
					"		Location.href=\"http://localhost/jspProject/chapter2/ex1.jsp\";"+
							
					"	},500);"+
					"</script>"
					);
		}
	} else{
		// 로그아웃을 하려고 한다면
		String loginID = (String) session.getAttribute("id");
		boolean isLogin = loginID != null;
		
		if(isLogin){
			session.invalidate();
			out.print("<h1>로그아웃되었습니다.</h1>");
		}else{
			%>
			<h1>먼저 로그인하ㅔ요</h1>
			<% 
		}
		%>
		<a href = "ex1.jsp">로그인 페이지로 이동</a>
		<%
	}
	%>
	

</body>
</html>