<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/detailUnder.css" rel="stylesheet" type="text/css" />

</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = (String)session.getAttribute("LOGIN");
	int productId = Integer.parseInt(request.getParameter("productId"));
	int num=0;
	Connection conn = ConnectionProvider.getConnection();
	List<Qna> qnas = null;
	try{
		QnaDao dao = new QnaDao();
		qnas = dao.selectListByProductId(conn, productId);
	}catch(SQLException e){}
	
%>
<c:set var="productId" value="<%=productId %>"/>
<div id="under_wrap">	

	
<br></br><br></br>	
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
<br></br>
	<input type="hidden" id="memberId" value=<%=memberId%>/>
	<div id=qna_wrap>
		<a name="1">
		<img style="margin-left: 345px;" src="../../images/detail/qna.png" width="1190" height="191" usemap="#Map" border="0" />
	  	<map name="Map" id="Map">
	    	<area shape="rect" coords="5,120,172,166" href="javascript:openPop()" usemap="#Map" />
	  	</map>
		<table class="tbl-ex">
    	<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>처리</th>
		</tr>
		<c:forEach var="qna" items="<%=qnas%>">
		<tr>
			<td>${qna.title}</td>
			<td>${qna.memberId}</td>
			<td>${qna.wdate}</td>
			<td>${qna.progress}</td>
		</tr>
		</c:forEach>
<!-- 	<tr class="even">

			<td>데베</td>
			<td>연결</td>
			<td>필요</td>
			<td>해요</td>
		</tr>
		<tr>
			<td>데베</td>
			<td>연결</td>
			<td>필요</td>
			<td>해요</td>
		</tr>
		<tr class="even">
			<td>데베</td>
			<td>연결</td>
			<td>필요</td>
			<td>해요</td>
		</tr>
		<tr>
			<td>데베</td>
			<td>연결</td>
			<td>필요</td>
			<td>해요</td>
		</tr>
		<tr class="even">
			<td>데베</td>
			<td>연결</td>
			<td>필요</td>
			<td>해요</td>
		</tr> 
		 -->   
		</table>
		</a>
		<!--
		<div style="margin-left: 700px; margin-top: 40px;">
		<ul class="ul_pagination">  
		    <li class="li_pagination"><a href="#">1</a></li>  
		    <li class="li_pagination"><a href="#">2</a></li>  
		    <li class="li_pagination"><a href="#">3</a></li>  
		    <li class="li_pagination"><a href="#">4</a></li>  
		    <li class="li_pagination"><a href="#">5</a></li>  
		    <li class="li_pagination"><a href="#">6</a></li>  
		    <li class="li_pagination"><a href="#">7</a></li>  
		    <li class="li_pagination"><a href="#">8</a></li>  
		    <li class="li_pagination"><a href="#">9</a></li>  
		    <li class="li_pagination"><a href="#">10</a></li>  
		</ul>
		</div>
		--> 
	</div>
	
	<br></br>
	
	
	<div id="cs_wrap" style="margin-top: 100px;">
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
		<a name="2">
		<img style="margin-left: 345px; margin-top: 100px;" src="../../images/detail/cs.PNG"/>
		<img style="margin-left: 345px; margin-top: 30px;" src="../../images/detail/cs1.PNG"/>
		</a>
	</div>

</div>
<script>
function openPop()
{
	var id = document.getElementById("memberId").value.trim();
	if( id == "null/")
	{
		alert("로그인이 필요합니다.");
		location.href = "../login/login.jsp";
	}
	else
	{
		window.open("../board/write.jsp?productId=${productId}", "startpop", "top=0, left=0, width=470, height=300, scrollbars=no, resizable=no ,status=no ,toolbar=no");
	}
}
</script>
</body>
</html>