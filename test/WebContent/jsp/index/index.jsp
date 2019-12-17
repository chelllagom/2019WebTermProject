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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script>
$(document).ready(function () {
    $('.bxslider').bxSlider({
        auto: true, // 자동으로 애니메이션 시작
        speed: 500,  // 애니메이션 속도
        pause: 5000,  // 애니메이션 유지 시간 (1000은 1초)
        pager: true, // 페이지 표시 보여짐
    });
});
$(document).ready(function () {
    $('.slider').bxSlider({
    });
});
</script>
</head>
<body>
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
  <div class="bxslider">
	  <div>
	  		<img src="../../images/mainimg.PNG" onerror="javascript:this.src='../../images/mainimg.png'"/>
	  </div>
	  <div>
	  		<img src="../../images/mainimg1.PNG" onerror="javascript:this.src='../../images/mainimg1.png'"/>
	  </div>
  </div>
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
    <div class="slider">
    	<div><img src="../../images/1.PNG" usemap="#Map" onerror="javascript:this.src='../../images/1.png'" border="0"/>
          <map name="Map" id="Map">
            <area shape="rect" coords="149,5,931,555" href="#" />
            <area shape="rect" coords="970,5,1751,555" href="#" />
          </map>
    	</div>
    	<div><img src="../../images/2.PNG" usemap="#Map2" onerror="javascript:this.src='../../images/2.png'" border="0"/>
          <map name="Map2" id="Map2">
            <area shape="rect" coords="151,4,930,555" href="#" />
            <area shape="rect" coords="969,4,1751,555" href="#" />
          </map>
    	</div>
    	<div><img src="../../images/3.PNG" usemap="#Map3" onerror="javascript:this.src='../../images/3.png'" border="0"/>
          <map name="Map3" id="Map3">
            <area shape="rect" coords="970,3,1749,552" href="#" />
            <area shape="rect" coords="149,4,931,553" href="#" />
          </map>
    	</div>
    	<div><img src="../../images/4.PNG" usemap="#Map4" onerror="javascript:this.src='../../images/4.png'" border="0"/>
          <map name="Map4" id="Map4">
            <area shape="rect" coords="149,4,930,553" href="#" />
            <area shape="rect" coords="969,3,1749,551" href="#" />
          </map>
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
