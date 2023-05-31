<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼-member</title>
</head>
<body>
	<!-- 경로의 깊이가 달라졌음 -->
	<form action="/member/login" method="post">
		<p>
			<label for="userid">아이디 </label>
			<input type="text" id="userid" name="userid">
		</p>
		<p>
			<label for="passwd">비밀번호 </label>
			<input type="password" id="passwd" name="passwd">
		</p>
		<input type="hidden" name="phone" value="010-3355-7979">
		<p><input type="submit" value="로그인"></p>
	</form>
</body>
</html>

<!--  
hidden 은 지금 안보이죠 LoginServlet2에 설정해볼게요
String phone 과 data에 <p>태그로 아이디와 동일하게 삽입해주세요
로그인 후 아이디와 비밀번호 아래에 전화번호가 출력됩니다.
 -->