<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 이 페이지에 있는 코드는 원래 Servlet으로 만들어야함 --%>
 <%-- MVC 디자인 패턴을 배울떄 또 듣겠지만 JSP는 뷰(보여지는 여역)만 담당 --%>
 <%-- 이런 기능은 사용자 눈에 보이는게 아니기 때문에 백엔드라고 하고 Servlet이 해야함 --%>
 <%-- EL을 익히기 위해서 또 요청 단위로 상태 정보를 활용하는 원리를 익히기 위샤허 사용했음 --%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBaen id ="book" class="bean.BookBean"/>
<jsp:setProperty property="*" name ="book"/>

<%
	request.setAttribute("book", book);
%>

<jsp:forward page="/chapter4/output.jsp"/>