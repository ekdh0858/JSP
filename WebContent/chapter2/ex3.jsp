<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>서버명 : <%=application.getServerInfo() %></p>
<p>서블릿 버전 : <%= application.getMajorVersion() %> . <%= application.getMinorVersion() %></p>
<h1> / (루트) 디렉토리 내 파일 및 폴더 목록</h1>
/<%
//	Set<String> list = application.getResourcePaths("/");
//	if(list!=null){
//		for(String element : list){
//		}
//	}
//%>
</body>
</html>