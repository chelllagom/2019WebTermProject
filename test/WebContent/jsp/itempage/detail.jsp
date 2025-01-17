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

<!-- <script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script> -->

</head>

<body>
<%
String memberId = (String)session.getAttribute("LOGIN");
int productId = Integer.parseInt(request.getParameter("productId"));
Product product = null;
Connection conn = ConnectionProvider.getConnection();
try{
	ProductDao dao = new ProductDao();
	dao.updateFav(conn, productId, 1);
	product = dao.selectById(conn, productId);
}catch(SQLException e){}
JdbcUtil.close(conn);
int price = product.getPrice();
int discount = product.getDiscount();
double priceDouble = price * discount * 0.01;
int totalPrice = price - (int)priceDouble;
totalPrice /= 10;
totalPrice *= 10;
%>
<c:set var="product" value="<%=product %>"/>
<c:set var="productId" value="${product.productId}"/>
<c:set var="price" value="${product.price}"/>
<c:set var="discount" value="${product.discount}"/>
<c:set var="shippingFee" value="3500"/>
<div id="wrap">
<jsp:include page="../form/header.jsp" flush="true"></jsp:include>

<div class="detail_wrap">
	<div class="detail_menu_wrap">
		<div class="detail_menu">
			<div class="detail_img_wrap">
				<div class="detail_img">
  					<img src="../../images/${product.thumbnailimg}" width="410px;" height="533px;"/>
				</div>
				<div calss="detail_miniimg">
				</div>
			</div>
			
			
			<div class="detail_info_wrap">
			<span class="item_name">
				${product.name}
			</span>
			
			<br></br><br></br><br></br>
			
			<div style=" text-align: right; width: 560px; height: 40px;">
				<span class="sale" style="font-size: 1.5em; font-weight: bold;"> ${discount}% 할인중</span>
				&nbsp;&nbsp; <span class="price"> ${price} 원</span>
			</div>
			
			<div class="box">
				<span class="inner_box">
				${product.memo }
				</span>
			</div>
			
			<br></br><hr></hr>
			
			<div class="box2">
				<div style="float:left;">
					<img src="../../images/detail/truck.PNG"/>
				</div>
				
				<div class="inner_box2">
				<p style= "font-size : 1.8em; font-weight: bold; color: skyblue;">배송 상품안내</p>
				<p style= "font-size : 1.3em; font-weight: bold; "> 지금 주문하시면  3일 뒤에 도착합니다.</p>
				</div>
			</div>
			
			<table class="type03">
    			<tr>
        			<th scope="row">배송 방법</th>
        				<td>택배</td>
    			</tr>
    			<tr>
        			<th scope="row">배송비</th>
        				<td>${shippingFee} (50,000원 이상 구매 시 무료 / 제주, 도서지역 추가 3,000원)</td>
    			</tr>
    			<tr>
        			<th scope="row">배송비 결제</th>
        				<td>주문시 결제</td>
    			</tr>
			</table>
			<hr></hr>
			
			<table class="type03">
    			<tr>
        			<th scope="row">수량</th>
        				<td>
        					<select name='amount' id="amount">
  								<option value='1'>1 개</option>
  								<option value='2'>2 개</option>
  								<option value='3'>3 개</option>
							</select>
						</td>
    			</tr>
			</table>
			<!-- 장바구니 팝업 위한 hidden input -->
			<input type="hidden" id="productId" value="${productId}"/>
			<input type="hidden" id="memberId" value=<%=memberId%>/>
			<hr></hr>
			<br/>
			
			<div style=" text-align: right; width: 560px; height: 50px;">
				<span class="total_price">총 금액 <%=totalPrice%> 원</span>
			</div>
			
			<div id="btn_group">
				<button id="test_btn1" onclick="purchase();">구매하기</button>
				<button id="test_btn2" onclick="cart();">장바구니</button>
			</div>

			
			</div>
		
		</div>
	</div>
	
	<div id=button_wrap>
<div class="section">
    <div class="section__item">
        <a href="#0" class="sm-link sm-link_padding-all sm-link5">
            <span style="color: #475fda !important; font-weight: 800 !important; font-size: 2em !important;"
             class="sm-link__label">상세정보</span>
        </a>
    </div>
</div>
<div class="section">
    <div class="section__item">
        <a href="#1" class="sm-link sm-link_padding-all sm-link5">
            <span style="color: #475fda !important; font-weight: 800 !important; font-size: 2em !important;"
            class="sm-link__label">  Q&A  </span>
        </a>
    </div>
</div>
<div class="section">
    <div class="section__item">
        <a href="#2" class="sm-link sm-link_padding-all sm-link5">
            <span style="color: #475fda !important; font-weight: 800 !important; font-size: 2em !important;"
            class="sm-link__label">  반품/교환정보  </span>
        </a>
    </div>
</div>

</div>

	
	<div id="table_wrap">
		<a name="0">
		<table class="type02">
    		<tr>
        		<th scope="row">상품상태</th>
        			<td>새상품</td>
    		</tr>
    		<tr>
        		<th scope="row">제조사</th>
        			<td>${product.maker }</td>
    		</tr>
    		<tr>
        		<th scope="row">모델명</th>
        			<td>${product.name }</td>
    		</tr>
		</table>
		</a>
		<table class="type02">
    		<tr>
        		<th scope="row">상품번호</th>
        			<td>${productId }</td>
    		</tr>
    		<tr>
        		<th scope="row">브랜드</th>
        			<td>코제트</td>
    		</tr>
    		<tr>
        		<th scope="row">원산지</th>
        			<td>${product.origin }</td>
    		</tr>
		</table>
	</div>
	<div id="img_wrap">
		<img src="../../images/${product.detailimg}"/>
	</div>

<jsp:include page="detailUnder.jsp" flush="true">
<jsp:param value="${productId}" name="productId"/>
</jsp:include>
</div>


<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
<script>
function cart(){
	var id = document.getElementById("memberId").value.trim();
	if( id == "null/")
	{
		alert("로그인이 필요합니다.");
		location.href = "../login/login.jsp";
	}
	else
	{
		var productId = document.getElementById("productId").value.trim();
		var amount = document.getElementById("amount").value.trim(); //상품 개수 담아서 보내기
		/* var popupX = (window.screen.width / 2) - (378 / 2);
		var popupY= (window.screen.height / 2) - (240 / 2); */
		window.open("cart_popup.jsp?productId=" + productId + "&amount="+amount, "startpop", "width=378, height=240,scrollbars=no, resizable=no ,status=no ,left='+ popupX + ', top='+ popupY");
	}	
}
function purchase(){
	var id = document.getElementById("memberId").value.trim();
	if( id == "null/")
	{
		alert("로그인이 필요합니다.");
		location.href = "../login/login.jsp";
	}
	else
	{
		var productId = document.getElementById("productId").value.trim();
		var amount = document.getElementById("amount").value.trim(); //상품 개수 담아서 보내기
		location.href="putcart.jsp?productId=" + productId + "&amount="+amount;
	}
}
</script>
</div>
</body>
</html>
