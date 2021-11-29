<%@ page import="java.time.LocalDateTime" errorPage="500.jsp" isELIgonred="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- errorpage - 이 페이지에서500번대 문제가 발생하였을 때 그 문제를 어떤 파일이 처리할 지 지정하는 속성 -->
    <!-- isELIgnored - EL를 사용하지 않도록 설정할 수 있는 속성 -->
    <!-- import - 이 페이지에서 사용할 크랠스를 import 하는 속성 -->
<%
	LocalDateTime now = LocalDateTime.now();
	
	String user = request.getParameter("user");
	if(user==null){
		// user 파라미터 값이 없다면 게스트로 처리
		user="Guest";
	}
	// user의 이름을 3자까지만 표현하기 위한 substring
	user = user.substring(0,3);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World~!</h1>
	<h1>Welcome, <%= user %></h1>
</body>
</html>