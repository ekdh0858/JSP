<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>accepted-language -> ${header["accept-language"] }</p>
	<p>connection -> ${header["connection"] }</p>
	
	<hr>
	
	<p> ${header }</p>
</body>
</html>