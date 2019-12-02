<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="../../css/layout.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <div id="header">
    <div class="header_bar">
    <div class="header_logmenu"> <a href="../login/login.jsp"><img src="../../images/login.PNG" width="58" height="27" /></a>
    </div>
     <div class="searchbox">
      <form action="" method="post" name="search">
    	<input name="searchbox" type="text" 
        style="background-color:transparent;border:0 solid black;width:200px;height:35px;font-size:15px;"/>
      </form>
     </div>
  </div>
 	 
    <div class="header_name">
      <div class="header_name_img"> <a href="../index/index.jsp"><img src="../../images/headername.PNG" width="397" height="47" /></a>
      </div>
     
    </div>
    <hr style="opacity: 0.4;"/>
    <div class="header_menu">
    	<ul>
       	  <span class="header_span_menu">
  			<li><a href="../itempage/item.jsp?title=화병">화병</a></li> <!-- ?title=화병 뒷부분에 DB에서 받을 값 이름도 같이 넘겨서 사진 받아주세여 -->
  			<li><a href="../itempage/item.jsp?title=조화">조화</a></li>
  			<li><a href="../itempage/item.jsp?title=바구니">바구니</a></li>
            <li><a href="../itempage/item.jsp?title=촛대">촛대</a></li>
  			<li><a href="../itempage/item.jsp?title=월데코">월데코</a></li>
  			<li><a href="../itempage/item.jsp?title=키친">키친</a></li>
            <li><a href="../itempage/item.jsp?title=장식소품">장식소품</a></li>
  			<li><a href="../itempage/item.jsp?title=트레이">트레이</a></li>
            <li><a href="../itempage/item.jsp?title=패브릭">패브릭  </a></li>
       	  </span>
    	</ul>
    </div>
    <hr style="opacity: 0.4;"/>
  </div>
</body>
</html>
