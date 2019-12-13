<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="my.dao.*,my.model.*,java.sql.*,java.util.*,my.util.*" %>    
 --%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="../../css/admin.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
<script>
    function idDelete(delID){
               location.href = "delete.jsp?id=" + delID;                  
    }
    function searchCheck(frm){
        if(frm.keyWord.value ==""){
            alert("검색 단어를 입력하세요.");
            frm.keyWord.focus();
            return;
        }
        frm.submit();      
    }
</script>
</head>
<body>
<div id="wrap">
	<jsp:include page="adminHeader.jsp" flush="true"></jsp:include>
        <!-- 가운데 부분 -->
        <div class="box2">
        	<jsp:include page="adminMid.jsp" flush="true"></jsp:include>
        	
        	<div class="in_2box3">
            	<%  
					String pageNumberStr = request.getParameter("page");
					int pageNumber = 1;
					if (pageNumberStr != null) {
						pageNumber = Integer.parseInt(pageNumberStr);
					}
				
				    request.setCharacterEncoding("UTF-8");
				    String keyField = request.getParameter("keyField");
				    String keyWord = request.getParameter("keyWord");    
				    /* Connection conn = ConnectionProvider.getConnection();
				    List<Movie> list = null;
				    MovieListView view = null;
				    try {
				    	MovieDao dao = new MovieDao();
				    	//list = dao.selectLike(conn, keyField, keyWord);
				    	view = dao.getMovieList(conn, pageNumber);
				    }catch(SQLException e){} */       
			    %>
			   <c:set var="list" value="<%-- <%=view.getMovieList() %> --%>"/>
			   
   
			    <table class="type02">
			        <tr>
			        <th>아이디</th><th>타이틀</th><th>제작사</th><th>내용</th><th>포스터</th>
			        </tr>
			    <c:forEach var="movie" items="${list}">       
			        <tr>
			            <td>${movie.movieId}</td>
			            <td>${movie.title}</td>
			            <td>${movie.maker}</td>
			            <td>${movie.memo}</td>
			            <td><img src="/1111/movies/${movie.poster}" width="30" height="40"></td>
			 		</tr>              
			    </c:forEach>
     
			     <tr>  
			        <td colspan="7"> <br/>
			            <form name="search" method ="post">
			            <select name="keyField">
			                <option value="0"> ----선택----</option>
			                <option value="movieId">아이디</option>
			                <option value="title">제목</option>
			                <option value="maker">제작사</option> 
			                <option value="memo">내용</option>                
			            </select>
			            <input type="text" name="keyWord" />
				  			<input type="button" value="검색" onclick="searchCheck(form)" />
				        </form>
				    </td>      
				 </tr>
     
     
			     <tr>
			     <%-- <%  	for (int i = 1 ; i <= view.getPageTotalCount() ; i++) { %>
							 <a href="movieSelect.jsp?page=<%= i %>">[<%= i %>]</a>
				 <%  	} %> --%>
			     </tr>
			    </table>  
            	
        	</div>
            	<jsp:include page="adminBottom.jsp" flush="true"></jsp:include>
        </div>

</div>
</body>
</html>
