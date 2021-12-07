<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="num" value="95"/>
<c:set var="status" value="불합격"/>
<c:if test="${ num>60}">
	<c:set var="staaus" value="합격"/>
</c:if>    

<c:choose>
	<c:when test="${num>90 }"><c:set var="grade" value="A"></c:set></c:when>
	<c:when test="${num>80 }"><c:set var="grade" value="A"></c:set></c:when>
	<c:when test="${num>70 }"><c:set var="grade" value="A"></c:set></c:when>
	<c:when test="${num>60 }"><c:set var="grade" value="A"></c:set></c:when>
	<c:otherwise><c:set var="grade value="F"></c:set></c:otherwise>
	
</c:choose>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>${num }점은 ${grade }학점이고 ${status }입니다.</p>
</body>
</html>