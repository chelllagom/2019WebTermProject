<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>인테리어소품 코제트</title>
<link href="qnadesign.css" rel="stylesheet" type="text/css">
</head>

<body>
  <div class="page_content">
        <div class="rightcon">
                <div class="tablestyle">
                  <form action="result.jsp" method="post" enctype="multipart/form-data" name="form1">
                    <table width="680" border="0" cellpadding="0" cellspacing="0" id="registerform">
                      <tr>
                        <th><label for="titlefield">* 영화 제목</label></th>
                        <td>
                        <input name="title" type="text" id="titlefield" size="70"></td>
                      </tr>
                      <tr>
                        <th><label for="namefield">* 제작사</label></th>
                        <td>
                        <input name="maker" type="text" id="namefield"></td>
                      </tr>
                      <tr>
                        <th><label for="memo">* 영화내용</label></th>
                        <td>
                        <textarea name="memo" cols="70" rows="10" id="memo"></textarea></td>
                      </tr>
                      <tr>
                        <th><label for="filefield">* 파일첨부</label></th>
                        <td><label for="filefield2"></label>
                        <input type="file" name="poster" id="filefield2"></td>
                      </tr>
                      <tr>
                        <td height="30" colspan="2" align="center" class="btnstyle">
                        <input type="submit"  id="mybtn" value="확인">
                        <input type="reset"  id="mybtn" value="취소"></td>
                      </tr>
                    </table>
                  </form>
                </div>
         </div>
    </div>


</body>
</html>
