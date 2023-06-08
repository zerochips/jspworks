<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 예제</title>
</head>
<body>
	<!-- 여기선 출력 안됨!!!!! 서블릿으로 가세요 -->
	<h2>${season }</h2>
	
<%-- 	<h3>${seasons[0] }</h3>
	<h3>${seasons[1] }</h3>
	<h3>${seasons[2] }</h3>
	<h3>${seasons[3] }</h3> --%>
	
	<!-- 반복문 출력 - 서블릿에서 실행해야 출력됨 -->
	<c:forEach var="season" items="${seasons}">
		<h3><c:out value="${season}"/></h3>	
	</c:forEach>
	
	<!-- 배열과 같은 형식으로 출력 - items가 받아오는 var는 상관없음-->
	<c:forEach var="number" items="${numberList}">
		<h3><c:out value="${number}"/></h3>
	</c:forEach>
	
	
	
	
</body>
</html>
<%-- 
servlet에서 데이터를 넘겨줄겁니다.
Java Resources -> src/main/java -> mvc 패키지

모델1방식 : 무조건 jsp로만 되는겁니다. -MVC
모델2방식 : jsp(MV) + servlet(Controller)

데이터를 servlet에서 넘기는 방법을 알아야겠죠

forEach

1. 어노테이션 사용 @WebServlet("/mvc/mvc01")
2. web.xml 설정
 --%>