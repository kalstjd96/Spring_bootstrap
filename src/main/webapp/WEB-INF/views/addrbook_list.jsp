<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %> 
	
<jsp:useBean id="datas" scope="request" class="java.util.ArrayList"/>
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
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
     .jumbotron {
      margin-bottom: 0;
    }
   
     footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
    
.hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
    }
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
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



<form action="addrbook_list.do">
<table class="table table-hover">
<h1> 리스트</h1>
		<tr>
	<th width="100">글번호</th>
	<th width="100">제목</th>
	<th width="100">이메일</th>
	<th width="100">내용</th>
	</tr>
	
	<c:if test="${!empty addrBookList}">
	<c:forEach var="ab" items="${addrBookList }">
	
	
			<tr>
			 <td><a href="addrbook_main.do?ab_id=${ab.ab_id}">${ab.ab_id}</a> </td>
			<td> ${ab.ab_name}<span class="hit">공지!</span></td>
			<td> ${ab.ab_email}</td>
			<td> ${ab.ab_memo }</td>
			
			
			
			</tr>


			
			</c:forEach>
			</c:if>
			
			</table>
			
			<div class="col-lg-12" align="right">
			<a href="/addrbook/addrbook_join.do"  class="btn btn-info">글작성</a>
			</div>
			
			<div class="col-lg-12" align="center">
			<div class="pagination">
    <ul>
        <li>
            <ol>
                <li class="active"><a>1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
            </ol>
        </li>
         </ul>
</div>
</div>
			
	
	</form>
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