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

</head>
<body>
<div id="wrap">
	<div class="header_name">
      <div class="header_name_img">
      	<a href="../index/index.jsp">
      	<img src="../../images/new_headername.PNG" 
      		onerror="javascript:this.src='../../images/new_headername.png'" width="294" height="44" /></a>
      </div>
    </div>
    
    
		<!-- 왼쪽 메뉴바 부분 -->    
        <div class="box1">
            <div class="in_1box1">
            	<img src="../../images/user.PNG" onerror="javascript:this.src='../../images/user.png'"/>
            </div>
            <div class="in_1box2">
                <div class="name">
                    <strong>admin</strong>
                </div>
            </div>
            <div class="in_1box3" style="margin-top: 100px;">
	            <nav>
			        <ul>
			            <li class="menu"><a>상품 관리</a>
			            	<ul class="hide">
			                    <li><a>상품 등록</a></li>
			                    <li><a>상품 수정</a></li>
			                    <li><a>상품 삭제</a></li>
			                </ul>
			            </li>
			            <li class="menu"><a>판매 관리</a>
			            	<ul class="hide">
			                    <li><a>주문 조회</a></li>
			                    <li><a>반품 관리</a></li>
			                    <li><a>교환 관리</a></li>
			                </ul>
			            </li>
			            <li class="menu"><a>회원 관리</a>
			                <ul class="hide">
			                    <li><a>문의 관리</a></li>
			                    <li><a>회원 조회</a></li>
			                    <li><a>회원 수정</a></li>
			                </ul>
			            </li>
			        </ul>
			    </nav>
            </div>
        </div>
        
        
        

</div>
</body>
</html>
