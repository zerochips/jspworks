<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>세선을 삭제하기 전</h3>
<%
	
	//getAttribute 가 String 보다 크기 때문에 String으로 강제 형변환해줌
	// [ 세션 삭제하기 ]
	String id = (String)session.getAttribute("userId");
	String pw = (String)session.getAttribute("userPw");
	
	out.println("설정된 세션의 속성값[1]: " + id + "<br>");	// today
	out.println("설정된 세션의 속성값[2]: " + pw + "<br>");	// 2023
	
	session.removeAttribute("userId");	// 세션 이름이"userId"를 삭제
%>

<h3>세선을 삭제한 후</h3>
<%	
	//getAttribute 가 String 보다 크기 때문에 String으로 강제 형변환해줌
	// [ 세션 삭제 후 확인 ]
	id = (String)session.getAttribute("userId");
	pw = (String)session.getAttribute("userPw");
	
	out.println("설정된 세션의 속성값[1]: " + id + "<br>");	// corona
	out.println("설정된 세션의 속성값[2]: " + pw + "<br>");	// 2019

%>