<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<script language="javascript">
	// 자바 스크립트 시작

	function writeCheck(form) {
		
		if (!form.title.value.trim()) {
			alert("제목을 적어주세요");
			form.title.focus();
			return;
		}

		if (!form.contents.value.trim()) {
			alert("내용을 적어주세요");
			form.contents.focus();
			return;
		}

		form.submit();
	}
</script>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int productId = Integer.parseInt(request.getParameter("productId"));
%>
	<table style="margin-left: auto; margin-right: auto;">
		<form name=writeform method=post action="write_ok.jsp?productId=<%=productId%>">
			<tr>
				<td>
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr
							style="background: url('img/table_mid.gif') repeat-x; text-align: center;">
							<td width="5"><img src="img/table_left.gif" width="5"
								height="30" /></td>
							<td>글쓰기</td>
							<td width="5"><img src="img/table_right.gif" width="5"
								height="30" /></td>
						</tr>
					</table>
					<table>
						<tr>
							<td>&nbsp;</td>
							<td align="center">제목</td>
							<td><input name="title" size="50" maxlength="100"></td>
							<td>&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4"></td>
						</tr>
						
						<tr>
							<td>&nbsp;</td>
							<td align="center">내용</td>
							<td><textarea name="contents" cols="50" rows="13"></textarea></td>
							<td>&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4"></td>
						</tr>
						<tr height="1" bgcolor="#82B5DF">
							<td colspan="4"></td>
						</tr>
						<tr align="center">
							<td>&nbsp;</td>
							<td colspan="2"><input type=button value="등록" OnClick="javascript:writeCheck(form);">
							<input type=button value="취소" OnClick="javascript:history.back(-1)">
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</form>
	</table>
</body>
</body>
</html>