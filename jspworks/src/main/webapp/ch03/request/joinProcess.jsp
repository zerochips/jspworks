<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request. 기억하세요~~~~ 한글 인코딩
	request.setCharacterEncoding("utf-8");	

	String id = request.getParameter("userid");
	String pw = request.getParameter("passwd");
	String name = request.getParameter("uname");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	
	String[] hobby = request.getParameterValues("hobby");
	String comment = request.getParameter("comment");	
	
	LocalDateTime now = LocalDateTime.now();
	
	DateTimeFormatter datetime = DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss a");
	String current_time = now.format(datetime);
	
	// 5초 후 새로고침
	response.setIntHeader("Refresh", 5);

%>

<p>아이디: <%= id %></p>
<p>비밀번호: <%= pw %></p>
<p>이름: <%= name %></p>
<p>연락처: <%= phone1 %> - <%=phone2%> - <%= phone3 %></p>
<p>성별: <%= gender %></p>
<p>취미:
<%
	for(int i=0; i<hobby.length; i++){
		out.println(hobby[i]);
	}
%>
</p>
<p>현재 날짜와 시간은 <%= current_time %></p>
