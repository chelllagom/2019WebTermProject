<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
        request.setCharacterEncoding("UTF-8"); 
%>
<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	
	<div id="mypage_wrap">
		<div class="container1">
		<p class="title">MY PAGE</p>
		<br>
		<div class="button-area" style="margin-left: 20px;">
			<a href="join.jsp" class="button02">주문 내역 조회</a>
		</div>
		<div class="button-area" style="margin-left: 20px;">
				<a href="join.jsp" class="button01">회원 정보 수정</a>
		</div>
		<div class="button-area" style="margin-left: 20px;">
				<a href="join.jsp" class="button01">회원가입</a>
		</div>
		<form name="loginInfo" action="session_Login.jsp" method="post" onsubmit="return checkValue()">
		<div class="form-area">
			<!-- ID, PWD -->
			<table>
				<tr>
					<td>
						<span>
							<input type="text" id="id" name="id" class="input-text" placeholder="아이디" maxlength="20">
						</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>
							<input type="password" id="password" name="password" class="input-text" placeholder="비밀번호" maxlength="20">
						</span>
					</td>
				</tr>
			</table>
		</div>
		<br><br>
		<div class="button-area" style="margin-left: 5px;">
			<input type="submit" class="button01" value="로그인"> 
		</div>
		</form>

		<div class="button-area" style="margin-left: 20px;">
			<a href="join.jsp" class="button01">회원가입</a>
		</div>
		
		</div>
		
		
	</div>
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>