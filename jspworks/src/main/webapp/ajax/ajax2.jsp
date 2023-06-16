<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax 테스트</title>
<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
<script type="text/javascript">
<!-- document가 있으면 안되네요 -->
	function fn_process(){
		//alert("testing..");
		$.ajax({
			type: "get",
			url: "http://localhost:8080/ajax1",	/* 서블릿에서 url만 따오면 됩니다 */
			dataType: "text",
			data: {message: "안녕~ Server!"},
			success: function(data){			// 서블릿의 msg가 data임
				//$('#message').append(data);	// 무한 출력
				$('#message').text(data);   	// text를 더 많이 씀 - 한 번만 출력됨
			},
			error: function(){
				alert("에러 발생!");
			}
		});
	}
</script>
</head>
<body>
	<!-- 자스에 onclick으로 해볼게요 -->
	<button type="button" onclick="fn_process()">전송</button>
	<p id="message"></p>
</body>
</html>