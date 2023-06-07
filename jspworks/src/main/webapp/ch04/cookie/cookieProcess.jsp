<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 아이디와 비밀번호를 받아서 쿠키를 생성
	String id = request.getParameter("userid");
	String pw = request.getParameter("passwd");
	
	if(id.equals("admin") && pw.equals("0000")){
		// Cookie(쿠키이름, 쿠키값)의 객체 생성
		Cookie cookieId = new Cookie("userId", id);
		Cookie cookiePw = new Cookie("passpw", pw);
		
		// 쿠키 생성 후 클라이언트 컴퓨터에 보냄
		response.addCookie(cookieId);
		response.addCookie(cookiePw);
		
		out.println("쿠키 생성에 성공했습니다.");		
	}else{
		out.println("쿠키 생성에 실패했습니다.");
	}

%>