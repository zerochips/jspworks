<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="resources/css/style.css">

<header>

	<div id="logo">
		<h1><a href="index.jsp">Gangnam</a></h1>
	</div>
	
	<nav>
		<c:choose>
			<c:when test="${empty sessionId}">	<!-- 세션이 비었다면 로그인 -->
				<ul id="topMenu">
					<li><a href="/loginForm.do">로그인</a></li>
					<li><a href="/memberForm.do">회원가입</a></li>
					<li><a href="/boardList.do">게시판</a></li>
					<li><a href="/memberList.do">회원목록</a></li> <!-- 회원 목록은 일반 사용자가 들어가지 못하게 할겁니다 -->
				</ul>
			</c:when>
			<c:otherwise> <!-- otherwise가 else -->
				<ul id="topMenu">		<!-- 세션이 비어있지않다면 로그아웃 -->
					<li><a href="/logout.do">[${sessionId}]로그아웃</a></li> <!-- 여기만 바꿔줍니다. -->
					<li><a href="/memberView.do?memberId=${sessionId}">나의정보</a></li> <!-- sessionId는 어디든 갈 수 있음. member.memberId는 택배보내줘야 가능함 -->
					<li><a href="/boardList.do">게시판</a></li>
					<li><a href="/memberList.do">회원목록</a></li> <!-- 회원 목록은 일반 사용자가 들어가지 못하게 할겁니다 -->
				</ul>
			</c:otherwise>
		</c:choose>
	</nav>



</header>