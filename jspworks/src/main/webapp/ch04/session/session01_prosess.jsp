<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 여긴 처리페이지니까요
	// 세션 가져오기
	String userId = request.getParameter("userid");
	String userPw = request.getParameter("passwd");
	
	// 자 if문을 넣어서 아이디/비밀번호 확인할게요
	// 오늘은 뭐 할거죠 if 에 여기에 세션을 발급해줄겁니다.
	if(userId.equals("today") && userPw.equals("2023")){	// 다른 아이디/비밀번호를 넣어서 확인해봐도 되겠죠~
		session.setAttribute("userId", userId);	// 세션 발급(아이디)  // [세션 아이디]를 발급 했고~ 하나 더 할게요
		session.setAttribute("userPw", userPw);	// 세션 발급(비밀번호) // 여기는 [비밀번호]의 세션을 발급한겁니다		
		//out.println("로그인을 성공했습니다.");
	}else{
		out.println("<script>");
		out.println("alert('아이디나 비밀번호를 확인해주세요.')");
		out.println("history.go(-1)");	//이전 페이지로 이동
		out.println("</script>");
	}
	

%>
<!-- 세션 이름 가져오기 -->
<p><%=session.getAttribute("userId") %>님이 로그인한 상태입니다.</p>