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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('daddress').focus();
            }
        }).open();
    }
</script>
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
		if(cart == null)
			continue;
		int productId = cart.getProductId();
		int amount = cart.getAmount();
		Product product = new Product();
		try{
			product = dao.selectById(conn, productId);
			discount = ((int)(product.getPrice() * 0.01 * product.getDiscount()))/10 * 10;
			product.setDiscount(discount);
			product.setAmount(amount);
			products.add(product);
			totalPrice += product.getPrice();
			totalDiscount += discount;
		}catch(SQLException e){}
	}
	String memberId = (String)session.getAttribute("LOGIN");
	MemberDao dao2 = new MemberDao();
	Member member = null;
	
	try{
		member = dao2.selectById(conn, memberId);
	}catch(SQLException e){}
	
%>
<c:set var="shippingFee" value="3500"/>
<c:set var="member" value="<%=member %>"/>
<div id="wrap">
<jsp:include page="../form/header.jsp" flush="true"></jsp:include>

  <div class="title_wrap">
  	<div class="title_wrap2" style="margin-left: 200px;">
  		<h1 style="font-size : 3em; color: #555;" class="title">결제/배송정보</h1>
  	</div>
  </div>
 
  <div class="cart_wrap">
		<div class="in_2box3">
		<form name="cartInfo" action="payment_ok.jsp" method="post" onsubmit="return checkValue()">
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
		        <c:set var="num" value="1"/>
		        <c:forEach var="product" items="<%=products %>">
		        	<tr>
		            	<td><input name="" type="checkbox" value="" checked ="on"/></td>
		            	<td style="width: 150px; height: 150px;"><img src="/test/images/${product.thumbnailimg}" alt="미니이미지"/></td>
		            	<td><div class="name">${product.name}</div><div class="memo">${product.memo}</div></td>
		            	<td><strong>${product.amount}개</strong></td>
		            	<td>${product.price}원</td>
		            	<td class="memo">-${product.discount}원</td>     
		   				<td style="font-size: 2em;"><strong>총 ${product.price - product.discount}원</strong></td>
		   				<td><a href="cartDelete.jsp?num=${num}&type=payment"><button style="width: 60px; height: 25px;" type="button">삭제</button></a></td>
		 			</tr>
		 			<c:set var="num" value="${num+1}"/>
		 		</c:forEach>
			    <tr>  
			        <td colspan="6"> <br/>
			            <table class="type03" border="1" cellpadding="3" cellspacing="0">
					        <tr>
					        <th bgcolor="#eeeeee" scope="row">배송지 선택</th>
								<td>
									<input type="radio" name="group" checked="">회원 정보와 동일</input>
									<input type="radio" name="group">새로운 배송지</input>
								</td>
							</tr>
							
					        <tr>
					          <th bgcolor="#eeeeee" scope="row">받으시는 분 <span class="list">*</span></th>
					          <td>
					          <span>
					               <input type="text" value="${member.name}" class="input-text" maxlength="20"/>
					    	  </span>
					         </td>
					        </tr>
					        
					        <tr>
					          <th bgcolor="#eeeeee" scope="row">주소*</th>
					          <td>
					            <p>
								  <input type="text" name="sample6_postcode" id="sample6_postcode" value="${member.address1}"/>
								  <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/><br></br>
								  <input type="text" name="sample6_address" id="sample6_address" value="${member.address2}"/>
					              <input type="text" name="daddress" id="daddress" value="${member.address3}"/>
					            </p>
					          </td>
					        </tr>
					        
					        <tr>
					          <th width="122" height="46" bgcolor="#eeeeee" scope="row">휴대폰 번호 <span class="list">*</span></th>
					          <td width="560">
					            <input type="number" class="input-text" placeholder="010" maxlength="5"/>-
					            <span>
					            <input type="number" name="" id="" class="input-text" value="${member.tel2}" maxlength="5"/>
					            </span>-
								 <span>
					            <input type="number" name="" id="" class="input-text" value="${member.tel3}" maxlength="5"/>		
								</span>
					          </td>
					        </tr> 
					      </table>
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
		    <br/><br/><br/>
		<div class="button-area" style="margin-left: 5px;">
			<input type="submit" class="button02" value="결제하기"> 
		</div>
      </form>
      </div>
</div>
<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
