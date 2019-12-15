<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script>
function writeCheck(){
	window.opener.location.href ="../mypage/cart.jsp" ;
	window.close();
}
</script>
<body>
<%
	String a=request.getParameter("id");
	String b=request.getParameter("count");
%>
<!-- 확인용으로 만들어봄 -->
<%-- 아이디:<%=a %> + 수량:<%=b %> --%>
<div>
<img src="../../images/cart.PNG" width="378" height="240" usemap="#cart" border="0" />
<map name="cart" id="cart">
  <area shape="rect" coords="48,141,217,204" OnClick="writeCheck();" />
  <area shape="rect" coords="226,141,333,205" OnClick="window.close();"/>
</map>
</div>
</body>
</html>