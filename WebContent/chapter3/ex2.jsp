<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	//String url = request.getParameter("url");
    	String user = request.getParameter("user");
    	if(user == null){
    		user = "user";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>-- inclue 전 --</h1>

<%-- include 액션 태그와 param 약션 태그를 함께 사용할 수 있음 --%>
<%-- param 앤션 태그 : include 하는 페이지로 값을 전달 --%>
<%-- value : 전달할 값 / name : 값을 담을 파라미터 이름 --%>
<jsp:include page="/chapter2/include.jsp">
	<jsp:param value="<%= user %>" name="user"/>
</jsp:include>
<h1>-- inclue 후 --</h1>
</body>
</html>