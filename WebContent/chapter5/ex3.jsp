<%@page import="bean.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="count" value="${param.count }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	span{display: inline-block; width:20px}
</style>
</head>
<body>
<c:choose>
<c:when test="${empty count}">
	<script>
		let count = prompt("출력할 별의 크기(2~10)");
		location.href="/jspProject/chapter5/ex3.jsp?count="+count;
	</script>
</c:when>

<c:otherwise>
	<div id="wrapper">
		<c:forEach begin="1" end="${count }" var="row">
			<p>
			<c:forEach begin="1" end="${count-row }">
				<span class="empty"></span>
			</c:forEach>
			<c:forEach begin="1" end="${(2*(row-1)) +1 }">
				<span class="star">⭐</span>
			</c:forEach>
			</p>
		</c:forEach>
	</div>
</c:otherwise>
</c:choose>

<%-- <c:forEach var="i" begin="1" end="9" step="1">
	<p>2 X ${i } = ${2*i }</p>
</c:forEach>
--%>
</body>
</html>






