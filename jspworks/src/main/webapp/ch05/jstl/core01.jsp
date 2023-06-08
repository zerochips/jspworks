<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- @ 지시자 태그 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- /jap/ 등 경로 설정 잘못되면 출력안됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 예제</title>
<%
	// 모델 생성
	pageContext.setAttribute("cart", "계란");

%>
</head>
<body>
	<h3>${cart }</h3>
	<%-- <%	
		int num = 10;
		
		if(num % 2 == 0){
			out.println("짝수");
		}else{
			out.println("홀수");
		}	
	%> --%>	
	<c:set var="num" value="11"></c:set>	<!-- 변수선언 -->	
	<c:if test="${num % 2 == 0}">
		<c:out value="${'짝수'}"></c:out>		<!-- ${"짝수"} -->
	</c:if>
	<c:if test="${num % 2 == 1}">
		<c:out value="${'홀수'}"></c:out>		<!-- else가 없음 -->
	</c:if>
	<br>
	<!-- 구구단 4단 -->
	<c:set var="dan" value="4"/>
	<c:forEach var="i" begin="1" end="9">
		<c:out value="${dan} x ${i} = ${dan*i}"/><br> <!-- 태그니까 out 뒤에 설정 -->
	</c:forEach>
	
	<!-- 전체 구구단 -->	
	<c:forEach var="i" begin="2" end="9">	
		<c:forEach var="j" begin="1" end="9">
			<c:out value="${i} x ${j} = ${i * j}"/><br>
		</c:forEach>
		<br>
	</c:forEach>
	
	
	
	
</body>
</html>