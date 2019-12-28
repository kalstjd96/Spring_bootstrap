<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %><%-- 
	
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList"/>	 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전체회원정보 보는 페이지</title>


<link rel ="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
<link rel ="stylesheet" type="text/css" href="resources/css/bootstrap.theme.min.css">
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
<script src="resources/js/bootstrap.min.js"></script>


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
    
    
.hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
       /* 애니메이션 지점 설정하기 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }
    
    
    .pagination {
    margin: 20px 0;
    overflow: hidden;
    position: relative;
}
.pagination li {
    float: left;
}
.pagination ul {
    float: left;
    left: 50%;
    position: relative;
}
.pagination ul > li {
    left: -50%;
    position: relative;
}
.pagination li a {
    transition: all 100ms ease-in-out 0s;
    background-color: #F7F7F8;
    border-radius: 5px 5px 5px 5px;
    color: #69696E;
    display: block;
    font: 12px/30px Arial, sans-serif;
    height: 30px;
    margin: 0 3px;
    overflow: hidden;
    position: relative;
    text-align: center;
    text-decoration: none;
    width: 30px;
}
.pagination li a:hover {
    background-color: #FF8C00;
    color: #FFFFFF;
}
.pagination li.active a {
    background-color: #FF8C00;
    color: #FFFFFF;
}
.pagination li.active a:hover {
    color: #FFFFFF;
}


    
  </style>


</head>
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

<h1>글 내용</h1>
	
	
	
	
	<center>
		 <br>
			<table width="500" cellspacing="0" cellpadding="0" align="center"
				class="listtable" border="0">
				
	
				<tr height="30" bgcolor="#daceb8" style="border: 2px solid #ffffff;">
					<td align="center" width="40" bgcolor="AC9A79">글번호</td>
					<td align="center" width="125" align="center">${addrBookOne.ab_id}</td>
					
					<td align="center" width="125">
					<a href="#"  class="btn btn-info"><span class="glyphicon glyphicon-thumbs-up"></span>좋아요</a></td>
					<td align="center" width="125">
					<a href="#"  class="btn btn-danger"><span class="glyphicon glyphicon-thumbs-down"></span>싫어요</a></td>
				</tr>
				
				<tr height="30">
					<td align="center" width="40" bgcolor="AC9A79">글제목</td>
					<td align="center" width="375" align="center" colspan="3">${addrBookOne.ab_name }</td>
				</tr>
				<tr>
					<td align="center" width="40" bgcolor="AC9A79"
						style="border-bottom: 2px solid #7c766b; border-right: none;">글내용</td>
					<td align="left" width="375" colspan="3"
						style="border-bottom: 2px solid #7c766b; border-left: none;"><pre
							id="ab.ab_id">${addrBookOne.ab_memo}</pre></td>

				</tr>
				
				<tr><td><br><br><br></td></tr>
				<tr height="30">
					<td colspan="4" align="right"
						>
					
					<a href="/addrbook/addrbook_list.do"  class="btn btn-info">글목록</a>
					</td>
				
					
					<td colspan="4" align="right"
						>
					
					<a href="addrbook_edit_form.do?ab_id=${addrBookOne.ab_id}"  class="btn btn-info">글수정</a>
					</td>
					
					</tr>
					
	
					
					
					<tr><td><br><br><br></td></tr>
				
				
			</table>
			
	</center>


</div>
	<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>  
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>
</body>
</html>