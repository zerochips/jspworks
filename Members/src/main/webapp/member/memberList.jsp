<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
	
	<div id="container">
	   <section id="memberlist">
		<h2>회원 목록</h2>
		<div class="logout">
			<p><a href="/logout.do">[관리자 로그아웃]</a></p>
		</div>
		<table id="tbl_list">
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>성별</th>
					<th>가입일</th>
					<th>삭제</th>		<!-- 삭제 버튼 생성 -->		
				</tr>
			</thead>
			<tbody>
				<c:forEach var="member" items="${memberList}">
				<tr>
					<td>
						<a href="/memberView.do?memberId=${member.memberId}">
							<c:out value="${member.memberId}" /></a>
					</td>
					<td><c:out value="${member.passwd}" /> </td>
					<td><c:out value="${member.name}" /> </td>
					<td><c:out value="${member.gender}" /> </td>
					<%-- <td><c:out value="${member.joinDate}" /> </td> --%>
					<td><fmt:formatDate value="${member.joinDate}"
							pattern="yyyy-MM-dd HH:mm:ss" /> </td>
					<td><!-- 500 뜨면 오타 확인 부터 할 것 -->
						<a href="/deleteMember.do?memberId=${member.memberId}"
							onclick="return confirm('정말로 삭제하시겠습니까?')">
							<button type="button">삭제</button>
						</a>
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</section>
	</div>
	
	<jsp:include page="../footer.jsp"/>
	
</body>
</html>