<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정수형 계산기</title>
<link rel="stylesheet" href="../resources/css/style.css">
</head>
<body>
	<div id="container">
		<h2>계산기</h2>
		<hr>
		<!-- *** 안되면 서버에 모듈에 /jsp~~ 에서 /로 수정 변경할것! *** -->
		
		<form action="/Calculator/calc2" method="get">
			<input type="text" name="num1">
			<select name="op">
				<option>+</option>
				<option>-</option>
				<option>x</option>
				<option>/</option>
			</select>
			<input type="text" name="num2">
			<button type="submit">계산</button>
			<button type="reset">다시입력</button>
		</form>
	</div>
</body>
</html>

<!--  -->