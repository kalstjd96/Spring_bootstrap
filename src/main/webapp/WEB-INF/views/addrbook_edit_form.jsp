<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="../js/script.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript"
	src="http://t1.daumcdn.net/cssjs/postcode/1522037570977/180326.js"></script>

<html>
<head>
<title>글 수정  화면</title>

<link rel ="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
<link rel ="stylesheet" type="text/css" href="resources/css/bootstrap.theme.min.css">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script src="resources/js/bootstrap.min.js"></script>


<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script src="resources/js/bootstrap.min.js"></script>


<style>
.navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
    
    </style>
</head>
<body>
<div class="jumbotron">
  <div class="container text-center">
    <h1>통합 인터페이스</h1>      
    <p>20152518_김민성</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">JangAn</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/addrbook">Home</a></li>
        <li><a href="/addrbook/addrbook_list.do">공지사항</a></li>
        <li><a href="/addrbook/addrbook_find.do">학교소개</a></li>
      	<li><a href="/addrbook/addrbook_history.do">문의사항</a></li>
      	
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/addrbook/addrbook_login.do"><span class="glyphicon glyphicon-user"></span>login</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>join</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
		<form name="form1" method="post" action="addrbook_update.do">
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
					<td colspan=2 align="center"> 
					<input type="submit" value="수정" class="btn btn-info">
					 <input type="reset" value="취소" class= "btn btn-danger">
					 <input type="button" value="글삭제" class="btn btn-warning" 
					onclick="document.form1.action='addrbook_delete.do'; document.form1.submit();">
					 </td>
					 </tr>		
							</table>
			 
		</form>
		</div>
		
</body>
</html>