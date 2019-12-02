<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="../../css/item.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%request.setCharacterEncoding("utf-8"); %>
<%String title = request.getParameter("title"); %>

<div id="wrap">
<jsp:include page="../form/header.jsp" flush="true"></jsp:include>

  <div class="title_wrap">
  	<div class="title_wrap2">
  		<h1 style="font-size : 3em; color: #555;" class="title"><%=title%></h1>
  	</div>
  </div>
  
  <div class="item_wrap">
	<%for(int i =0; i<16; i++){ %>   <!-- 한 줄에 4개의 사진을 4줄 보여줘서 총 16개의 사진을 보여줄려고 합니다. 데베에 연결해서 값 받아주세여 -->
	<div class="item">
		<a href="../itempage/detail.jsp">	
  			<img src="../../images/vase/vase_sample.PNG" width="369" height="595"/>
  		</a>
	</div>
	<%} %>
  </div>
  


<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>
