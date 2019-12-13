<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.model.*, my.dao.*, my.util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	String userName = request.getParameter("userName");
	String phoneNum1 = request.getParameter("phoneNum1");
	String phoneNum2 = request.getParameter("phoneNum2");
	String phoneNum3 = request.getParameter("phoneNum3");
	String tel = phoneNum1 + phoneNum2 + phoneNum3;
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String email = email1 + email2;
	String sample6_postcode = request.getParameter("sample6_postcode");
	String sample6_address = request.getParameter("sample6_address");
	String daddress = request.getParameter("daddress");
	String address = sample6_postcode + " " + sample6_address + " " + daddress;
	Connection conn = ConnectionProvider.getConnection();
	try{
		MemberDao dao = new MemberDao();
		Member member = new Member(userId, password, tel, userName, email, address);
		dao.insert(conn, member);
	}catch(SQLException e){}
%>
<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	
	<div id="join_finish_wrap">
		<div class="container">
		<p class="title">WELCOME!</p>
		<br>
		<p class="p">회원가입이 완료 되었습니다.</p>
		
		<br><br>
		<div class="button-area" style="margin-left: 160px;">
			<a href="../index/index.jsp" class="button01">GO HOME</a>
		</div>
		
		
		</div>
		
		
	</div>
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>