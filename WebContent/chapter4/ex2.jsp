<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 표현 언어는 지정한 값이 없으면 빈문자열("")이 됨 --%>
	<%-- id, pw 파라미터를 전달해주지 않으며 ㄴ request.getParameter 메서드는 null 을 반환 --%>
	<%-- EL은 빈문자열임 --%>
	<p> ${param.id } / ${param.pw }</p>
	<p> ${param["id"] } / ${param["pw"] }</p>
</body>
</html>