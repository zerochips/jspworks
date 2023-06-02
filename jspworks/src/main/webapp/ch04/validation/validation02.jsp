<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
<script type="text/javascript">
	function checkForm(){
		let form = document.loginForm;
		let userid = form.userid;
		let passwd = form.passwd;
		
		// 아이디나 비밀번호가 입력되지 않았을때 유효성 검사 
		if(userid.value == ""){
			alert("아이디를 입력해 주세요.");
			userid.focus();	// 
			return false;	// return false로 해주면 안넘어가죠
		}else if(passwd.value.length < 5){	// 5자 이상
			alert("비밀번호를 5자 이상 입력해 주세요.");
			passwd.focus();	// 
			return false;	// return false로 해주면 안넘어가죠
		}else{
			form.submit();	// 폼 전송
		}
	}
</script>
</head>
<body>
	<form action="loginProcess2.jsp" method="post" name="loginForm">
		<p>
			<label for="userid">아이디 </label>
			<input type="text" id="userid" name="userid">
		</p>
		<p>
			<label for="passwd">비밀번호 </label>
			<input type="password" id="passwd" name="passwd">
		</p>
		<p><input type="button" value="로그인" onclick="checkForm()"></p>
	</form>
</body>
</html>