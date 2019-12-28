<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
    
    <!-- -->
    
    
    
    
    <!-- -->
    
    @import url(https://fonts.googleapis.com/css?family=Titillium+Web:400,600,700,300);
html {
  box-sizing: border-box;
}

*,
*:before,
*:after {
  box-sizing: inherit;
}

::-webkit-input-placeholder {
  color: #e4e4e4;
}

body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
  background-image:url('resources/img/333.jpg');
  font-family: "PT Sans Narrow", sans-serif;
}

.wrapper {
  margin: 40px auto;
  width: 1000px;
}

h1 {
  margin: 10px;
  color: #3b5bdb;
}

.grid-wrapper {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-rows: 1fr 1fr 1fr;
}

.grid {
  height: 200px;
  border-color: #3b5bdb;
  background-color: #fff;
  border: 2px solid #748ffc;
  padding: 5px;
  margin: 10px;
  border-radius: 10px;
  position: relative;
}
.grid:hover .grid-overlay {
  transform: translate(0, 0);
  opacity: 1;
  visibility: visible;
}
.grid:hover .grid-overlay .overlay-header {
  transform: translate(0, 0);
  opacity: 1;
  visibility: visible;
}
.grid:hover .grid-overlay .overlay-header:before {
  transform: translate(0, 0);
  opacity: 1;
  visibility: visible;
}

.grid-header {
  height: 90%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: flex-end;
  font-size: 30px;
}
.grid-header:hover {
  cursor: pointer;
}
.grid-header .icon {
  color: #333;
  font-size: 50px;
}
.grid-header .label {
  color: #3b5bdb;
  margin-top: 10px;
}

.grid-overlay {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-color: rgba(59, 91, 219, 0.95);
  overflow: hidden;
  cursor: pointer;
  border-radius: 10px;
  border: 2px solid transparent;
  transform: translate(-10%, 0);
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.5s ease-in-out, transform 0.7s ease-in-out;
}

.overlay-content-wrapper {
  width: 100%;
  height: 100%;
  padding: 20px;
  color: #dbbb3b;
}
.overlay-content-wrapper .overlay-header {
  font-size: 25px;
  margin-bottom: 25px;
  position: relative;
  transform: translatex(-70px);
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.5s ease-in-out 0.4s, transform 0.7s ease-in-out 0.4s;
}
.overlay-content-wrapper .overlay-header:before {
  content: "";
  position: absolute;
  bottom: -10px;
  width: 40px;
  height: 3px;
  background-color: #dbbb3b;
  transform: translatey(20px);
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.3s ease-in-out 0.8s, transform 0.2s ease-in-out 0.7s;
}

.user-grid {
  border: 0;
}
.user-grid .label {
  color: #222;
  font-size: 22px;
}

.overlay-label {
  font-size: 14px;
  line-height: 1.3;
  word-spacing: 2px;
}

.ajduke {
  text-align: center;
  font-weight: 600;
  margin-top: 30px;
}
.ajduke .fa-heart {
  color: tomato;
  padding: 0 5px;
}
.ajduke a {
  text-decoration: none;
  border-bottom: 1px dotted;
}
.ajduke a:hover, .ajduke a:visited, .ajduke a.active {
  color: inherit;
}


  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
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
        <li class="active"><a href="#">Home</a></li>
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
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">1</div>
        <div class="panel-body"><img src="resources/img/121.jpeg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">기숙사 건물입니다.</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">2</div>
        <div class="panel-body"><img src="resources/img/111.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">유리관 건물입니다.</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">3</div>
        <div class="panel-body"><img src="resources/img/222.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">산입니다.</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
 <div class="wrapper">
  <h1>학교 건물소개</h1>
  <div class="inner-container">
    <div class="grid-wrapper">
    
    
      <div class="grid">
        <div class="grid-header">
          <div class="icon">
            <i class="fa fa-bluetooth" aria-hidden="true"></i>
		<span class="glyphicon glyphicon-home"></span>
          </div>
          <div class="label">
           유리관
          </div>
        </div>
        <div class="grid-overlay">
          <div class="overlay-content-wrapper">

            <div class="overlay-header">
             유리관 설명
            </div>
            <div class="overlay-label">
            가장 유리가 많은 건물입니다.
                 도서관이 있습니다.
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="grid">
        <div class="grid-header">
          <div class="icon">
            <i class="fa fa-wifi" aria-hidden="true"></i>
			<span class="glyphicon glyphicon-list-alt"></span>
          
          </div>
          
          <div class="label">
            정보통신관
          </div>
        </div>
        <div class="grid-overlay">
          <div class="overlay-content-wrapper">

            <div class="overlay-header">
              정보통신관 설명
            </div>
            <div class="overlay-label">
             컴퓨터가 제일 많이 있습니다.
                
            </div>
          </div>
        </div>
      </div>
      
      
      
      <div class="grid">
        <div class="grid-header">
          <div class="icon">
            <i class="fa fa-credit-card" aria-hidden="true"></i>
<span class="glyphicon glyphicon-italic"></span>
          </div>
          <div class="label">
            골프장
          </div>
        </div>
        <div class="grid-overlay">
          <div class="overlay-content-wrapper">

            <div class="overlay-header">
              골프장 설명
            </div>
            <div class="overlay-label">
              골프에 관심이 있는 사람들이 누릴 수 있는 장소
              </div>
          </div>
        </div>
        
      </div>

    </div>

  </div>
  
</div>
</div>


<footer class="container-fluid text-center">
    <button class="btn btn-info">개인정보 방침 </button>|<button class="btn btn-info">대학정보 </button>   
  <form class="form-inline"><br>
    <input type="email" class="form-control" size="50" placeholder="주요 사이트 검색">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
  
  
</footer>

</body>
</html>
