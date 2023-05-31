<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// 한글 인코딩 방법 - 한글이 깨져서 출력이 되지 않을때 사용함
	// request.setCharacterEncoding("utf-8");

	// 폼에 입력된 자료 받아오기
	String name = request.getParameter("uname");
%>

<p>이름: <%= name %></p>