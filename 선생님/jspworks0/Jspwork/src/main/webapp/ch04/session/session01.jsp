<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
</head>
<body>
	<form action="session01_process.jsp" method="post">
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