<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	//한글 인코딩
	request.setCharacterEncoding("utf-8");
	
%>
<p>아이디: <%= request.getParameter("id") %></p>
<p>비밀번호: <%= request.getParameter("passwd") %></p>
<p>이름: <%= request.getParameter("uname") %></p>
<p>연락처: <%= request.getParameter("phone1") %>
		- <%= request.getParameter("phone2") %>
		- <%= request.getParameter("phone3") %>