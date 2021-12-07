<%@page import="bean.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- <c:set> 속성 --%>
<%-- set 태그 -> 변수를 생성하는 태그 --%>

<%-- var : 변수 이름 --%>
<%-- value : 변수에 저장할 값 / 문자열, EL, 표현식을 사용해서 지정할 수 있음 --%>
<%-- scope : 생성한 변수를 저장할 위치 / scope의 기본값은 page --%>
<%-- scope가 page면 현재 페이지에서만 사용할 수 있는 변수 --%>

<%-- Core 태그 중 set을 사용해서 객체의 멤버 변수에 값을 저장할 수 도 있음 --%>
<%-- <c:set value="value" target="target" property="proprertyName" /> --%>

<%-- <c:out> 태그 --%>
<%-- out 태그 -> 값을 출력하는 태그 --%>
<%-- value : 출력할 값/ 문자열, EL, 표현식을 사용해서 지정할 수 있음--%>

<%-- <c:remove> 태그 --%>
<%-- remove 태그 -> 변수를 삭제하는 태그 --%>
<%-- var : 삭제하고자 하는 변수명 --%>
<%-- scope: 삭제하고자 하는 변수의 위치/ scope를 생략하면 모든 영역에 그러한 변수를 삭제함 --%>
<%--<c:catch> 태그 --%>
<%-- catch태그 -> 예외를 처리하는 태그 --%>
<%-- var : 예외가 발생했을깨 예외 정보를 지정할 변수 --%>
<c:set var ="name" value="홍길동"/>
<c:catch var="e">
<p>try시작</p>
<% 
	String str = request.getParameter("msg");
if(str.equals("add")){
	%>
	<p>msg = <%=str %></p>
	<%
}
%>
<p>try끝</p>
</c:catch>
<c:out value="${e }"/>
	<p> <c:out value="홍길동"/></p>
	<p><c:out value="${name }"/></p>
	<hr>
	<c:remove var="name" />
	<p>remove후 <c:out value="${name }"/></p>
	<%
	BookBean book = new BookBean();
	book.setTitle("자바 웹을 다루는 기술");
	book.setAuthor("이병승");
	book.setPublisher("길벗");
	request.setAttribute("book", book);
	%>
	
	<c:set value="JSP2.3 웹 프로그래밍" property="title" target="${book }" />
	<p>title = ${book.title }</p>
</body>
</html>






