<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="my.model.*, my.dao.*, my.util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String memberId = (String)session.getAttribute("LOGIN");
	String password = request.getParameter("password");
	String userName = request.getParameter("userName");
	String tel1 = request.getParameter("phoneNum1");
	String tel2 = request.getParameter("phoneNum2");
	String tel3 = request.getParameter("phoneNum3");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String email = email1 + email2;
	String address1 = request.getParameter("sample6_postcode");
	String address2 = request.getParameter("sample6_address");
	String address3 = request.getParameter("daddress");
	Connection conn = ConnectionProvider.getConnection();
	try{
		MemberDao dao = new MemberDao();
		Member member = new Member(memberId, password, userName, email, tel1, tel2, tel3, address1, address2, address3);
		dao.update(conn, member);
	}catch(SQLException e){}
%>
<script>
	alert("회원정보 수정이 완료되었습니다.");
	location.href="mypage.jsp";
</script>
</body>
</html>