<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    	String url = request.getParameter("url");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 태그 안에 별도의 컨텐츠가 없을 때는 시작하는 태그와 닫는 태그를 하나로 합칠 수 있음 --%>
	<jsp:forward page="<%= url %>" />
	
	<h1>~~~~문구~~~~</h1>
	
</body>
</html>