<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 객체 사용</title>
</head>
<body>
	<!-- 여기서는 간단하게 테스트만 하나보다~ -->
	<h2>세션 사용</h2>
	
	
	<p><%= session %></p>
	<p><%= session.getId() %></p>
	
</body>
</html>
<!-- 쿠키 : 원래 session 서버가 돼서 보내줌 session.getId()를 사용해야함 -->
<!--   -->