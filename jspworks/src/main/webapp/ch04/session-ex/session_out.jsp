<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//세션 해제(삭제)
	session.invalidate();
	
	// 다시 맨 앞 페이지로 이동 - 메인 페이지 이동
	response.sendRedirect("session.jsp"); 	// 페이지 이동 - sendRedirect


%>