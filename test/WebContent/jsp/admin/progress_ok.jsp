<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
	int qnaId = Integer.parseInt(request.getParameter("qnaId"));
	Connection conn = ConnectionProvider.getConnection();
	try{
		QnaDao dao = new QnaDao();
		dao.updateProgress(conn, qnaId, "�ذ�");
	}catch(SQLException e){}
%>
<script>
	alert("ó���� �Ϸ�Ǿ����ϴ�.");
	location.href="admin.jsp";
</script>
</body>
</html>