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

//URL �� �α��ΰ��� ���� �޽���
String msg = "";

if(login){
	if(memberId.equals("admin")) {
    	response.sendRedirect("../admin/admin.jsp");
    }else{
        // ���ǿ� ���� ���̵� ����
        session.setAttribute("LOGIN", memberId);
        response.sendRedirect("../index/index.jsp");
    }
}
else{%>
<script>
confirm("�α��ο� �����Ͽ����ϴ�.");
history.go(-1);
</script>
<%
/*
if(getUser == null) // ���̵� Ʋ�����
{
    msg = "login.jsp?msg=-1";
}
else    // ��й�ȣ�� Ʋ�����
{
    msg = "login.jsp?msg=0";
}

// sendRedirect(String URL) : �ش� URL�� �̵�
// URL�ڿ� get��� ó�� �����͸� ���ް���
response.sendRedirect(msg);
*/        

//��� �����Ǹ� �ؿ� ������ ��
/* String msg = "";
session.setAttribute("sessionID", id);
msg = "../index/index.jsp";
response.sendRedirect(msg); */
}%>
</body>
</html>