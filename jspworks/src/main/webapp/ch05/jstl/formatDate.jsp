<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 표기</title>
</head>
<body>
	<h2>날짜를 다양한 형식으로 표기</h2>
	<jsp:useBean id="now" class="java.util.Date"/>
	<p>현재 날짜 및 시간 : ${now}</p>	
	<!-- 날짜 -->
	<p><fmt:formatDate value="${now}" type="date"/></p>
	<!-- 시,분,초 a를 따로 기입하지 않아도 오전, 오후 출력됨-->
	<p><fmt:formatDate value="${now}" type="time"/></p>
	<!-- type="both"는 pattern을 사용하지 않고도 날짜와 시간을 모두 출력 -->
	<p>type="both" : <fmt:formatDate value="${now}" type="both"/> </p>
	<!-- 날짜 | 시간 전체 출력 a를 기입해야 오전, 오후 출력됨 -->
	<p><fmt:formatDate value="${now}" pattern="yyyy-MM-dd a hh:mm:ss"/> </p>
</body>
</html>