<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정규 표현식 - 유효성 검사</title>
<script type="text/javascript">
	function checkMember(){
		//alert("text");
		let form = document.member;
		let id = form.id.value;
		let pw = form.passwd.value;
		let name = form.uname.value;
		let phone = form.phone1.value + "-" +
					form.phone2.value + "-" +
					form.phone3.value + "-";
		
		// 정규 표현식
		let regExpId = /^[a-zA-Z가-힣]/; 			// 아이디 - 문자로 시작
		let regExpPw = /^[0-9]+$/;				// 비밀번호 - 숫자만
		//let regExpName = /^[a-zA-Z가-힣]+$/;	// 이름 - 한글만
		let regExpName = /^[ㄱ-ㅎ가-힣]+$/;			// 이름 - 한글만
		let regExpPhone = /\d{3}-\d{3,4}-\d{4}/;	//전화번호 -
		
		if(id == "" || !regExpId.test(id)){		// 요거랑 id랑 비교하죠~
			alert("아이디는 문자로 시작해주세요");
			form.id.select();	
			return false;
		}
		if(pw == "" || !regExpPw.test(pw)){
			alert("비밀번호는 숫자로 입력해주세요");
			form.pw.select();	
			return false;
		}
		if(name == "" || !regExpName.test(name)){
			alert("이름은 한글만 가능합니다");
			form.name.select();	
			return false;
		}
		if(phone == "" || !regExpPhone.test(phone)){
			alert("연락처를 확인해주세요");
			form.phone2.select();	
			return false;
		}
		
		
		form.submit();	/*  */		
	}
</script>
</head>
<body>
	<form action="validation_process.jsp" method="post" name="member">
		<p>
			<label for="id">아이디
			<input type="text" id="id" name="id"></label>
		</p>
		<p>
			<label for="passwd">비밀번호
			<input type="password" id="passwd" name="passwd"></label>
		</p>
		<p>
			<label for="uname">이름
			<input type="text" id="uname" name="uname"></label>
		</p>
		<p>연락처: <select name="phone1">
					<option>010</option>
					<option>02</option>
					<option>031</option>
					<option>041</option>
			</select>
			- <input type="text" name="phone2" maxlength=4 size=4>
			- <input type="text" name="phone3" maxlength=4 size=4>
		</p>		
		<p>
			<input type="button" value="가입하기" onclick="checkMember()">
			<input type="reset" value="다시쓰기">
		</p>
	</form>
</body>
</html>