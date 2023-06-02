/**
 * 회원 가입 - 가입 정보
 */
function signUp(){
		// alert('test'); // test를 먼저 해보세요
		//변수 할당해놓고
		let form = document.form1;
		let name = form.name.value;	//value는 들어갈때도 안들어갈때도 있음, 상황에 따라 삽입
		let email = form.email.value;
		
		alert("정말로 가입하시겠습니까?");
		// 회원 가입 폼 숨기기
		document.getElementById('regForm').style.display = "none";	// 이거 왜 안사라져!!!!!!!!!!!! 수정해야함
		document.getElementById('rname').innerHTML = name;	//div result <p>이름: <span id="rname"></span></p> 여기서 받아줌
		document.getElementById('rmail').innerHTML = email;
		
		//가입 정보 스타일
		document.getElementById('result').setAttribute('style', "display:block; background: lightgreen; padding: 5px 20px;")	// setAttribute - 속성 변화시킬때 - 
}