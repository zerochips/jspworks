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
	<div id="container">
		<section id="memberlist">
			<h2>회원 목록</h2>
			<table id="tbl_list">
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>성별</th>
						<th>가입일</th>
					</tr>				
				</thead>
				<tbody>
					<c:forEach var="member" items="${memberList}">
						<tr>
							<td><c:out value="${member.memberId}"/></td>
							<td><c:out value="${member.passWd}"/></td>
							<td><c:out value="${member.name}"/></td>
							<td><c:out value="${member.gender}"/></td>
							<%-- <td><c:out value="${member.joinDate}"/></td> --%>
							<td><fmt:formatDate value="${member.joinDate}"
							pattern="yyyy-MM-dd a hh:mm:ss"/> </td>
						</tr>
					</c:forEach>			
				</tbody>		
			</table>
			<!-- MemberDAO 오타 확인 필요 -->
			<%-- <c:forEach var="member" items="${memberList}">	
				<p>아이디 : <c:out value="${member.memberId}"/></p>	
			</c:forEach> --%>
			
		</section>
	</div>
</body>
</html>