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

<c:forTokens items="소셜/역사/인문/정치/미술/종교/여행/과학/만화/건강" delims="/" var="token">
<h2>${token }</h2>
</c:forTokens>

</body>
</html>