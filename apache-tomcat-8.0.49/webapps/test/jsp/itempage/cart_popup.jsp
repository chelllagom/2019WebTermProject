<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script>
function writeCheck(){
	window.opener.location.href ="../mypage/cart.jsp" ;
	window.close();
}
</script>
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
%>

<div>
<img src="../../images/cart.PNG" width="378" height="240" usemap="#cart" border="0" />
<map name="cart" id="cart">
  <area shape="rect" coords="48,141,217,204" OnClick="writeCheck();" />
  <area shape="rect" coords="226,141,333,205" OnClick="window.close();"/>
</map>
</div>
</body>
</html>