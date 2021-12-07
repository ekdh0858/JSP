<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<h3>회원 가입</h3>
<form action="/jspProject/member/controller" method="POST">
	<div>
		<div class="label_field"><label>ID : </label></div>
		<div class="input_field"><input type="text" name="id" placeholder="아이디"></div>
	</div>
	<div>
		<div class="label_field"><label>PW : </label></div>
		<div class="input_field"><input type="password" name="pw" placeholder="비밀번호"></div>
	</div>
	<div>
		<div class="label_field"><label>이름 : </label></div>
		<div class="input_field"><input type="text" name="name" placeholder="이름"></div>
	</div>
	<div>
		<div class="label_field"><label>E-mail : </label></div>
		<div class="input_field"><input type="email" name="mail" placeholder="이메일"></div>
	</div>
	<input type="submit">
</form>
</body>
</html>