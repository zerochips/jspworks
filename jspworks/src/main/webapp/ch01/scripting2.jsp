<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문과 스크립트릿 태그 사용</title>
</head>
<body>
	<%-- <!-- 선언문 태그 %! 들어가는 순간 자바가 됩니다-->
	<%!
		int num1 = 10, num2 = 20;
		int sum;
	%>
	<!-- 스크립트릿 태그 -->
	<%
		sum = num1 + num2;
	%> --%>
	<%
		// 연산
		int num1 = 10, num2 = -10;
		int sum;
		
		// 출력
		sum = num1 + num2;
		out.println("합계: " + sum);	// out - 내장객체
		out.println("<br>");		// 줄바꿈
		
		// 1부터 10가지 출력
		for(int i =1; i<=10; i++){
			out.println(i);
		}
		
		out.println("<br>");
		
		// 1부터 10까지 짝수만 출력
		for(int i =1; i<=10; i++){
			if(i % 2 == 0){
				out.println(i);
			}
		}
	%>
	
	<!-- 표현문 태그 -->
	<%-- <p>합계: <%= sum	%> </p> --%>
	
	
	
	
</body>
</html>