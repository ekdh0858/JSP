<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>책 제목 : ${book.title }</p>
<p>책 저자 : ${book.author }</p>
<p>출판사 : ${book.publisher }</p>
</body>
</html>

<%-- EL로 ${book} 처럼 표현하면 request, session, applicatiomn 객체 순서로 getAttribute("book") 메서드를 호출함 --%>
<%-- 메서드가 실행되는 첫 순서인 request.getAttribute("book")을 호출함 --%>
<%-- request객체에서 book을 찾지 못했다면 그 다음 session, application순서로 호출 --%>
<%-- 순서대로 호출해서 이름이 book인 어떤 데이터가 return 되엇으면 이름이 book인 데이터의 원래 데이터 타입으로 캐스팅(형 변환) --%>
<%-- ${book} -> (bean.BookBean) request.getAttribute("book"); --%>
<%-- ${book.title} ->( (bean.BookBean) request.getAttribute("book") ).getTitle()--%>