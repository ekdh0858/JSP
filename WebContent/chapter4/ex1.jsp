<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--empty 연산자는 단항 연산자 / 갑싱 null이거나 빈 문자열이라면true,그렇지 앟으면 false가 연산의 값으로 반환 --%>
<p>${empty null}</p>
<p>${empty "" }</p>


<hr>
<% out.print("스크립틀릿의 out.print를 사용해서 출력"); %>
<p> 값 : ${"EL은 표현언어라고 부릅니다." }</p>
<p>연산자 : ${ 10>5 }</p>
 <p>변수명:${param["name"] }</p>
</body>
</html>