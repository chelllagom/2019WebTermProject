<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="my.model.*,my.dao.*,java.sql.*,java.util.*,my.util.*" %>  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/login.css" rel="stylesheet" type="text/css" />
<style>
table.type03 {
    text-align: left;
    line-height: 1.5;
    border-left: 3px solid #369;
  	margin : 20px 10px;
  	font-size : 1.3em;
}
table.type03 th {
    width: 147px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
}
table.type03 td {
    width: 349px;
    padding: 10px;
    vertical-align: top;
    color: #555;
}
</style>
</head>
<body>

<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	
	<div id="find_id_wrap">
		<div class="container">
		<p class="title">S E A R C H &nbsp;&nbsp; I D</p>
		<br>
		<p class="p">고객님의 아이디 찾기가 완료 되었습니다.</p>
		
		<br><br>
		
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String id = request.getParameter("id");

%>

			<table class="type03">
    			<tr>
        			<th scope="row">이름</th>
        				<td><%= name %></td>
    			</tr>
    			<tr>
        			<th scope="row">이메일</th>
        				<td><%= email %></td>
    			</tr>
    			<tr>
        			<th scope="row">아이디</th>
        				<td><%= id %></td>
    			</tr>
			</table>
		<br><br><br>
		<div class="button-area" style="margin-left: 5px;">
			<a href="login.jsp" class="button01">로그인</a>
		</div>
		<div class="button-area" style="margin-left: 20px;">
			<a href="searchPassword.jsp" class="button01">비밀번호 찾기</a>
		</div>
		
		
		</div>
		
		
	</div>
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>