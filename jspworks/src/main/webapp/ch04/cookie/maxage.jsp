<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키를 가져와서 삭제하기
	Cookie[] cookies = request.getCookies();
	
	for(int i =0; i < cookies.length; i++){
		cookies[i].setMaxAge(0);	// 쿠키 삭제 - 여기서 끝나면 안되고
		response.addCookie(cookies[i]);	// 서버쪽에서 유효기간이 만료된 쿠키 응답 - 받아줘야죠
	}

	// 페이지 이동
	response.sendRedirect("cookie02.jsp");

%>