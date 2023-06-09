<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 처리</title>
</head>
<body>
	<!-- ch05 > jstl > score02에서 서버 실행 -->
	<!-- value값을 받아서 var에 변수에 값을 할당해주는 겁니다. -->
	<c:set var="score" value="${param.score}"></c:set>
	<!-- 값은 c:out value="" 에 받아오는 겁니다. -->
	<h3>시험 점수: <c:out value="${score}"/></h3>
	
	<!-- 다중 조건문 -->
	<c:choose>		
		<c:when test="${score >= 90 and score <= 100}">
			<h3>A학점 입니다.</h3>		
		</c:when>
		<c:when test="${score >= 80 and score < 90}">
			<h3>B학점 입니다.</h3>		
		</c:when>
		<c:when test="${score >= 70 and score < 80}">
			<h3>C학점 입니다.</h3>		
		</c:when>
		<c:when test="${score >= 60 and score < 70}">
			<h3>D학점 입니다.</h3>		
		</c:when>
		<c:otherwise>
			<h3>F학점 입니다.</h3>
		</c:otherwise>
	</c:choose>
	<!-- 점수로  -->
</body>
</html>
<!--  -->