<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style type="text/css">
	#container{whidth: 90%; margin: 10px auto;}
	h2{background: orange; text-align: center; padding: 15px 0;
	color: #eee; border-radius: 5px;}
	#regForm{width: 50%; margin: 0 auto; text-align: center; background: lightgreen;
	padding: 15px 20px; border-radius: 10px;}
	/*#result{width: 50%; margin: 10px auto 0 auto; text-align: center; background: lightgreen;
	padding: 15px 20px; border-radius: 10px;}*/

</style>
<script src="../../resources/js/signUp.js"></script>
</head>
<body>
	<div id="container">
		<h2>회원 가입</h2>
		<hr>
		<div id="regForm">
			<form action="" method="post" name="form1">	<!-- 자바스크립트 활용을해야하니까 name을 주겠습니다.  -->
				<label>이름</label>
				<input type="text" name="name" size=40>
				<hr>
				<label>이메일</label>
				<input type="email" name="email" size=40>
				<p><button type="button" onclick="signUp()">가입</button></p>
			</form>	
		</div>		
		<div id="result">
			<h3>가입 정보</h3>
			<hr>
			<p>이름: <span id="rname"></span></p>
			<p>이메일: <span id="rmail"></span></p>
			
			<script>
				document.getElementById('result').style.display = "none";
			</script>
			
		</div>
	</div>
</body>
</html>

<!-- 
웹 애플리케이션
Java Server Page - jsp태그, 세션과 쿠기, el(jstl)언어 - 템플릿언어(자바를 웹에 최적화한 언어)

서버측(서버사이드) 언어
JSP - ASP - PHP

프레임워크(웹 애플리케이션 제작할 때)
스프링(servlet(제어), JSP(화면)), 장고(파이썬), 리엑트(자바스크립트)
닷넷프레임워크(ASP-언어는 C#)

-->