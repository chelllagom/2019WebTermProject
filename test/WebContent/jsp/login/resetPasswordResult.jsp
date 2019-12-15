<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	Connection conn = ConnectionProvider.getConnection();
	try{
		MemberDao dao = new MemberDao();
		dao.updatePassword(conn, memberId, password);
	}catch(SQLException e){}
%>
<script>
	alert("비밀번호 변경이 완료되었습니다.");
	document.location.href="login.jsp";
</script>
</body>
</html>