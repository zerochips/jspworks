<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 등록</title>
<link rel="stylesheet" href="../resources/css/style.css"> <!-- css연결 -->
</head>
<body>
	<div id="container">
		<h2>주소록 등록</h2>
		<hr>		
		<form action="addrAdd.jsp" method="post"><!-- action="addrAdd.jsp" 이걸 컨트롤 페이지라고하죠  -->
			<table id="tbl_reg">
				<tr>
					<td>이름</td>
					<td><input type="text" name="username" maxlength=20 size=20></td>
				</tr>			
				<tr>
					<td>전화번호</td>
					<td><input type="tel" name="tel" maxlength=20 size=20></td>
				</tr>			
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" maxlength=20 size=20></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<select name="gender">
							<option selected>남</option>
							<option>여</option>
						</select>
					</td>
				</tr>			
				<tr>
					<td colspan="2">
						<input type="submit" value="등록">
						<input type="reset" value="취소">
					</td>
				</tr>			
			</table>		
		</form>	
	</div>
</body>
</html>
<!--   -->