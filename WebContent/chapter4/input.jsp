<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Input</title>
</head>
<body>
	<form action="/jspProject/chapter4/process.jsp" method="POST">
		<p> <label>책 제목 : <input type="text" name="title"></label></p>
		<p> <label>책 저자 : <input type="text" name="author"></label></p>
		<p> <label>출판사 : <input type="text" name="publisher"></label></p>
		
		<p> <input type="submit" value="등록"></p>
	</form>
</body>
</html>