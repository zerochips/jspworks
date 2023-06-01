<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTTP headers 정보</title>
</head>
<body>
<%
	// 헤더 정보를 가져올 때는 - host는 내가 쓰는 컴퓨터죠
	// 내 컴퓨터(로컬 컴퓨터): 포트번호
	String hostValue = request.getHeader("host");

	// 설정된 언어
	String alValue = request.getHeader("accept-language");

	//out.println("호스트명: " + hostValue + "<br>");
	//out.println("설정된 언어: " + alValue + "<br>");
	
	// 모든 Header 정보 가져오기 - 자바에 있는 반복자 클래스 사용해서 가져와야함
	// en 객체를 - 반복자 클래스의 객체 언기(생성) - 반복자(강사님 개인 설명) - 순서가 없을 때 사용
	Enumeration<String> en = request.getHeaderNames();
	
	while(en.hasMoreElements()){				// 더 많은 요소가 존재한다면
		String headerName = en.nextElement();	// 다음 요소를 가져와서 headerName에 저장하고
		String headerValue = request.getHeader(headerName);	//key값을 통해서 키를 매개로 값을 가져옴
		out.println(headerName + ":" + headerValue + "<br>");
	}
	
	//쿼리스트링 - http://localhost:8080/ch03/request/process.jsp?uname=%EA%B9%80 - ?를 뜻하는건가라는 말을 하면서 쿼리스트링이라고 하셨음.
	

%>
</body>
</html>