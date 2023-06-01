<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// getAttribute 가 String 보다 크기 때문에 String으로 강제 형변환해줌
	// [ 세션 가져오기 ]
	String id = (String)session.getAttribute("userId");
	String pw = (String)session.getAttribute("userPw");	// session01_prosess에서 session.setAttribute 에서 userPw로 설정하였음. 12번째 줄 참고
	
	// 세션 상태 출력
	out.println("설정된 세션의 속성값[1]: " + id + "<br>");	// corona
	out.println("설정된 세션의 속성값[2]: " + pw + "<br>");	// 2019

	// 04에서 삭제하고 확인은 session02에서 확인
%>
<!-- 
세션이 유지되는지 확인을해볼겁니다.  

-->