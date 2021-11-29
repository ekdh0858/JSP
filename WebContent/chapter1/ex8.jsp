<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int value1 = 1;
	int value2 = 2;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World~!</h1>
	<hr>
	<p><%= value1 %></p>
	<p><%= value1 + value2 %></p>
	<p>  <%=request.getParameter("user") %>  </p>
	<hr>
	<p><%= 1 %></p>
	<p><%= 3.14 %></p>
	<p><%= 'a' %></p>
	<p><%= "abcd" %></p>
</body>
</html>