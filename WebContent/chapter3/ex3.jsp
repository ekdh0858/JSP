<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
    	useBean 액션 태그의 속성
    	1. id : 변수명
    	2. class : 인스턴스를 생성하려면 클래스 명(패키지 명까지 붙여야함)
    	3. type : 객체의 데이터 타입(다형성을 적용할 때 사용)
    		예) type="부모 클래스명" class="자식 클래스명"
    	4. scope : 이 객체의 활동 범위
    	 활동 범위 : page, request,session,application이 있음
    	 scope 속성의 기본값은 page
    	 page -> 하나의 JSP페이지 안에서만 활동
    	 request -> 한 요청 안에서 활동 / forward, include 된 페이지에서도 해당 자바변수에 ㄷ접근할 수 잇음
    	 session -> 클라이언트 단위로 활동
    	 application -> 애플리케이션 단위로 활동
     --%>
<jsp:useBean id="bean" class="bean.Bean"/>

<%--
	setProperty 액션 태그의 속성
	1.name : 멤버 변수에 값을 저장할 객체 명/ useBean에서 사용한 name 중 하나를 입력
	2.property : 멤버 변수명
	3.value : 저장할 값
	4.param : 파라미터 이름 / value속성은 해당 멤버 변수에 저장할 값을 직접 써야 하지만 
			  param속성에 파라미터 이름을 쓰면 JSP가 해당 파라미터 값을 꺼내와 저장
 --%>
<jsp:setProperty property="name" name="bean" value="myname"/>

   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
	getProperty 액션 태그 속성
	1. property : setProperty의 property속성과 동일
	2. name : setproperty의 name속성과 동일
 --%>
	<h1>Welcome, <jsp:getProperty property="name" name="bean"/>~!</h1>
</body>
</html>