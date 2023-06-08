<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
<style type="text/css">
	#container{width: 80%; margin: 30px auto; text-align: center;}
	fieldset{width: 500px; margin: 0 auto;}
	label{width: 100px; float: left; text-align: right;}
	table{width: 600px; margin: 0 auto;}
	table, th, td{border: 1px solid #ccc; border-collapse: collapse;}
	table th, td{padding: 10px;}	
</style>
</head>
<!-- getter/setter랑 같음 -->
<jsp:useBean id="member" class="member.Member"/>
<jsp:setProperty property="userid" name="member"/>
<jsp:setProperty property="passwd" name="member"/>
<jsp:setProperty property="uname" name="member"/>

<body>
	<div id="container">
		<h3>회원 정보</h3>
		<hr>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<!-- MVC -> Model(데이터) -->
					<!-- member를 사용 -->
					<td><%=member.getUserid() %></td>
					<td><%=member.getPasswd() %></td>
					<td><%=member.getUname() %></td>
				</tr>
			</tbody>
		</table>
		
	</div>
</body>
</html>
<%-- 
<p>아이디: <%= id %></p>
<p>비밀번호: <%= pw %></p>
<p>이름: <%= name %></p>
 --%>