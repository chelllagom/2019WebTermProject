<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="my.dao.*, my.model.*, java.sql.*, java.util.*, my.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String memberId = request.getParameter("id");
	Connection conn = ConnectionProvider.getConnection();
	
	try{
		MemberDao dao = new MemberDao();
		dao.deleteById(conn, memberId);
	}catch(SQLException e) {}
%>
<script>
alert("${param.id} 회원이 탈퇴처리 되었습니다.");
document.location.href="memberCheck.jsp";
</script>
</body>
</html>