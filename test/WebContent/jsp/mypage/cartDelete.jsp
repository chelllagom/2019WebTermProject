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
	int num = Integer.parseInt(request.getParameter("num"));
	String type = request.getParameter("type");
	//Integer productCount = (Integer)session.getAttribute("productCount");
	
	session.removeAttribute("product"+num);
	//productCount = new Integer(productCount.intValue() - 1);
	//session.setAttribute("productCount", productCount);
%>
<script>
	alert("삭제가 완료되었습니다.");
	location.href="<%=type%>.jsp";
</script>
</body>
</html>