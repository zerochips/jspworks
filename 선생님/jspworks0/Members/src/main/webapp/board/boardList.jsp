<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div id="container">
	   <section id="boardlist">
		<h2>게시판 목록</h2>
		<table id="tbl_list">
			<thead>
				<tr>
					<th>글번호</th>
					<th>글제목</th>
					<th>작성일</th>
					<th>조회수</th>
					<th>글쓴이</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardList}">
				<tr>
					<td><c:out value="${board.bnum}" /></td>
					<td>
						<a href="/boardView.do?bnum=${board.bnum}">
							<c:out value="${board.title}" />
						</a>
					</td>
					<td><fmt:formatDate value="${board.regDate}"
							pattern="yyyy-MM-dd HH:mm:ss" /> </td>
					<td><c:out value="${board.hit}" /></td>
					<td><c:out value="${board.memberId}" /></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
		<!------------------ [ 여기 선생님꺼 보고 수정 하기 ] ----------------------->
		
		<!-- 페이지 처리 영역 -->
			<div class="pagination">
				<!-- 시작 페이지가 1보다 작으면 시작 페이지로 설정 -->
			    <c:if test="${startPage > 1}">
					<a href="/boardList.do?pageNum=${startPage-1}">이전</a>
				</c:if>
			    <c:if test="${startPage <= 1}">
					<a href="/boardList.do?pageNum=${startPage}">이전</a>
				</c:if>
				<c:forEach var="i" begin="1" end="${endPage}">
					<!-- 현재 페이지가 i와 같으면 활성화(굵게) -->
				    <c:if test="${currentPage == i}">
						<a href="/boardList.do?pageNum=${i}"><span class='page'>${i}</span></a>
					</c:if>
				    <c:if test="${currentPage != i}">
						<a href="/boardList.do?pageNum=${i}">${i}</a>
					</c:if>
				</c:forEach>
				<!-- 마지막 페이지가 시작 페이지보다 작으면 마지막 페이지로 설정 -->
				<c:if test="${endPage > startPage}">
					<a href="/boardList.do?pageNum=${startPage+1}">다음</a>
				</c:if>
				<c:if test="${endPage <= startPage}">
					<a href="/boardList.do?pageNum=${endPage }">다음</a>
				</c:if>
			</div>
			<!-- 페이지 영역 끝 -->
		<!------------------ [ 여기 선생님꺼 보고 수정 하기 ] ----------------------->
		
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>