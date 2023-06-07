<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="abDAO" class="address.AddrBookDAO" scope="application" />
<%
	String username = request.getParameter("username");
	abDAO.deleteAddrBook(username);		// 주소 삭제 // 얘는 반환되는거 없죠, void죠
	
	// 페이지 이동
	response.sendRedirect("addrList.jsp");

%>