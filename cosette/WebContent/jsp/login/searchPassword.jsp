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
	
	<div id="search_password_wrap">
		<div class="container">
		<p class="title">S E A R C H &nbsp;&nbsp; P A S S W O R D</p>
		<br>
		<form action="resetPassword.jsp" method="post">
		<div class="form-area">
			<!-- ID, PWD -->
			<table>
				<tr>
					<td>
						<span>
							<input type="text" id="name" class="input-text" placeholder="아이디를 입력해주세요" maxlength="20">
						</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>
							<input type="text" id="id" class="input-text" placeholder="이름을 입력해주세요" maxlength="20">
						</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>
							<input type="text" id="email" class="input-text" placeholder="이메일을 입력해주세요" maxlength="20">
						</span>
					</td>
				</tr>
			</table>
		</div>
		<br><br>
		<div class="button-area" style="margin-left: 160px;">
			<input type="submit" class="button01" value="SEARCH"> 
		</div>
		</form>
		</div>
		
		
	</div>
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>