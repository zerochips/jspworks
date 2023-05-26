<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- jsp 주석 <%@ page %>는 지시어(디렉티브 태그)로 jsp파일의 
	언어, 문서 유형, 인코딩 등의 정보를 서버에게 알림 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>hello</title>
</head>
<body>
	<h1>처음 만드는 웹 페이지</h1>
	<%-- <h5>현재 날짜와 시간은 <%= LocalDateTime.now() %></h5> --%>
	<%
		LocalDateTime now = LocalDateTime.now();
		
	//날짜와 시간 형식
		DateTimeFormatter datetime = DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss a");
		String current_time = now.format(datetime);
	%>
	<h5>현재 날짜와 시간은 <%= current_time %></h5>
	<h3>배는 부른데 배고프다..dd</h5>
</body>
</html>