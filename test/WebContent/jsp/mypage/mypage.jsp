<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
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
		String memberId = (String)session.getAttribute("LOGIN");
		Connection conn = ConnectionProvider.getConnection();
		List<Purchase> purchases = null;
		try{
			PurchaseDao dao = new PurchaseDao();
			purchases = dao.selectListByMemberId(conn, memberId);
		}catch(SQLException e){}
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
  		<p class="mini_title">주문내역 조회</p>
		<br><br>
	</div>

<div class="total_box">
	<div class="left_box">		
		<div class="button-area">
			<a href="myInfo_modify.jsp" class="button02">회원 정보 수정</a>
		</div>
		<div class="button-area1">
			<a href="my_qna.jsp" class="button02">게시물 관리</a>
		</div>
	</div>

	<div class="right_box">
			<div class="form-area">
				<table style="width: 100%">
			        <tr>
			        	<th style="width: 100px;">주문 번호</th>
			        	<th style="width: 600px;">상품 정보</th>
			        	<th style="width: 70px;">수량</th>
			        	<th style="width: 100px;">상품 구매 금액</th>
			        	<th style="width: 150px;">주문 처리 상태</th>
			        </tr>
			        <c:forEach var="purchase" items="<%=purchases%>">
			        <tr>
			            <td>${purchase.purchaseId}</td>
			            <td><div class="big">${purchase.name }</div></td>
			            <td><strong>${purchase.amount }</strong></td>
			            <td><div class="big">${purchase.price }</div></td>
			            <td class="small">${purchase.progress }</td>     
			 		</tr>
			 		</c:forEach>
			 	</table>
		 	</div>
	</div>
</div>
		<br><br>
		
		
		
		
	
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>

</body>
</html>