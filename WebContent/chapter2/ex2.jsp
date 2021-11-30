<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	out.print(7);

	out.print("<h1>out으로 출력한 h1태그</h1>");
	
	out.print("<script> console.log(\"out은 무엇이든 출력할 수 있습니다.\");</script>");
	
	// out 객체를 사용하여 버퍼를 핸들링 할 수 있음
	// out 객체로 출력을 하면 출력 명령을 버퍼에 담아두고 일괄적으로 실행시킴
	// 버퍼가 가득차거나 버퍼를 비우면 버퍼에 들어있는 명령들이 동작
	out.clearBuffer();
	
	int bufferSize = out.getBufferSize();
	out.print("버퍼의 크기 = "+bufferSize+" /");
	
	int remain = out.getRemaining();
	out.print("남은 버퍼의 크기 = "+remain +" /");
	
	out.flush();
	remain = out.getRemaining();
	out.print("남은 버퍼의 크기 = "+remain +" /");
	
%>
</body>
</html>