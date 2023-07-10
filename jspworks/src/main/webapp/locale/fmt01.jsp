<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다국어 처리</title>
</head>
<body>
	<p>--- 기본 로케일 ---</p>
		<fmt:setLocale value="ko"/>
		<!-- 확장제 제외한 이름 설정 -->
		<fmt:setBundle basename="bundle.message" />	
	<p>제 목 : <fmt:message key="title" /></p>
	<p>이 름 : <fmt:message key="username" /></p>
	
	<p>--- 영문 로케일 ---</p>
		<fmt:setLocale value="en"/>
		<!-- 확장제 제외한 이름 설정 -->
		<fmt:setBundle basename="bundle.message"/>	
	<p>제 목 : <fmt:message key="title" /></p>
	<p>이 름 : <fmt:message key="username" /></p>
</body>
</html>