<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<title>주소록 등록</title>

<link rel="stylesheet" href="../resources/css/style.css"> <!-- css연결 -->

<jsp:useBean id="aB" class="address.AddrBook" />
<jsp:setProperty property="username" name="aB" />
<jsp:setProperty property="tel" name="aB" />
<jsp:setProperty property="email" name="aB" />
<jsp:setProperty property="gender" name="aB" />
<jsp:useBean id="abDAO" class="address.AddrBookDAO" scope="application" />

<%
	//ArrayList에 aB(주소)에 객체 삽입(추가)
	abDAO.add(aB);
%>
<div id="container">
	<h2>등록 내용</h2>
	<hr>
	<p>이름: <%=aB.getUsername() %></p>
	<p>전화번호: <%=aB.getTel() %></p>
	<p>이메일: <%=aB.getEmail() %></p>
	<p>성별: <%=aB.getGender() %></p>
	<hr>
	<a href="addrList.jsp">목록 보기</a>
</div>

<!--
DAO scope="" <- 저장 개념을 가지고 있음
request - 어떤 페이지에서 다음 페이지 저장
session - 세션이 발급된 영역 - 저장
application - 전체 프로그램 영역

scope="application" 페이지를 오가며 저장할 수 있는
저장을 유지하는!!
-->