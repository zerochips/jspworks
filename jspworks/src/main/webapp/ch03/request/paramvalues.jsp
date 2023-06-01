<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체크 박스 선택</title>
</head>
<body>
	<form action="process2.jsp" method="get">	
		<p><!-- value 값 출력 - 한글로 출력하고 싶으면 한글 기입 - Orange -> 오렌지 로 변경하면 됨  -->
			<label>오렌지<input type="checkbox" name="fruit" value="Orange" checked></label>
			<label>사과<input type="checkbox" name="fruit" value="Apple"></label>
			<label>바나나<input type="checkbox" name="fruit" value="Banana"></label>
			<input type="submit" value="전송">
		</p>
	</form>
</body>
</html>