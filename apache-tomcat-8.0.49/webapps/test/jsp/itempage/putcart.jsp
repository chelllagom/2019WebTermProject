<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%> 
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int productId = Integer.parseInt(request.getParameter("productId"));
	int amount = Integer.parseInt(request.getParameter("amount"));
	Integer productCount = (Integer)session.getAttribute("productCount");

	if(productCount == null) {
		productCount = new Integer(0);
	}
	
	Cart cart = new Cart(productId, amount);
	productCount = new Integer(productCount.intValue() + 1);
	session.setAttribute("product"+productCount, cart);
	session.setAttribute("productCount", productCount);
	
	
	response.sendRedirect("../mypage/payment.jsp");
%>
</body>
</html>