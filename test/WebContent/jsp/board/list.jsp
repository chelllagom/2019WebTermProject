<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
</head>
<body>
<%
	String memberId = (String)session.getAttribute("LOGIN");
	Connection conn = ConnectionProvider.getConnection();
	List<Qna> qnas = null;
	try{
		QnaDao dao = new QnaDao();
		qnas = dao.selectListByMemberId(conn, memberId);
	}catch(SQLException e){}
%>
<div class="table_wrap">
<table style="width: 60%" cellpadding="0" cellspacing="0" border="0">
 <tr style="text-align:center;">
   <td style="width: 10%">분류번호</td>
   <td style="width: 40%">제목</td>
   <td style="width: 40%">작성일</td>
   <td style="width: 10%">처리상태</td>
 </tr>
<% if(qnas == null) { %>
	 	<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td>&nbsp;</td>
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	</tr>
<% } else { %>
<c:forEach var="qna" items="<%=qnas%>">
	<tr height="25" align="center">
	<td>${qna.qnaId }</td>
	<td>${qna.title }</td>
	<td align="center">${qna.wdate }</td>
	<td align="center">${qna.progress }</td>
</tr>
</c:forEach>
<% }%>

  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
  
 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
 </table>
</div>
</body>
</html>