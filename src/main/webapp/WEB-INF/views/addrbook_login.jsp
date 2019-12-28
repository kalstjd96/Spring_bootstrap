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
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
    
    
    
    
    
    
   <!-- -->
   
   // Resets & Defaults
:root {
  --c: currentColor;
  --bg: #000000;
}
* { margin: 0; }
html, body { height: 100%; }

// Style links
a:any-link {
  color: inherit;
  text-decoration: none;
}
a {
  padding: 2px;
  
  box-shadow: inset 0 -.125em 0 var(--u-color);
  
  transition-property: color, box-shadow;
  transition-duration: .2s;
  transition-timing-function: ease-in-out;
}

a:hover,
a:focus {
  color: var(--u-bg);
  box-shadow: inset 0 -1.25em 0 var(--u-color);
}

// Utilities
[class*="u-bg--"] { background-color: var(--u-bg); }
.u-bg--black { --u-bg: #161616; }
.u-bg--grey { --u-bg: #808080; }
.u-bg--white { --u-bg: #e6e6e6; }
.u-bg--green { --u-bg: #00a39b; }

[class*="u-color--"] { color: var(--u-color); }
.u-color--black { --u-color: #161616; }
.u-color--white { --u-color: #e6e6e6; }

.u-center { display: flex; justify-content: center; align-items: center; }
.u-container { max-width: 40rem; margin: 0 auto; }
.u-padding { padding: 1rem; }
.u-rounded { border-radius: 1rem; overflow: hidden; }
    
    
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>문의페이지</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="/addrbook/">Home</a></li>
        <li><a href="#section2">내 문의정보보기</a></li>
        
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>

    <div class="col-sm-9">
      <h4><small>문의</small></h4>
      <hr>
      
      <hr>
      <h2>문의시 유의사항</h2>
      <h5><span class="glyphicon glyphicon-user"></span> 관리자, 작성날짜,Sep 24, 2015.</h5>
      <h5><span class="label label-success">Lorem</span></h5><br>
      <p> <main class="u-bg--green u-color--black u-container u-rounded">
    <p class="u-padding">
      마우스를 갖다대면 색이 바뀌게 설정을 했습니다. <a href="https://www.jangan.ac.kr/jangan/index.do">JangAn page</a> 이 뒤에도 마찬가지  <a href="https://www.jangan.ac.kr/jangan/index.do">my page</a>.
    </p>
    
    <p class="u-bg--black u-color--white u-padding">자세한 문의에 대한 궁금증은  <a href="https://www.jangan.ac.kr/jangan/index.do">여기를 클릭해주세요</a>, 감사합니다.</p>
    
     </main> </p> <hr>

      <h4>문의하기:</h4>
      <form role="form">
        <div class="form-group">
          <textarea class="form-control" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-success">Submit</button>
      </form>
      <br><br>
      
      <p><span class="badge">2</span> Comments:</p><br>
      
      <div class="row">
        <div class="col-sm-2 text-center">
          <img src="resources/img/444.png" class="img-circle" height="65" width="65" alt="Avatar">
        </div>
        <div class="col-sm-10">
          <h4>문의글1 <small>Sep 29, 2015, 9:12 PM</small></h4>
          <p>문의 내용1</p>
          <br>
        </div>
        <div class="col-sm-2 text-center">
          <img src="resources/img/444.png" class="img-circle" height="65" width="65" alt="Avatar">
        </div>
        <div class="col-sm-10">
          <h4>문의글2 <small>Sep 25, 2015, 8:25 PM</small></h4>
          <p>문의내용2</p>
          <br>
          <p><span class="badge">1</span> 답변</p><br>
          <div class="row">
            <div class="col-sm-2 text-center">
          <img src="resources/img/444.png" class="img-circle" height="65" width="65" alt="Avatar">
        </div>
            <div class="col-xs-10">
              <h4>답글2<small>Sep 25, 2015, 8:28 PM</small></h4>
              <p>문의에 대한 답변글</p>
              <br>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid">
  <p>Footer Text</p>
</footer>

</body>
</html>
