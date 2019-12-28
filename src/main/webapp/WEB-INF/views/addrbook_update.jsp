<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/script.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript"
	src="http://t1.daumcdn.net/cssjs/postcode/1522037570977/180326.js"></script>

<html>
<head>
<title>회원가입 화면</title>

</head>
<body>
<div id="container">
		
		<form method="form1" method=post action="addrbook_update.do">
		<input type="hidden" name="ab_id" value="${addrBookOne.ab_id}">
		
			<table class="table table-bordered table-striped">
				<tr>
					<td>제목</td>
					<td><input type="text" name="ab_name" value="${addrBookOne.ab_name}" class="form-control"></td>
					</tr>
					
				
				<tr>
					<td>이메일</td>
					<td><input type="text" name="ab_email" value="${addrBookOne.ab_email}" class="form-control"></td>
					</tr>
				
				
				<tr>
					<td>내용</td>
					<td><input type="text" name="ab_memo" value="${addrBookOne.ab_memo}" class="form-control"></td>
					</tr>
					
					
					<tr>
					<td colspan=2 align="center"> <input type="submit" value="수정" class="btn btn-info">
					 <input type="reset" value="취소" class= "btn btn-danger"></td>
					 </tr>		
							</table>
			 
		</form>
</body>
</html>