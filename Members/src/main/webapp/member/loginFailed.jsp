<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 로그인 실패했으면 에러를 넘기는 페이지로 이동시켜줍니다.
	response.sendRedirect("/memberList.do?error=1");


%>