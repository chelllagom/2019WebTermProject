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
	request.setCharacterEncoding("utf-8");
	String progress = "미해결";
	Connection conn = ConnectionProvider.getConnection();
	List<Qna> qnas = null;
	try{
		QnaDao dao = new QnaDao();
		//qnas = dao.selectListByProgress(conn, progress);
		qnas = dao.selectList(conn);
	}catch(SQLException e){}
%>
<div class="table_wrap">
<table cellpadding="0" cellspacing="0" border="0" style="font-size: 1em;">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="320">제목</td>
   <td width="60">작성자</td>
   <td width="60">처리상태</td>
   <td width="60">&nbsp;</td>
 </tr>

<c:forEach var="qna" items="<%=qnas %>">
<tr height="25" align="center">
	<td width="320">${qna.title }</td>
    <td width="60">${qna.memberId }</td>
	<td width="60">${qna.progress }</td>
    <td><a href="progress_ok.jsp?qnaId=${qna.qnaId}"><input type=button value="처리"></a></td>
	<td>&nbsp;</td>
</tr>
</c:forEach>

 </table>
</div>
</body>
</html>