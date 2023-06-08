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
	<!-- MVC -> View -->
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
					<td>${member.userid }</td>
					<td>${member.passwd }</td>
					<td>${member.uname }</td>
				</tr>
			</tbody>
		</table>
		
	</div>
</body>
</html>
<%-- 

모델1방식 : 무조건 jsp로만 되는겁니다. -MVC
모델2방식 : jsp(MV) + servlet(Controller)

데이터를 servlet에서 넘기는 방법을 알아야겠죠
 --%>