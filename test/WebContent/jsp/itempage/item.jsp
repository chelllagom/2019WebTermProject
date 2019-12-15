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
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");

	Connection conn = ConnectionProvider.getConnection();
	List<Product> products = null;
	String a= "";
	String title = request.getParameter("title");
	if(title == null){
		String searchbox = request.getParameter("searchbox");
		if(searchbox.equals("")){
			a="\""+searchbox+"\"에 대한 검색 결과가 없습니다.";
		}else{
		a="\""+searchbox+"\"에 대한 검색 결과입니다.";
		try{
			ProductDao dao = new ProductDao();
			products = dao.selectListByProductName(conn, searchbox);
		}catch(SQLException e){}
		}
		
	}else{
		a=title;
		try{
			ProductDao dao = new ProductDao();
			if(title.equals("전체"))
				products = dao.selectList(conn);
			else
				products = dao.selectListByProductType(conn, title);
		}catch(SQLException e){}
	}
%>
<c:set var="list" value="<%=products %>"/>
<div id="wrap">
<jsp:include page="../form/header.jsp" flush="true"></jsp:include>

  <div class="title_wrap">
  	<div class="title_wrap2">
  		<h1 style="font-size : 3em; color: #555;" class="title"><%=a%></h1>
  	</div>
  </div>
  
  <div class="item_wrap">
	<c:if test="${list!=null}">
		<c:forEach var="product" items="${list}">
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
	</c:if>
  </div>
  
<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
