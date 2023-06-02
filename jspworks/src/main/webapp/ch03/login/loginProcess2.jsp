<%@page import="beans.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//ch03 - login - loginProcess2
	
	// 한글 인코딩 - 삽입하지 않으면 한글 깨짐
	request.setCharacterEncoding("utf-8");

	// 폼에 입력된 데이터 가져오기
	String uid = request.getParameter("userid");
	String pwd = request.getParameter("passwd");
	
	// login 객체 생성
	LoginBean login = new LoginBean();	
	login.setUserid(uid);	// 아이디 설정(입력)
	login.setPasswd(pwd);	// 비밀번호 설정

	// checkUser() 호출
	boolean result = login.checkUser();
	
	if(result){
		out.println(login.getUserid() + "님 환영합니다");
	}else{
		out.println("아이디나 비밀번호를 확인해 주세요.");
	}

%>
<p>아이디: <%= login.getUserid() %></p>
<p>비밀번호: <%= login.getPasswd() %></p>