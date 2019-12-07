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
<!-- 가운데 부분 -->
        	<div class="in_2box1">
            </div>
            
            <div class="in_2box2">
            	<div class="in_2box2_1">
            		<div class="in_2box2_2">
            			<img src="../../images/total_sales.PNG" onerror="javascript:this.src='../../images/total_sales.png'"/>
            		</div>
            	</div>
            	
            	<div class="in_2box2_3">
            		<div style= "text-align: center;">
            			<strong>총 매출 &nbsp<%-- <%=total_sales %> --%> 원</strong>    <!-- 이부분 디비 연결이요 -->
            		</div>
            	</div>
            </div>
            <div class="in_2box2">
            	<div class="in_2box2_1">
            		<div class="in_2box2_2">
            			<img src="../../images/shipping.PNG" onerror="javascript:this.src='../../images/shipping.png'"/>
            		</div>
            	</div>
            	
            	<div class="in_2box2_3">
            		<div style= "text-align: center;">
            			<strong>배송 준비 &nbsp <%-- <%=total_sales %> --%> 건</strong>    <!-- 이부분 디비 연결이요 -->
            		</div>
            	</div>
            </div>
            <div class="in_2box2">
            	<div class="in_2box2_1">
            		<div class="in_2box2_2">
            			<img src="../../images/return.PNG" onerror="javascript:this.src='../../images/return.png'"/>
            		</div>
            	</div>
            	
            	<div class="in_2box2_3">
            		<div style= "text-align: center;">
            			<strong>반품 요청  &nbsp <%-- <%=total_sales %> --%> 건</strong>    <!-- 이부분 디비 연결이요 -->
            		</div>
            	</div>
            </div>
            <div class="in_2box2">
            	<div class="in_2box2_1">
            		<div class="in_2box2_2">
            			<img src="../../images/profit.PNG" onerror="javascript:this.src='../../images/profit.png'"/>
            		</div>
            	</div>
            	
            	<div class="in_2box2_3">
            		<div style= "text-align: center;">
            			<strong>정산 금액  &nbsp <%-- <%=total_sales %> --%> 원</strong>    <!-- 이부분 디비 연결이요 -->
            		</div>
            	</div>
            </div>
</body>
</html>