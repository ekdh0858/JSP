<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="bean" class="bean.Bean"/>
    
<%-- setProperty에서 property와  name 속성만 사용하면 파라미터에서 멤버 변수의 이름과 동일한 파라미터를 찾아 그 값을 저장 --%>    
<%--<jsp:setProperty property="name" name="bean" />--%>
<%--<jsp:setProperty property="age" name="bean" />--%>

<%-- 프로그래밍에서 * 는 전체를 의미 --%>
<%-- property가 * 이므로 모든 멤버 변수에 적절한 값을 저장하겠다 라는 의미 --%>
<%-- value, param 속성이 없으므로 파라미터에서 멤버 변수와 동일한 이름의 파라미터 값을 꺼내서 자장 --%>
<jsp:setProperty property="*" name ="bean"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Welcome, <jsp:getProperty property="name" name="bean"/>~!</h1>
<h1>age = <jsp:getProperty property="age" name="bean"/></h1>

</body>
</html>