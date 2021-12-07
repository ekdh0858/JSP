<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="http://localhost/jspProject/upload" method="POST" enctype="multipart/form-data">
		<p>제목 : <input type="text" name="title"></p>
		<p>파일 : <input type="file" name="file"></p>
		
		<p><input type="submit" value="업로드"></p>
	</form>
</body>
</html>