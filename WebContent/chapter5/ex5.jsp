<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="count" value="1"/>
	<c:forEach items="${bookList }" var="book">
	<h2>${count }번째 도서 정보</h2>
	<p>title=${book.title }</p>
	<p>author=${book.author }</p>
	<p>publisher=${book.publisher }</p>
	
	<c:set var="count" value="${count+1 }"/>
	</c:forEach>
	
	<hr>
	
	<c:set var="count" value="1"/>
	<c:forEach items="${bookList }" varStatus="status">
	<h2>${count }번째 도서 정보</h2>
	<p>title=${book.title }</p>
	<p>author=${book.author }</p>
	<p>publisher=${book.publisher }</p>
	
	</c:forEach>
</body>
</html>