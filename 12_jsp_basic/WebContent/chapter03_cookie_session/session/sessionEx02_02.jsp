<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
	
		// session.setAttribute("세션명" , "세션값"); 메서드로 세션을 등록한다.
		session.setAttribute("id" , id);
		
	%>

	<h4>로그인 되었습니다.</h4>

	<p>아이디 : <%=id %></p>
	<p>패스워드 : <%=passwd %></p>

	<hr>
	<p><a href="sessionEx02_03.jsp">마이페이지로 이동</a></p>
	<p><a href="sessionEx02_04.jsp">장바구니로 이동</a></p>

</body>
</html>