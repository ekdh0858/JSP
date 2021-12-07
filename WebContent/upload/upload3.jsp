<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="color: red;">확장자가 zip이거나 txt인 파일은 업로드 할 수 없습니다.</h1>

	<form action="/jspProject/upload1" method="POST" enctype="multipart/form-data">
		<p> 이름 : <input type="text" name="name1"> </p>
		<p> 제목 : <input type="text" name="subject1"> </p>
		<p> 파일 : <input type="file" name="filename1"> </p>
		
		<hr>
		
		<p> 이름 : <input type="text" name="name2"> </p>
		<p> 제목 : <input type="text" name="subject2"> </p>
		<p> 파일 : <input type="file" name="filename2"> </p>
		
		<hr>
		
		<p> 이름 : <input type="text" name="name3"> </p>
		<p> 제목 : <input type="text" name="subject3"> </p>
		<p> 파일 : <input type="file" name="filename3"> </p>		
		
		<p><input type="submit" value="업로드"></p>
	
	</form>
</body>
</html>