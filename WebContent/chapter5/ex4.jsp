<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	BookBean book1 = new BookBean();
	book1.setTitle("자바 웹을 다루는 기술");
	book1.setAuthor("이");
	book1.setPublisher("길벗");
	
	BookBean book2 = new BookBean();
	book2.setTitle("JSP");
	book2.setAuthor("정");
	book2.setPublisher("앤써");
	
	List<BookBean> bookList = new ArrayList<>();
	bookList.add(book1);
	bookList.add(book2);
	
	request.setAttribute("bookList",bookList);
%>

