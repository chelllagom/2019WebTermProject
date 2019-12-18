<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="my.dao.*,my.util.*,my.model.*,java.util.*,java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인테리어소품 코제트</title>
<link href="../../css/mypage.css" rel="stylesheet" type="text/css"/>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function check(){
	var form = document.form1;
	var daddress = document.getElementById('daddress').value.trim();
	if(daddress.length ==0){
		alert("주소를 입력해주세요");
	}else{
		form.submit();
	}	
}
</script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('daddress').focus();
            }
        }).open();
    }
</script>
<script type="text/javascript">
	
function validatePhoneNum2() {
	var phoneNum2 = document.getElementById('phoneNum2').value.trim();
	var alertEl = document.getElementById('phoneNum2_alert');

	
	// 입력 여부 검증
	if (phoneNum2.length == 0) {
		alertEl.innerHTML = '필수 정보입니다.';
		alertEl.style.display = 'block';
		
		return false;

	}
	//  숫자 입력 검증
	if (!/^[A-Za-z!?#$%]*$/.test(phoneNum2)) {
		alertEl.innerHTML = '';
		alertEl.style.display = 'block';
		
		return false;
	}
	
	alertEl.style.display = 'none';
}

function validatePhoneNum3() {
	var phoneNum3 = document.getElementById('phoneNum3').value.trim();
	var alertEl = document.getElementById('phoneNum3_alert');

	
	// 입력 여부 검증
	if (phoneNum3.length == 0) {
		alertEl.innerHTML = '';
		alertEl.style.display = 'block';
		
		return false;

	}
	//  숫자 입력 검증
	if (!/^[A-Za-z!?#$%]*$/.test(phoneNum3)) {
		alertEl.innerHTML = '';
		alertEl.style.display = 'block';
		
		return false;
	}
	
	alertEl.style.display = 'none';
}

	
	
	
	
	
	
	
	function validateUserId() {
		var userId = document.getElementById('userId').value.trim();
		var alertEl = document.getElementById('userId_alert');
		
		// 입력 여부 검증
		if (userId.length == 0) {
			alertEl.innerHTML = '필수 정보입니다.';
			alertEl.style.display = 'block';
			
			return false;

		}
		
		// 길이 검증
		if (userId.length < 5) {
			alertEl.innerHTML = '아이디는 4글자 이상 입력해주세요.';
			alertEl.style.display = 'block';
			alertEl.style.color ="red";
			
			return false;
		}
		
		// 대소문자, 숫자 입력 검증
		if (!/^[A-Za-z0-9]*$/.test(userId)) {
			alertEl.innerHTML = '아이디는 영문 대문자,소문자, 숫자만 입력 가능합니다.';
			alertEl.style.display = 'block';
			alertEl.style.color ="red";
			
			return false;
		}
		
		alertEl.style.display = 'none';
	}
	
	
	
	
	
	
	
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

	
	
	
	
	function validateUserName() {
		var userName = document.getElementById('userName').value.trim();
		var alertEl = document.getElementById('userName_alert');
		
		// 입력 여부 검증
		if (userName.length == 0) {
			alertEl.innerHTML = '필수 정보입니다.';
			alertEl.style.display = 'block';
			
			return false;
		}
		
		alertEl.style.display = 'none';
	}
	
	
	
	
	function validateEmail1() {
		var email1 = document.getElementById('email1').value.trim();
		var alertEl = document.getElementById('email1_alert');

		
		// 입력 여부 검증
		if (email1.length == 0) {
			alertEl.innerHTML = '필수정보 입니다.';
			alertEl.style.display = 'inline';
			
			return false;

		}
	}	
		
		function validateEmail2() {
			var email2 = document.getElementById('email2').value.trim();
			var alertEl = document.getElementById('email2_alert');

			
			// 입력 여부 검증
			if (email2.length == 0) {
				alertEl.innerHTML = ' ';
				alertEl.style.display = 'inline';
				
				return false;

			}
		}
	
		
	
	
	function validateBirth() {
		var birthYear = document.getElementById('birth_year').value.trim();
		var birthDay = document.getElementById('birth_day').value.trim();
		var alertEl = document.getElementById('birth_alert');
		
		if (birthYear.length == 0) {
			alertEl.innerHTML = '태어난 년도 4자리를 입력해주세요.';
			alertEl.style.display = 'block';
			
			return false;
		}
		
		if (birthDay.length == 0) {
			alertEl.innerHTML = '태어난 일자를 입력해주세요.';
			alertEl.style.display = 'block';
			
			return false;
		}
		
		if (!/^[0-9]*$/.test(birthYear)) {
			birth_alert.innerHTML = '태어난 년도는 숫자만 입력 가능합니다.';
			birth_alert.style.display = 'block';
			
			return false;
		}
		
		if (!/^[0-9]*$/.test(birthDay)) {
			birth_alert.innerHTML = '태어난 일자는 숫자만 입력 가능합니다.';
			birth_alert.style.display = 'block';
			
			return false;
		}
		
		alertEl.style.display = 'none';
	}
	
	function hotinsert( param )
	{
		var input = document.getElementById('email2')
		input.value=param
	}
</script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
	String memberId = (String)session.getAttribute("LOGIN");
	Connection conn = ConnectionProvider.getConnection();
	Member member = null;
	try{
		MemberDao dao = new MemberDao();
		member = dao.selectById(conn, memberId);
	}catch(SQLException e){}
%>
<c:set var="member" value="<%=member %>"/>
<div id="wrap">
	<div class="header_bar">
	    <div class="header_logmenu">
		    <ul class="nav">	
				<%
					if(session.getAttribute("LOGIN") == null) // 로그인이 안되었을 때
		        		{
				%>
					<li><a href="../login/login.jsp"><span class="loginBotton">로그인</span></a></li>
				<%
						} else {
				%>
					<li><a href="../login/logout.jsp"><span class="loginBotton">로그아웃</span></a></li>
					<li style="padding-left: 10px;"><a href="mypage.jsp"><span class="loginBotton">마이페이지</span></a></li>
				<%
						}
				%>
			</ul>
	    </div>
	    <div class="searchbox">
	      <form action="../itempage/item.jsp" method="post" name="search">
	    	<input name="searchbox" type="text" 
	        style="background-color:transparent;border:0 solid black;width:200px;height:35px;font-size:15px;"/>
	      </form>
	    </div>
  	</div>
  	<div class="header_name">
      <div class="header_name_img">
      	<a href="../index/index.jsp">
      	<img src="../../images/new_headername.PNG" 
      		onerror="javascript:this.src='../../images/new_headername.png'" width="294" height="44" /></a>
    </div>
	</div>
	<br><br><hr>
	<di class="container1">
		<p class="title">MY PAGE</p>
  		<p class="mini_title">회원정보 수정</p>
		<br><br>
	</div>

<div class="total_box1">
	<div class="left_box">		
		<div class="button-area">
			<a href="mypage.jsp" class="button02">주문내역 조회</a>
		</div>
		<div class="button-area1">
			<a href="my_qna.jsp" class="button02">게시물 관리</a>
		</div>
	</div>

	<div class="right_box1">
	<form action="myinfo_modify_ok.jsp" method="post" name="form1">
			<table class="type03" border="1" cellpadding="3" cellspacing="0">
		 
        <tr>
        <th bgcolor="#eeeeee" scope="row">아이디<span class="list"> *</span></th>
			<td>
				<span>
					<input type="text" id="userId" name="userId" class="input-text" value="${member.memberId}" maxlength="20" onfocusout="validateUserId()"/>
				</span>
			</td>
		</tr>
        <tr>
          <th bgcolor="#eeeeee" scope="row">현재 비밀번호</th>
          <td>
          <span>
               <input type="password" name="password" id="password" class="input-text" value="${member.password}" maxlength="20" onfocusout="validatePassword()"/>
    	  </span>      
    	  <div id="password_alert" class="alert"> 공백없이 8~15자의 영문/숫자를 조합하여 입력해주세요.</div>
         </td>
        </tr>
        <tr>
          <th bgcolor="#eeeeee" scope="row">새 비밀번호</th>
          <td>
          <span>
               <input type="password" name="password" id="password" class="input-text" value="${member.password}" maxlength="20" onfocusout="validatePassword()"/>
    	  </span>      
    	  <div id="password_alert" class="alert"> 공백없이 8~15자의 영문/숫자를 조합하여 입력해주세요.</div>
         </td>
        </tr>
        <tr>
          <th bgcolor="#eeeeee" scope="row">새 비밀번호 확인 </th>
          <td>
            <span>
            <input type="password" name="password2" id="password2" class="input-text" value="${member.password}" maxlength="20" onfocusout="validatePassword2()" />
            </span>      
              <div id="password2_alert" class="alert"> 비밀번호 확인을 위해 다시 한 번 입력해주세요.</div>
          </td>
        </tr>
        
        
        
        
        
        <tr>
          <th bgcolor="#eeeeee" scope="row">이름 <span class="list">*</span></th>
          <td>
          	<span>
            	<input type="text" name="userName" id="userName" class="input-text" value="${member.name }" maxlength="20" onfocusout="validateUserName()"/>
           	</span>
        </td>
        </tr>
        
        <tr>
          <th width="122" height="46" bgcolor="#eeeeee" scope="row">휴대폰 번호</th>
          <td width="560">
              <input type="number" name="phoneNum1" id="phoneNum1" class="input-text" value="${member.tel1 }" maxlength="3" onfocusout="validatePhoneNum1()"/>
            -
            
            <span>
            <input type="number" name="phoneNum2" id="phoneNum2" class="input-text" value="${member.tel2 }" maxlength="4" onfocusout="validatePhoneNum2()" />
            </span>
            
            -
			 <span>
            <input type="number" name="phoneNum3" id="phoneNum3" class="input-text" value="${member.tel3 }" maxlength="4" onfocusout="validatePhoneNum3()" />		
			</span>
			
			<div id="phoneNum2_alert" class="alert"></div>
			<div id="phoneNum3_alert" class="alert"></div>
			
          </td>
        </tr>
        
        
        <tr>
          <th bgcolor="#eeeeee" scope="row">이메일</th>
          <td>
           <div>
            <input type="text" name="email1" id="email1" class="input-text" maxlength="20" onfocusout="validateEmail1()"/>
            @
            <input type="text" name="email2" id="email2" class="input-text" maxlength="20" onfocusout="validateEmail2()" />
           </div>
          </td>
        </tr>  
       
        <tr>
          <th bgcolor="#eeeeee" scope="row">주소*</th>
          <td>
            <p>
			  <input type="text" name="sample6_postcode" id="sample6_postcode" value="${member.address1 }"/>
			  <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/><br></br>
			  <input type="text" name="sample6_address" id="sample6_address" value="${member.address2 }"/>
              <input type="text" name="daddress" id="daddress" value="${member.address3 }" />
            </p>
          </td>
          </tr>
        
      </table>
      <div class="button-area3" style="margin-left: 450px;">
			<input type="button" class="button03" onclick="check()" value="수정하기"> 
		</div>
		</form>
	</div>
</div>
		<br><br>
		
		
		
		
	
	<jsp:include page="../form/footer.jsp" flush="true"></jsp:include>

</body>
</html>