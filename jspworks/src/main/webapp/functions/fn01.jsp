<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문자열 분리, 연결</title>
</head>
<body>
	<h2>Java 문자열 분리</h2>
	<p>Hello, Java Server Page</p> <!-- split을 사용해서   -->
	<!-- fn:split(문자열, 구분기호) -->
	<p><c:set var="text"
			value="${fn:split('Hello, Java Server Page!', ' ') }"/></p>
	<p>text[0] = ${text[0]}</p>
	<p>text[3] = ${text[3]}</p>	
	<p>문자열 총 개수: ${fn:length(text)}</p>
	
	<!-- for문 -->
	<p>
		<c:forEach var="i" begin="0" end="${fn:length(text)-1}">	<!-- 배열이니까 하나 빼야죠 -->
			text[${i}] = ${text[i]}<br>
		</c:forEach>
	</p>
	
	<h2>Java 문자열 연결</h2>
	<p>${fn:join(text, '-') }</p>
	<c:set var="fruit" value="${fn:split('apple banana grape', '')}"></c:set>
	<p>${fn:join(fruit, '-') }</p>
	
	
	<h2>Java 문자열 연결</h2>
	<p>${fn:join(text, '-') }</p>
	
	<c:set var="fruit" value="${fn:split('사과 바나나 포도', '')}"></c:set>
	<p>${fn:join(fruit, ':') }</p>	
	
	<h2>문자열 검색(매칭) - true/false</h2>
	<p>${fn:contains("Have a nice day!", "have")}</p>
	<p>${fn:containsIgnoreCase("Have a nice day!", "have")}</p> <!-- 대소문자 허용 -->
	
	
	
</body>
</html>