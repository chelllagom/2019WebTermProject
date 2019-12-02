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

<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	
	<div id="login_wrap">
		<div class="container">
		<p class="title">LOGIN</p>
		<br>
		<form action="../index/index.jsp" method="post">
		<div class="form-area">
			<!-- ID, PWD -->
			<table>
				<tr>
					<td>
						<span>
							<input type="text" id="id" class="input-text" placeholder="아이디" maxlength="20">
						</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>
							<input type="password" id="password" class="input-text" placeholder="비밀번호" maxlength="20">
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
		<br><br><br><br><br><br>
		<ul class="area">
			<li style="margin-left: 5px;">
				<a href="searchId.jsp">아이디 찾기</a>
			</li>
			<li style="margin-left: -20px;">
				<a href="searchPassword.jsp">비밀번호 찾기</a>
			</li>
			
		</ul>
		</div>
		
		
	</div>
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>