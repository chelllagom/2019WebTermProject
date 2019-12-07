<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.id.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.id.focus();
                return false;
            }
            if(!inputForm.password.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.password.focus();
                return false;
            }
        }
</script>
</head>
<body>
<%
        request.setCharacterEncoding("UTF-8"); 
%>

<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	
	<div id="login_wrap">
		<div class="container">
		<p class="title">LOGIN</p>
		<br>
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
		
<% 
            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            // session_Login.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            {
                out.println("<br>");
                out.println("<font color='red' size='5'>비밀번호를 확인해 주세요.</font>");
            }
            else if(msg!=null && msg.equals("-1"))
            {    
                out.println("<br>");
                out.println("<font color='red' size='5'>아이디를 확인해 주세요.</font>");
            }
%>

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