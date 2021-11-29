<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<%!
	//선언문 태그는 선언문 이라는 이름처럼
	//변수를 선언하거나
	//메서드를 선언할 때 사용
	String user;

	public int sum(int num1,int num2){
		int result = num1+num2;
		return result;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>선언문 태그</h1>
	<p>선언문 태그는 변수를 선언라거나 메서드를 선언할 수 있음</p>
	<p>일반적으로는 선언문 태그로 변수를 선언하거나 메서드를 선언하는 일은 없음</p>
	<p>user = <%=user %></p>
	<p>sum = <%=sum(10,20) %></p>
</body>
</html>