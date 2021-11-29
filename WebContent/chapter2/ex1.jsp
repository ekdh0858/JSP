<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
	
	String id = (String) session.getAttribute("id");
	boolean isLogin = id != null;
	
	if(!isLogin){
		String msg = (String) request.getAttribute("error");
		if(msg==null) msg = "";
%>
	<%-- 로그인을 하지 않았다면 로그인 UI를 보여주도록 --%>
	<%= msg %>
	<form action="/jspProject/chapter2/loginProc.jsp" method="POST">
	<label>ID : <input type="text" name="id" placeholder="아이디"></label>
	<br>
	<label>PW : <input type="password" name="pw" placeholder="비밀번호"></label>
	<input type="submit" value="로그인">
</form>
<%	
	}else{
		%>
		<%-- 로그인을 했다면 환영하는 UI를 보여주도록 --%>
		<h1><%=id%>님 반갑습니다.</h1>
		<a href="/jspProject/loginProc.jsp">로그아웃</a>
	<%
	}
%>


</body>
</html>