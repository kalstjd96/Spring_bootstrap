<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>회원 등록 및 가입창 </title>
    <link rel ="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
<link rel ="stylesheet" type="text/css" href="resources/css/bootstrap.theme.min.css">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script src="resources/js/bootstrap.min.js"></script>


  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
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
	<h2>글 작성 </h2>
	
	<a href="addrbook_list.do" class="btn btn-info">회원목록</a><P>
	
	<form name="form1" method="post" action="addrbook_insert.do">
	<table class="table table-hover">
		
		<tr>
			<th>제목:</th>
			<td><input type="text" name="ab_name" maxlength="50" class="form_control"></td> <br>
			</tr>
			
			
			<tr>
			<th>이메일</th>
			<td><input type="email" name="ab_email" maxlength="50" class="form_control"></td>
			</tr>

			<tr>
			<th>메모</th>
				<td><textarea name="ab_memo" cols="40" rows="8" ></textarea>
				</td>
			</tr>

	
		<tr>
			
			<td colspan=2 align=center> <button type="submit" class="btn btn-info btn-block" ><span class="glyphicon glyphicon-ok"></span>작성하기 </button>
						</td>
			
			<td colspan=2 align=center> <a type="reset"  class="btn btn-info"><span class="glyphicon glyphicon-ok"></span>취소 </a>					
						</td>
			
		</tr>
		
	</table>
	</form>


</div>

</body>
</html>
