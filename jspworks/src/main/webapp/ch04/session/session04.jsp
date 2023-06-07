<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	// 세션 가져오기
	String id = (String)session.getAttribute("userId");
	String pw = (String)session.getAttribute("userPw");
	
	out.println("설정된 세션의 속성값[1]: " + id + "<br>");
	out.println("설정된 세션의 속성값[2]: " + pw + "<br>");	
	
	//세션 모두 삭제 - 로그아웃할 때
	session.invalidate();
%>
<!-- 04에서 삭제하고 확인은 session02에서 확인 
브라우저 확인은 session01에서 run 실행 후 확인할것

-->