<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
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

<div id="wrap">
  <jsp:include page="../form/header.jsp" flush="true"></jsp:include>
  
  <div class="main_img">
  	<img src="../../images/mainimg.PNG" />
  </div>
  
  <div class="ranking_logo">
  	<img src="../../images/rankinglogo.PNG" />
  </div>
  
  <%for(int i =0; i<4; i++){ %>
	<div class="ranking_img">	
  		<a href="../itempage/detail.jsp">
  			<img src="../../images/sampleimg1.PNG" width="369" height="595"/>
  		</a>
	</div>
  <%} %>
  
  
  <div class="new_product_logo">
   <img src="../../images/newproductlogo.PNG" width="1900" height="213" />
   </div>
  <%for(int i =0; i<8; i++){ %>
	<div class="ranking_img">
		<a href="../itempage/detail.jsp">
  			<img src="../../images/sampleimg1.PNG" width="369" height="595"/>
  		</a>
	</div>
  <%} %>
  
  
  <div class="bestseller_logo">
  <img src="../../images/bestseller_01.png" width="1900" height="127" />
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
      <img src="../../images/bestseller_11.PNG" name="bestseller_event" width="1602" height="552" id="bestseller_event" />
      </div>
    </div>
  </div>
  <div class="background_img">
    <img src="../../images/background.PNG" width="1899" height="390" />
  </div>
  
  

  <jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
