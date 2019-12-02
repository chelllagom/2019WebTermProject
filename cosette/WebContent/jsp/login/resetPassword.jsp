<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="my.model.*,my.dao.*,java.sql.*,java.util.*,my.util.*" %>  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/login.css" rel="stylesheet" type="text/css" />
<style>
table.type03 {
    text-align: left;
    line-height: 1.5;
    border-left: 3px solid #369;
  	margin : 20px 10px;
  	font-size : 1.3em;
}
table.type03 th {
    width: 147px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
}
table.type03 td {
    width: 349px;
    padding: 10px;
    vertical-align: top;
    color: #555;
}
</style>

<script>
//비밀번호 미 입력시
function check(){
	var form = document.form1;
	var password = document.getElementById('password').value.trim();
	if(password.length ==0){
		alert("새 비밀번호를 입력해주세요");
	}else{
		form.submit();
	}
	
}
/* //한 번 더 묻기
function subCheck(){
	var form = document.form1;
	if (confirm("비밀번호를 변경하시겠습니까?") == true){
	    form.submit();
	}	else{
		}
} */

function validatePassword() {
	var password = document.getElementById('password').value.trim();
	var alertEl = document.getElementById('password_alert');
	
// 비밀번호 입력 여부 검증
if (password.length == 0) {
	alertEl.innerHTML = '필수 정보입니다.';
	alertEl.style.display = 'block';
	
	return false;
}

// 비밀번호 길이 검증
if (password.length < 5) {
	alertEl.innerHTML = '비밀번호는 5글자 이상 입력해주세요.';
	alertEl.style.display = 'block';
	alertEl.style.color ="red";
	
	return false;
}

// 비밀번호 대소문자, 숫자 입력 검증
if (!/^[A-Za-z0-9!?#$%]*$/.test(password)) {
	alertEl.innerHTML = '비밀번호는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
	alertEl.style.display = 'block';
	alertEl.style.color ="red";
	
	return false;
}
	alertEl.style.display = 'none';
}
function validatePassword2() 
{
	var password = document.getElementById('password').value.trim();
	var password2 = document.getElementById('password2').value.trim();
	var alertEl = document.getElementById('password2_alert');

	
// 비밀번호 길이 검증
if (password2.length < 5) {
	alertEl.innerHTML = '비밀번호는 5글자 이상 입력해주세요.';
	alertEl.style.display = 'block';
	alertEl.style.color ="red";
	
	return false;
}

// 비밀번호 대소문자, 숫자 입력 검증
if (!/^[A-Za-z0-9!?#$%]*$/.test(password2)) {
	alertEl.innerHTML = '비밀번호는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
	alertEl.style.display = 'block';
	alertEl.style.color ="red";
	
	return false;
}


// 비밀번호, 비밀번호 확인 검증
if (password != password2) {
	alertEl.innerHTML = '비밀번호가 일치하지 않습니다.';
	alertEl.style.display = 'block';
	alertEl.style.color ="red";
	
	return false;
}

alertEl.style.display = 'none';
}
</script>
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
%>
<div id="wrap">
	<jsp:include page="../form/header.jsp" flush="true"></jsp:include>
	
	
	<div id="reset_password_wrap">
		<div class="container">
		<form action="findPassword.jsp" method="post" name="form1">
		<p class="title">S E A R C H &nbsp;&nbsp; P A S S W O R D</p>
		<br>
		<p class="p">비밀번호 재설정</p>
		
		<br><br>
		<table class="type03" border="1" cellpadding="3" cellspacing="0">
		 
        <tr>
        <th bgcolor="#eeeeee" scope="row">아이디</th>
			<td><%= id %></td>
		</tr>
        
        <tr>
          <th bgcolor="#eeeeee" scope="row">새 비밀번호</th>
          <td>
          <span>
               <input type="password" name="password" id="password" class="input-text" placeholder="새 비밀번호" maxlength="20" onfocusout="validatePassword()"/>
    	  </span>      
    	  <div id="password_alert" class="alert"> 공백없이 8~15자의 영문/숫자</div>
         </td>
        </tr>
        <tr>
          <th bgcolor="#eeeeee" scope="row">새 비밀번호 확인</th>
          <td>
            <span>
            <input type="password" name="password2" id="password2" class="input-text" placeholder="새 비밀번호 확인" maxlength="20" onfocusout="validatePassword2()"/>
            </span>
          </td>
        </tr>
        </table>
		<div class="button-area" style="margin-left: 5px;">
			<input type="button" class="button01" onclick="check();" value="비밀번호 변경"> 
		</div>
		</form>
		<div class="button-area" style="margin-left: 20px;">
			<a href="../index/index.jsp" class="button01">취소</a>
		</div>
		
		
		</div>
		
		
	</div>
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>
</div>
</body>
</html>