<%@ page isErrorPage="true" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- isErrorPage - 오류를 처리하기 위한 파일임을 명시하는 속성(true | false) -->
    <%
    	String errorType = exception.getClass().getName();
    	String errorMessage = exception.getMessage();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문제 발생</title>
</head>
<body style="text-align:center">

	<h1 style="color:red">※ 문제가 발생하였습니다 ※</h1>
	
	<p>페이지 동작 중 알 수 없는 문제가 발생하였습니다.</p>
	<p>지속적으로 동일한 문제 발생 시 사이트관리자에게 문의주세요.</p>
	<p>관리자 이메일 : mega_it@academy.ac.kr</p>
	
	<p>
		에러 유형 : <%= errorType %>
		에러 메세지 : <%= errorMessage %>
	</p>
</body>
</html>