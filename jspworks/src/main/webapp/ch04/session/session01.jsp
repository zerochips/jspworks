<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<!-- action ="/session01_prosess.jsp"  / 를 넣었더니 404오류 출력  -->
	<form action="session01_prosess.jsp" method="post">
		<p>
			<label for="userid">아이디 </label>
			<input type="text" id="userid" name="userid">
		</p>
		<p>
			<label for="passwd">비밀번호 </label>
			<input type="password" id="passwd" name="passwd">
		</p>
		<p><input type="submit" value="로그인"></p>
	</form>
</body>
</html>
<!-- 팀구성 : 6/15~16일(목~금) / 1차발표: 7/3(월)  -->
<!-- 
아이디와 비밀번호를 설정하는건 세션을 발급하고 얻으려고, 쓰기, 수정, 삭제 등
-->