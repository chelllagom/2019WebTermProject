<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<div id="wrap">
	<jsp:include page="adminHeader.jsp" flush="false"></jsp:include>
        <!-- 가운데 부분 -->
        <div class="box2">
        	<jsp:include page="adminMid.jsp" flush="false"></jsp:include>
        	
        	<!-- 차트그리고 싶어요ㅠㅠ  욕심인가요? ^^-->
        	<div class="in_2box3">
            	<jsp:include page="chart.jsp" flush="false"></jsp:include>
        	</div>
            	<jsp:include page="adminBottom.jsp" flush="false"></jsp:include>
        </div>

</div>
</body>
</html>