<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pw = request.getParameter("password");
	if(id.equals("admin")) {
    	response.sendRedirect("../admin/admin.jsp");
    }else{
    	// DB���� ���̵�, ��й�ȣ Ȯ�� ->���� �������ּ���!!!
        /* MemberDAO dao = MemberDAO.getInstance();
        int check = dao.loginCheck(id, pw); */
        
        // URL �� �α��ΰ��� ���� �޽���
       /*  String msg = "";
        
        if(check == 1)    // �α��� ����
        { 
            // ���ǿ� ���� ���̵� ����
            session.setAttribute("sessionID", id);
            msg = "../index/index.jsp";
        }
        else if(check == 0) // ��й�ȣ�� Ʋ�����
        {
            msg = "login.jsp?msg=0";
        }
        else    // ���̵� Ʋ�����
        {
            msg = "login.jsp?msg=-1";
        }
         
        // sendRedirect(String URL) : �ش� URL�� �̵�
        // URL�ڿ� get��� ó�� �����͸� ���ް���
        response.sendRedirect(msg); */
        
        
        //��� �����Ǹ� �ؿ� ������ ��
        String msg = "";
    	session.setAttribute("sessionID", id);
        msg = "../index/index.jsp";
        response.sendRedirect(msg);
    }
%>
</body>
</html>