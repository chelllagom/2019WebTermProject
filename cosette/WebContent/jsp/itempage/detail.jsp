<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

<body onload="MM_preloadImages('../../images/bestseller_11.PNG'
							  ,'../../images/bestseller_12.PNG'
							  ,'../../images/bestseller_13.PNG'
							  ,'../../images/bestseller_14.PNG'
							  )">
<%request.setCharacterEncoding("utf-8"); %>
<%-- <%String title = request.getParameter("title"); %> --%>

<div id="wrap">
<jsp:include page="../form/header.jsp" flush="true"></jsp:include>

<div class="detail_wrap">
	<div class="detail_menu_wrap">
		<div class="detail_menu">
			<div class="detail_img_wrap">
				<div class="detail_img">
  					<img src="../../images/detail/vase_detail_sample.PNG"/>
				</div>
				<div calss="detail_miniimg">
				</div>
			</div>
			
			
			<div class="detail_info_wrap">
			<span class="item_name">
			<%-- <%=데베 속성값%> --%> [코제트] 아이보리라인 롱 도자기 화병, 화이트 인테리어 꽃병
			</span>
			
			<br></br><br></br><br></br>
			
			<div style=" text-align: right; width: 560px; height: 40px;">
				<span class="price"> 데베에서 넘어온 가격 </span>
			</div>
			
			<div class="box">
				<span class="inner_box">
				코제트 회원과 산기대 학생은 무료배송!
				</span>
			</div>
			
			<br></br><hr></hr>
			
			<div class="box2">
				<div style="float:left;">
					<img src="../../images/detail/truck.PNG"/>
				</div>
				
				<div class="inner_box2">
				<p style= "font-size : 1.8em; font-weight: bold; color: skyblue;">배송 상품안내</p>
				<p style= "font-size : 1.3em; font-weight: bold; "> 지금 주문하면  11/18(월) 에 발송됩니다.</p>
				</div>
			</div>
			
			<table class="type03">
    			<tr>
        			<th scope="row">배송 방법</th>
        				<td>택배</td>
    			</tr>
    			<tr>
        			<th scope="row">배송비</th>
        				<td>3,500원 (50,000원 이상 구매 시 무료 / 제주, 도서지역 추가 3,000원)</td>
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
        					<select name='option' id="option">
  								<option value='' selected>0개</option>
  								<option value='데베 연결 시 속성 값'>데베 연결 시 속성 값</option>
  								<option value='데베 연결 시 속성 값'>데베 연결 시 속성 값</option>
  								<option value='데베 연결 시 속성 값'>데베 연결 시 속성 값</option>
							</select>
						</td>
    			</tr>
			</table>
			<hr></hr>
			<br/>
			
			<div style=" text-align: right; width: 560px; height: 50px;">
				<span class="total_price"> 데베에서 넘어온 총 상품 금액 </span>
			</div>
			
			<div id="btn_group">
				<a href="#"><button id="test_btn1">구매하기</button></a>
				<a href="#"><button id="test_btn2">장바구니</button></a>
			</div>

			
			</div>
		
		</div>
	</div>


<jsp:include page="detailUnder.jsp" flush="true"></jsp:include>
</div>


<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
