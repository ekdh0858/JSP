<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- EL로 변수에 접근을 하면 request,session,application순서로 찾음 --%>
	<%-- EL로 변수에 접근했을 때 특정 scope에 있는 변수에 접근을 하고 싶다 --%>
	<%-- 객체명Scope 가 붙은 내장 객체를 사용하면 영역에 있는 변수에 접근할 수 있음 --%>
	<p>sessionScope -> login id = ${sessionScope["id"] }</p>
	<p>requestScope -> login id = ${requestScope["id"] }</p>
	<p>applicationScope -> login id = ${applicationScope["id"] }</p>
	
	
</body>
</html>