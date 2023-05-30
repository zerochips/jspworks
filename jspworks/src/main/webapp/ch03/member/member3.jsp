<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Beans</title>
</head>
<body>
	<!-- 속성: property="id"  -->
	<jsp:useBean id="member" class="beans.MemberBean"></jsp:useBean>
	<!-- name의 값이 객체 이름과 같음, value에 값을 저장, 변경 -->
	<jsp:setProperty property="id" name="member" value="2023201"/>
	<jsp:setProperty property="name" name="member" value="안영이"/>
	
	<!-- setProperty의 value값을 가져옴 -->
	<p>아이디: <jsp:getProperty property="id" name="member"/> </p>
	<p>이름: <jsp:getProperty property="name" name="member"/> </p>
</body>
</html>