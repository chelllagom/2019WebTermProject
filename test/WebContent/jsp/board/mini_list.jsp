<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>

</head>
<body>

<%--  <%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	String url = "jdbc:odbc:board2";
	String id = "";
	String password = "";
	int total = 0;
	
	try {
		Connection conn = DriverManager.getConnection(url,id,password); //DB연결
		Statement stmt = conn.createStatement(); // Statement타입의 객체생성

		String sqlCount = "SELECT COUNT(*) FROM board"; // DB내의 자료개수를 찾는 SQL문
		ResultSet rs = stmt.executeQuery(sqlCount); // DB실행
		
		if(rs.next()){ // rs.next()의 반환값은 true or false입니다. 찾는결과가 있으면 true
			total = rs.getInt(1);// SELECT문의 첫번째 필드 여기선 COUNT(*)
		}
		rs.close();
		out.print("총 게시물 : " + total + "개"); // 게시물수 출력
		
		// board 테이블에 있는 Num, UserName, title, time, hit의 값을 가져오되 Num을 기준으로 내림차순정렬
		String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT from board order by NUM DESC";
		rs = stmt.executeQuery(sqlList); // DB실행
		
%> --%>
<div class="table_wrap">
<table cellpadding="0" cellspacing="0" border="0" style="font-size: 1em;">
  <tr height="5"><td width="5"></td></tr>
 <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
   <td width="320">제목</td>
   <td width="60">작성자</td>
   <td width="60">처리여부</td>
 </tr>
  
<%-- <%
	if(total==0) {
%> --%>

	 	<tr align="center" bgcolor="#FFFFFF" height="30">
	 	   <td colspan="6">등록된 글이 없습니다.</td>
	 	  		</tr>

<%-- <%
	 	} else {
				while(rs.next()) {
					int idx = rs.getInt(1);
					String name = rs.getString(2);
					String title = rs.getString(3);
					String time = rs.getString(4);
					int hit = rs.getInt(5);
		
%> --%>

<tr height="25" align="center">
	<td>&nbsp;</td>
	<%-- 
	<td width="320">제목DB</td>
    <td width="60">작성자DB</td>
    <td><input type=button value="처리"></td> --%>
	<td>&nbsp;</td>
</tr>

<%-- <% 
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
}
%> --%>
 </table>
</div>
</body>
</html>