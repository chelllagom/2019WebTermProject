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
	<jsp:include page="adminHeader.jsp" flush="true"></jsp:include>
        <!-- 가운데 부분 -->
        <div class="box2">
        	<jsp:include page="adminMid.jsp" flush="true"></jsp:include>
        	
        	<!-- 상품 등록 폼-->
        	<div class="in_2box3">
            	<div class="tablestyle">
          <form action="productResult.jsp" method="post" enctype="multipart/form-data" name="form1">
            <table border="0" cellpadding="0" cellspacing="0" id="registerform" class="type03">
              <tr>
                <th><label for="titlefield">* 상품이름</label></th>
                <td>
                <input name="name" type="text" id="titlefield" size="70"></td>
              </tr>
              <tr>
                <th><label for="namefield">* 제조사</label></th>
                <td>
                <input name="maker" type="text" id="namefield"></td>
              </tr>
              <tr>
                <th><label for="price">* 가격</label></th>
                <td>
                <input name="price" type="text" id="namefield" value="8000"></td>
              </tr>
                <tr>
                <th><label for="discount">* 할인율</label></th>
                <td>
                <input name="discount" type="text" id="namefield" value="0"></td>
              </tr>
              <tr>
                <th><label for="namefield">* 원산지</label></th>
                <td>
                <input name="origin" type="text" id="namefield"></td>
              </tr>
              <tr>
                <th><label for="filefield">* 썸네일이미지</label></th>
                <td><label for="filefield2"></label>
                <input type="file" name="thumbnailimg" id="filefield2"></td>
              </tr>
              <tr>
                <th><label for="filefield">* 디테일이미지</label></th>
                <td><label for="filefield2"></label>
                <input type="file" name="detailimg" id="filefield2"></td>
              </tr>
              <tr>
                <th><label for="namefield">* 카테고리</label></th>
                <td>
                <select name="category">
                	<option value="화병">화병
                	<option value="조화">조화
                	<option value="바구니">바구니
                	<option value="촛대">촛대
                	<option value="월데코">월데코
                	<option value="키친">키친
                	<option value="장식소품">장식소품
                	<option value="트레이">트레이
                	<option value="패브릭">패브릭
                </select>
                </td>
              </tr>
              <tr>
                <th style="height: 50px;"><label for="memo">* 상품설명</label></th>
                <td>
                <textarea name="memo" cols="70" rows="3" id="memo"></textarea></td>
              </tr>
              <tr>
                <td height="30" colspan="2" align="center" class="btnstyle">
                <input type="submit"  id="mybtn" value="확인">
                <input type="reset"  id="mybtn" value="취소"></td>
              </tr>
            </table>
          </form>
        </div>
        	</div>
            	<jsp:include page="adminBottom.jsp" flush="true"></jsp:include>
        </div>

</div>
</body>
</html>
