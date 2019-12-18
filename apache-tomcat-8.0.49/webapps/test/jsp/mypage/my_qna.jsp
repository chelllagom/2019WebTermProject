<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/mypage.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%
        request.setCharacterEncoding("UTF-8");
		
%>
<div id="wrap">
	<div class="header_bar">
	    <div class="header_logmenu">
		    <ul class="nav">	
				<%
					if(session.getAttribute("LOGIN") == null) // 로그인이 안되었을 때
		        		{
				%>
					<li><a href="../login/login.jsp"><span class="loginBotton">로그인</span></a></li>
				<%
						} else {
				%>
					<li><a href="../login/logout.jsp"><span class="loginBotton">로그아웃</span></a></li>
					<li style="padding-left: 10px;"><a href="mypage.jsp"><span class="loginBotton">마이페이지</span></a></li>
				<%
						}
				%>
			</ul>
	    </div>
	    <div class="searchbox">
	      <form action="../itempage/item.jsp" method="post" name="search">
	    	<input name="searchbox" type="text" 
	        style="background-color:transparent;border:0 solid black;width:200px;height:35px;font-size:15px;"/>
	      </form>
	    </div>
  	</div>
  	<div class="header_name">
      <div class="header_name_img">
      	<a href="../index/index.jsp">
      	<img src="../../images/new_headername.PNG" 
      		onerror="javascript:this.src='../../images/new_headername.png'" width="294" height="44" /></a>
    </div>
	</div>
	<br><br><hr>
	<di class="container1">
		<p class="title">MY PAGE</p>
  		<p class="mini_title">게시물 관리</p>
		<br><br>
	</div>

<div class="total_box">
	<div class="left_box">		
		<div class="button-area">
			<a href="myInfo_modify.jsp" class="button02">회원 정보 수정</a>
		</div>
		<div class="button-area1">
			<a href="mypage.jsp" class="button02">주문내역 조회</a>
		</div>
	</div>

	<div class="right_box2">
		<jsp:include page="../board/list.jsp" flush="true"></jsp:include>
	</div>
</div>
		<br><br>
		
		
		
		
	
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>

</body>
</html>