<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="my.dao.*,my.model.*,java.sql.*,java.util.*,my.util.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int purchaseId = Integer.parseInt(request.getParameter("purchaseId"));
	Connection conn = ConnectionProvider.getConnection();
	try{
		PurchaseDao dao = new PurchaseDao();
		dao.updateProgress(conn, purchaseId, "��ۿϷ�");
	}catch(SQLException e){}
%>
<script>
	alert("���ó���� �Ϸ�Ǿ����ϴ�.");
	location.href="orderCheck.jsp";
</script>
</body>
</html>