<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="../../css/item.css" rel="stylesheet" type="text/css" />
<link href="../../css/cart.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	Integer productCount = (Integer)session.getAttribute("productCount");
	List<Product> products = new ArrayList<Product>();
	Cart cart = null;
	Connection conn = ConnectionProvider.getConnection();
	ProductDao dao = new ProductDao();
	int totalPrice = 0;
	int totalDiscount = 0;
	int shippingFee = 3500;
	int discount = 0;
	for(int i=1; i<=productCount.intValue(); i++) {
		cart = (Cart)session.getAttribute("product"+i);
		int productId = cart.getProductId();
		int amount = cart.getAmount();
		Product product = new Product();
		product = dao.selectById(conn, productId);
		discount = ((int)(product.getPrice() * 0.01 * product.getDiscount()))/10 * 10;
		product.setDiscount(discount);
		product.setAmount(amount);
		products.add(product);
		totalPrice += product.getPrice();
		totalDiscount += discount;
	}
%>
<c:set var="shippingFee" value="3500"/>
<div id="wrap">
<jsp:include page="../form/header.jsp" flush="true"></jsp:include>

  <div class="title_wrap">
  	<div class="title_wrap2" style="margin-left: 200px;">
  		<h1 style="font-size : 3em; color: #555;" class="title">장바구니</h1>
  	</div>
  </div>
 
  <div class="cart_wrap">
  	<form name="cartInfo" action="payment.jsp" method="post" onsubmit="return checkValue()">
		<div class="in_2box3">
		    <table class="type02">
		        <tr>
		        	<th style="width: 10px;"><input name="" type="checkbox" value="" checked ="on"/></th>
		        	<th colspan="2" style="width: 850px;">상품정보</th>
		        	<th style="width: 40px;">수량</th>
		        	<th style="width: 100px;">상품금액</th>
		        	<th style="width: 100px;">할인금액</th>
		        	<th style="width: 200px;">전체금액</th>
		        	<th style="width: 80px;">삭제</th>
		        </tr>      
		       <c:forEach var="product" items="<%=products %>">
		        	<tr>
		            	<td><input name="" type="checkbox" value="" checked ="on"/></td>
		            	<td style="width: 150px; height: 150px;"><img src="/test/images/${product.thumbnailimg}" alt="미니이미지"/></td>
		            	<td><div class="name">${product.name}</div><div class="memo">${product.memo}</div></td>
		            	<td><strong>${product.amount}개</strong></td>
		            	<td>${product.price}원</td>
		            	<td class="memo">-${product.discount}원</td>     
		   				<td style="font-size: 2em;"><strong>총 ${product.price - product.discount}원</strong></td>
		   				<td><button style="width: 60px; height: 25px;" type="button">삭제</button></td>
		 			</tr>
		 		</c:forEach>
			    <tr>  
			        <td colspan="6"> <br/>
			            <div class="button-area" style="margin-left: 5px;">
							<input type="submit" class="button01" value="주문하기">
							<input type="button" onClick="location.href='../index/index.jsp'" class="button01" value="메인으로 이동">
						</div>
						</form>
				    </td>
				    <td colspan="3">
				    	<div class="payment_wrap">
				    			<div class="payment1">
			  						<strong>총 상품금액</strong>
			  					</div>
			  					<div class="payment2">
			  						<strong><%=totalPrice %> 원</strong>
			  					</div>
			  					<div class="payment1">
			  						<strong>배송비</strong>
			  					</div>
			  					<div class="payment2">
			  						<strong>(+) ${shippingFee}원</strong>
			  					</div>
			  					<div class="payment1">
			  						<strong>총 할인금액</strong>
			  					</div>
			  					<div class="payment2">
			  						<strong>(-) <%=totalDiscount %> 원</strong>
			  					</div>
			  					<div class="total_payment1">
			  						<strong>결제금액</strong>
			  					</div>
			  					<div class="total_payment2">
			  						<strong><%=totalPrice - totalDiscount + shippingFee%> 원</strong>
			  					</div>
						</div>
				    </td>  
				 </tr>
		    </table>  	
	     </div>
     	
	
  </div>
  
<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
