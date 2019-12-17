<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
$(document).ready(function () {
    $('.bxslider').bxSlider({
        auto: true, // 자동으로 애니메이션 시작
        speed: 500,  // 애니메이션 속도
        pause: 5000,  // 애니메이션 유지 시간 (1000은 1초)
        mode: 'horizontal', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)
        autoControls: true, // 시작 및 중지버튼 보여짐
        pager: true, // 페이지 표시 보여짐
        captions: true, // 이미지 위에 텍스트를 넣을 수 있음
    });
});
</script>
<script type="text/javascript">
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
</script>
</head>

<body onload="MM_preloadImages('../../images/bestseller_11.PNG','../../images/bestseller_12.PNG','../../images/bestseller_13.PNG','../../images/bestseller_14.PNG')">
<%
	Connection conn = ConnectionProvider.getConnection();
	List<Product> bestProducts = null;
	try{
		ProductDao dao = new ProductDao();
		bestProducts = dao.selectListByFavLimit(conn, 4);
	}catch(SQLException e){}
	
	List<Product> newProducts = null;
	try{
		ProductDao dao = new ProductDao();
		newProducts = dao.selectListByFavLimit(conn, 8);
	}catch(SQLException e){}
%>
<div id="wrap">
  <jsp:include page="../form/header.jsp" flush="true"></jsp:include>
  
	  <ul class="bxslider"> 
	  	<li>
	  		<img src="../../images/mainimg.PNG" onerror="javascript:this.src='../../images/mainimg.png'"/>
	  	</li>
	  	<li>
	  		<img src="../../images/mainimg1.PNG" onerror="javascript:this.src='../../images/mainimg1.png'"/>
	  	</li>
	  </ul>
  
  <div class="ranking_logo">
  	<div style="display: inline-block;"><h1 style="font-size : 3em; color: #555;">고객님이 좋아하실 만한 상품</h1></div>
  </div>
  
  
	<div class="item_wrap">	
  		<c:forEach var="product" items="<%=bestProducts%>">
  		<div class="item">
			<a href="../itempage/detail.jsp?productId=${product.productId}">	
 					<img src="../../images/${product.thumbnailimg}" width="295" height="385"/>
			</a>
			<div class="thumb_name"><strong>${product.name}</strong></div>
			<div class="thumb_price">
				<strong>
					<span class="number">${product.price}원</span> 
				</strong>
				<strong >
					<span style="margin-left: 10px;" class="sale">${product.discount}% 할인 중</span>
				</strong>
			</div>
			<div class="thumb_memo">
				<p>${product.memo}</p>
			</div>
		</div>
		</c:forEach>
	</div>
  
  
  
  <div class="new_product_logo">
  	<div style="display: inline-block;"><h1 style="font-size : 3em; color: #555;">새로나온 신상품</h1></div>
  </div>
	<div class="item_wrap">
	<c:forEach var="product" items="<%=newProducts%>">
		<div class="item">
			<a href="../itempage/detail.jsp?productId=${product.productId}">	
 					<img src="../../images/${product.thumbnailimg}" width="295" height="385"/>
			</a>
			<div class="thumb_name"><strong>${product.name}</strong></div>
			<div class="thumb_price">
				<strong>
					<span class="number">${product.price}원</span> 
				</strong>
				<strong >
					<span style="margin-left: 10px;" class="sale">${product.discount}% 할인 중</span>
				</strong>
			</div>
			<div class="thumb_memo">
				<p>${product.memo}</p>
			</div>
		</div>
	</c:forEach>
	</div>
  
  <div class="bestseller_logo">
  	<div style="display: inline-block;"><h1 style="font-size : 3em; color: #555;">코제트 MD가 추천하는 상품!</h1></div>
  </div>
  
  <div class="bestseller_miniimg">
    <div class="mini_img">
    <img src="../../images/bestseller_04.png" width="137" height="62" onmouseover="MM_swapImage('bestseller_event','','../../images/bestseller_11.PNG',1)" />
    </div>
    <div class="mini_img">
    <img src="../../images/bestseller_06.png" width="137" height="62" onmouseover="MM_swapImage('bestseller_event','','../../images/bestseller_12.PNG',1)" />
    </div>
    <div class="mini_img">
    <img src="../../images/bestseller_08.png" width="137" height="62" onmouseover="MM_swapImage('bestseller_event','','../../images/bestseller_13.PNG',1)" />
    </div>
    <div class="mini_img">
    <img src="../../images/bestseller_10.png" width="137" height="62" onmouseover="MM_swapImage('bestseller_event','','../../images/bestseller_14.PNG',1)" />
    </div>
    
    <div class="bestseller_imgbar">
      <div class="bestseller_img">
      <img src="../../images/bestseller_11.PNG" name="bestseller_event" width="1602" height="552" usemap="#bestseller_eventMap" id="bestseller_event" onerror="javascript:this.src='../../images/bestseller_11.png'" border="0" />
      <map name="bestseller_eventMap" id="bestseller_eventMap">
        <area shape="rect" coords="-1,-1,781,549" href="../itempage/detail.jsp?productId=${product.productId}" />
        <area shape="rect" coords="822,1,1600,549" href="../itempage/detail.jsp?productId=${product.productId}" />
      </map>
      </div>
    </div>
  </div>
  </div>
  <div class="background_img">
    <img src="../../images/background.PNG" onerror="javascript:this.src='../../images/background.png'" width="1899" height="390" />
  </div>
  
  

  <jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
