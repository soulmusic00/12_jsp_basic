<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문</title>
</head>
<body>

	<h1>조건문</h1>
	
	<% 
		String name = "팀";
		
		if (name.equals("팀")) {
	%>
			<h3>팀 버너스 리 입니다.</h3>
	<% 		
		}
		else {
	%>
			<h3>팀 버너스 리가 아닙니다.</h3>
	<% 		
		}
	%>
	
	<hr>
	
	<h1>반복문</h1>
	
	<% 
		for (int i = 0; i < 10; i++) {
	%>
			<p>for 출력 : <%=i %></p>
	<% 
		}
	%>
	<hr>
	
	<% 
		int idx = 0;
		while (idx < 10) {
	%>
			<p>while문 출력 : <%=idx %></p>
	<% 
			idx++;			
		}
	%>

</body>
</html>