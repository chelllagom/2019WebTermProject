<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	String url = "jdbc:odbc:board2";
	String id = "";
	String pass = "";
	String password = null;
	int idx = Integer.parseInt(request.getParameter("idx"));
	String passw = request.getParameter("password");
	
	/* try{
				
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT PASSWORD FROM board1 WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		
		 if(rs.next()){
				password = rs.getString(1);
		 }
		 
		 if(password.equals(passw)) {
			   			
			sql = "DELETE FROM board1 WHERE NUM=" + idx;	
			stmt.executeUpdate(sql);	  */
%>
  			<script language=javascript>
   				self.window.alert("해당 글을 삭제하였습니다.");
   				location.href="list.jsp";
  			</script>

<%
	/*	rs.close();
		stmt.close();
		conn.close();
		
		  } else {  */
%>
			<script language=javascript>
			 self.window.alert("비밀번호를 틀렸습니다.");
				location.href="javascript:history.back()";
			</script>
<%		
		/*  }
 	} catch(SQLException e) {
		out.println( e.toString() );
	}  */
%>
</body>
</html>