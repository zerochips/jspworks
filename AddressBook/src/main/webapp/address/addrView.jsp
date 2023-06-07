<%@page import="address.AddrBook"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 상세 보기</title>
<link rel="stylesheet" href="../resources/css/style.css"> <!-- css연결 -->
</head>
<jsp:useBean id="abDAO" class="address.AddrBookDAO" scope="application"/>	<!-- scope="application" 꼭 넣어야함 -->
<%
	// 전달된 username을 받아서 주소 1개 가져오기
	String username = request.getParameter("username");	// AddrBookDAO
	AddrBook aB = abDAO.getAddrBook(username);


%>
<body>
	<div id="container">
		<h2>주소록 상세 보기</h2>
		<hr>
		<table id="tbl_view">
			<tr>
				<td>이름</td>
				<td><input type="text" name="username" readonly="readonly" value="<%= aB.getUsername() %>"></td>
			</tr>			
			<tr>
				<td>전화번호</td>
				<td><input type="tel" name="tel" readonly="readonly" value="<%= aB.getTel() %>"></td>
			</tr>			
			<tr>
				<td>이메일</td>
				<td><input type="email" name="email" readonly="readonly" value="<%= aB.getEmail() %>"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="email" name="email" readonly="readonly"  value="<%= aB.getGender() %>"></td>
			</tr>			
			<tr>
				<td colspan="2"><a href="addrList.jsp">
					<button type="button">목록</button></a>
				</td>
			</tr>			
		</table>
	</div>
</body>
</html>
<!--   -->