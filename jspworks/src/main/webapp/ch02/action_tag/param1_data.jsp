<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- request 는 내장 객체 getParmeter(name 속성) 
		 데이터를 받을 때 사용함.-->
	<!-- 파이썬에서는 request.form 으로 받았죠 = jsp에선 getParmeter  -->
	<p>아이디: <%= request.getParameter("id") %></p>	
	<p>비밀번호: <%= request.getParameter("pwd") %></p>
</body>
</html>