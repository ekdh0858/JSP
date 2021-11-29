<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//스크립트릿 태그는 실행하고자하는 자바 코드를 넣음
	//스크립트릿 태그에 넣은 코드는 _jspService 메서드 안으로 들어가기 떄문에
	// 변수를 선언하면 _jspService 메서드 안에있는 지역 변수가 됨
	String user = "Guest";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스크립트릿 태그</h1>
	<p>user = <%=user %></p>
	<p>user = <% out.print(user); %></p>
	
	<%--<p>sum = <% 10+20; %></p> --%>
	
	<% int result = 10+20; %>
	<p>sum = <%out.print(result); %></p>
	<h1>스크릿 태그로 구구단 출력</h1>
	<%
		for(int i=1;i<=9;i++){
			out.print("<p>2 X "+i+" = "+(2*i)+"</p>");
		}
	%>
	
	
	
</body>
</html>