<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- jsp �ּ�  <%@ page %>�� ���þ�(��Ƽ�� �±�)�� jsp������
     ���, ���� ����, ���ڵ� ���� ������ �������� �˸� --%>
<!--  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>hello~</title>
</head>
<body>
	<h1>ó�� ����� �� ������</h1>
	<%-- <h3>���� ��¥�� �ð��� <%= LocalDateTime.now() %></h3> --%>
	<%
		LocalDateTime now = LocalDateTime.now();
		
	    //��¥�� �ð� ���� ����
	    DateTimeFormatter datetime 
	    	= DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss a");
	    String current_time = now.format(datetime);
	    
	    //5���� ���� ��ħ
	    response.setIntHeader("Refresh", 1);
	%>
	<h3>���� ��¥�� �ð��� <%= current_time %></h3>
</body>
</html>