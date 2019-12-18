<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   window.close();
   /* location.href="list.jsp";  */
</script>

</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String memberId = (String)session.getAttribute("LOGIN");
	int productId = Integer.parseInt(request.getParameter("productId"));
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	
	Connection conn = ConnectionProvider.getConnection();
	
	try{
		QnaDao dao = new QnaDao();
		Qna qna = new Qna(memberId, productId, title, contents, "미해결", new java.util.Date());
		dao.insert(conn, qna);
	}catch(SQLException e){}
%>
</body>
</html>