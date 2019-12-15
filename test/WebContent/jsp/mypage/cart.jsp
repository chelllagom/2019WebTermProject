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
<div id="wrap">
<jsp:include page="../form/header.jsp" flush="true"></jsp:include>

  <div class="title_wrap">
  	<div class="title_wrap2" style="margin-left: 250px;">
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
		        	<th style="width: 100px;">배송비</th>
		        	<th style="width: 200px;">전체금액</th>
		        </tr>      
		        <tr>
		            <td><input name="" type="checkbox" value="" checked ="on"/></td>
		            <td style="width: 150px; height: 150px;"><img src="" alt="미니이미지"/></td>
		            <td><div class="name">상품제목</div><div class="memo">상품메모</div></td>
		            <td><strong>수량</strong></td>
		            <td>상품금액</td>
		            <td class="memo">할인금액</td>     
		   			<td>배송비</td>
		   			<td style="font-size: 2em;"><strong>전체금액</strong></td>
		 		</tr>
			    <tr>  
			        <td colspan="6"> <br/>
			            <div class="button-area" style="margin-left: 5px;">
							<input type="submit" class="button01" value="주문하기"> 
						</div>
						<div class="button-area" style="margin-left: 20px;">
							<a href="../index/index.jsp" class="button02">메인으로 이동</a>
						</div>
				    </td>
				    <td colspan="2">
				    
				    </td>  
				 </tr>
		    </table>  	
	     </div>
     	
	</form>
  </div>
  
<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
