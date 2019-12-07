<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".menu>a").click(function(){
            var submenu = $(this).next("ul");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });
    });
</script>
<head>

<body>
   <%--  <%
    String id = (String)session.getAttribute("id");
    if(id.equals("admin")){
    %>
	관리자 페이지입니다.
    <%}else{ %>
	관리자 페이지로 잘못 오셨습니다.
    <% } %> --%>
	관리자 페이지입니다.
	
<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	


<div>
	<ul>
		<li class="menu">
			<a><img src="../../images/login.PNG" alt="상위메뉴이미지1"/></a>
			<ul class="hide">
				<li>메뉴1-1</li>
				<li>메뉴1-2</li>
				<li>메뉴1-3</li>
				<li>메뉴1-4</li>
				<li>메뉴1-5</li>
				<li>메뉴1-6</li>
			</ul>
		</li>
		
		<li class="menu">
			<a><img src="../../images/login.PNG" alt="상위메뉴이미지2"/></a>
			<ul class="hide">
				<li>메뉴2-1</li>
				<li>메뉴2-2</li>
				<li>메뉴2-3</li>
				<li>메뉴2-4</li>
				<li>메뉴2-5</li>
				<li>메뉴2-6</li>
			</ul>
		</li>
	</ul>
</div>

 


	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>