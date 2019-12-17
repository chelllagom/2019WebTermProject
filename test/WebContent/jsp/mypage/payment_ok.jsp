<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.model.*, my.dao.*, my.util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String memberId = (String)session.getAttribute("LOGIN");
Integer productCount = (Integer)session.getAttribute("productCount");
Cart cart = null;
Connection conn = ConnectionProvider.getConnection();
ProductDao dao = new ProductDao();
PurchaseDao dao2 = new PurchaseDao();
for(int i=1; i<=productCount.intValue(); i++) {
	cart = (Cart)session.getAttribute("product"+i);
	int productId = cart.getProductId();
	int amount = cart.getAmount();
	int price = 0;
	Product product = new Product();
	try{
		dao.updateFav(conn, productId, 2);
		product = dao.selectById(conn, productId);
		price = product.getPrice() - product.getDiscount();
		Purchase purchase = new Purchase(productId, price, amount, memberId, new java.util.Date());
		dao2.insert(conn, purchase);
	}catch(SQLException e){}
}
JdbcUtil.close(conn);
%>
<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	
	<div id="join_finish_wrap">
		<div class="container">
		<p class="title">결제가 완료 되었습니다!</p>
		
		<br><br>
		<div class="button-area" style="margin-left: 160px;">
			<a href="../index/index.jsp" class="button01">GO HOME</a>
		</div>
		
		
		</div>
		
		
	</div>
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>