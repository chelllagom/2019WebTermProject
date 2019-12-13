<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="../../css/admin.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"></script>
</head>
<body>
<%  
	//String uploadPath = request.getRealPath("/1111/movies"); 
	String uploadPath = "D:\\4학년2학기\\웹플응용텀프\\test\\WebContent\\images";
    int maxSize =1024 *1024 *10; 
    String name ="";
    String maker ="";
    int price = 0;
    int discount = 0;
    String origin ="";
    String thumbnailimg ="";
    String detailimg ="";
    String category ="";
    String memo ="";
    Connection conn = ConnectionProvider.getConnection();
    try{        
    	MultipartRequest multi = new MultipartRequest(request,uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());         
    	name = multi.getParameter("name");
        maker = multi.getParameter("maker");
        memo = multi.getParameter("memo");
        price = Integer.parseInt(multi.getParameter("price"));
        discount = Integer.parseInt(multi.getParameter("discount"));
        origin = multi.getParameter("origin");
        thumbnailimg = multi.getFilesystemName("thumbnailimg");
        detailimg = multi.getFilesystemName("detailimg");
        category = multi.getParameter("category");
        memo = multi.getParameter("memo");
        Product product = new Product(name, maker, price, discount, origin, thumbnailimg, detailimg, 0, category, memo);
        ProductDao dao = new ProductDao();
        dao.insert(conn, product);
        
    } catch (Exception e) {}   
%>
<script>
	alert('<%=name%> '+'상품이 등록되었습니다. ');
	history.go(-1);
</script>   
</body>
</html>
