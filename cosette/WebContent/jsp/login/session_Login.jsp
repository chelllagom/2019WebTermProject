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
    	// DB에서 아이디, 비밀번호 확인 ->여기 변경해주세요!!!
        /* MemberDAO dao = MemberDAO.getInstance();
        int check = dao.loginCheck(id, pw); */
        
        // URL 및 로그인관련 전달 메시지
       /*  String msg = "";
        
        if(check == 1)    // 로그인 성공
        { 
            // 세션에 현재 아이디 세팅
            session.setAttribute("sessionID", id);
            msg = "../index/index.jsp";
        }
        else if(check == 0) // 비밀번호가 틀릴경우
        {
            msg = "login.jsp?msg=0";
        }
        else    // 아이디가 틀릴경우
        {
            msg = "login.jsp?msg=-1";
        }
         
        // sendRedirect(String URL) : 해당 URL로 이동
        // URL뒤에 get방식 처럼 데이터를 전달가능
        response.sendRedirect(msg); */
        
        
        //디비 구현되면 밑에 지워도 됨
        String msg = "";
    	session.setAttribute("sessionID", id);
        msg = "../index/index.jsp";
        response.sendRedirect(msg);
    }
%>
</body>
</html>