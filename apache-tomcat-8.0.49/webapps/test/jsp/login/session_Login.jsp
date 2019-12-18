<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="my.model.*, my.dao.*, my.util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String memberId = request.getParameter("id");
String password = request.getParameter("password");
Connection conn = ConnectionProvider.getConnection();
boolean login = false;
Member getUser = new Member();
try{
	MemberDao dao = new MemberDao();
	login = dao.checkPassword(conn, memberId, password);
	getUser = dao.selectById(conn, memberId);
}catch(SQLException e){}

//URL 및 로그인관련 전달 메시지
String msg = "";

if(login){
	if(memberId.equals("admin")) {
    	response.sendRedirect("../admin/admin.jsp");
    }else{
        // 세션에 현재 아이디 세팅
        session.setAttribute("LOGIN", memberId);
        response.sendRedirect("../index/index.jsp");
    }
}
else{%>
<script>
confirm("로그인에 실패하였습니다.");
history.go(-1);
</script>
<%
/*
if(getUser == null) // 아이디가 틀릴경우
{
    msg = "login.jsp?msg=-1";
}
else    // 비밀번호가 틀릴경우
{
    msg = "login.jsp?msg=0";
}

// sendRedirect(String URL) : 해당 URL로 이동
// URL뒤에 get방식 처럼 데이터를 전달가능
response.sendRedirect(msg);
*/        

//디비 구현되면 밑에 지워도 됨
/* String msg = "";
session.setAttribute("sessionID", id);
msg = "../index/index.jsp";
response.sendRedirect(msg); */
}%>
</body>
</html>