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
	int productId = Integer.parseInt(request.getParameter("id"));
	Connection conn = ConnectionProvider.getConnection();
	
	try{
		ProductDao dao = new ProductDao();
		dao.deleteById(conn, productId);
	}catch(SQLException e) {}
%>
<script>
alert("${param.id}에 해당하는 상품이 삭제되었습니다.");
document.location.href="productDelete.jsp";
</script>
</body>
</html>