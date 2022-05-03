<%@page import="_04_bean.ProductDao"%>
<%@page import="_04_bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beanPro</title>
</head>
<body>
	
	<% 
	
		request.setCharacterEncoding("utf-8");
		
		String pdCd   = request.getParameter("pdCd");
		String pdNm   = request.getParameter("pdNm");
		String deptCd = request.getParameter("deptCd");
		String deptNm = request.getParameter("deptNm");
		String mgrCd  = request.getParameter("mgrCd");
		String mgrNm  = request.getParameter("mgrNm");
	
		ProductBean bean1 = new ProductBean();
		bean1.setPdCd(pdCd);
		bean1.setPdNm(pdNm);
		bean1.setDeptCd(deptCd);
		bean1.setDeptNm(deptNm);
		bean1.setMgrCd(mgrCd);
		bean1.setMgrNm(mgrNm);
	
	%>
	
	<jsp:useBean id="bean2" class="_04_bean.ProductBean">
		<jsp:setProperty property="pdCd"   value="<%=pdCd %>"   name="bean2"/>
		<jsp:setProperty property="pdNm"   value="<%=pdNm %>"   name="bean2"/>
		<jsp:setProperty property="deptCd" value="<%=deptCd %>" name="bean2"/>
		<jsp:setProperty property="deptNm" value="<%=deptNm %>" name="bean2"/>
		<jsp:setProperty property="mgrCd"  value="<%=mgrCd %>"  name="bean2"/>
		<jsp:setProperty property="mgrNm"  value="<%=mgrNm %>"  name="bean2"/>
	</jsp:useBean>


	<jsp:useBean id="bean3" class="_04_bean.ProductBean">
		<jsp:setProperty property="*" name="bean3"/>
	</jsp:useBean>

	<% 
	
		// 확인
		ProductDao productDao = new ProductDao();
		
		productDao.printdata(bean1);
		productDao.printdata(bean2);
		productDao.printdata(bean3);
	
	%>

	<!-- 확인 -->
	<p>bean1 : <%=bean1.getPdNm() %></p>
	<p>bean2 : <%=bean2.getPdNm() %> , <jsp:getProperty property="pdNm" name="bean2"/></p>
	<p>bean3 : <%=bean3.getPdNm() %> , <jsp:getProperty property="pdNm" name="bean3"/></p>


</body>
</html>



