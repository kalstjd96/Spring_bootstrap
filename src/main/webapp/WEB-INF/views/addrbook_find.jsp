<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
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
    
    @charset "utf8";

*,*:after,
*:before,html
	{box-sizing:border-box}

body,html{width:100%;height:100%}

body{
	margin:0;
	padding:0;
	font-size:16px;
	font-style:normal;
	font-weight:400;
	overflow:hidden;
	font-family:Tahoma,Geneva,sans-serif
	
	}

.container{
	min-width:100%;
	min-height:100%;
	display:block;
	position:relative
	
	}

.menu{
	width:40px;
	height:40px;
	display:block;
	position:relative
	}

.menu[tabindex]{outline:none}

.list,.intro{
	height:100%;
	top:0;
	z-index:-1;
	display:flex;
	position:fixed;
	align-items:center;
	flex-flow:column wrap;
	justify-content:center;
	transition:all .75s ease
	}

.list{
	background:#26d07c;
	width:20%;
	left:-20%;
	opacity:0
	}

.list span{
	background:#fff;
	margin:10px 0;
	padding:10px 16px;
	border-radius:4px
	}

.intro{
	background:#f5f5f1;
	width:100%;
	padding:0 16px;
	left:0;
	text-align:center
	}

.btn{
	background:#000;
	width:40px;
	height:40px;
	top:10px;
	left:10px;
	display:block;
	position:absolute;
	border-radius:50%
	}

.btn:before,
.btn:after{
	background:#fff;
	content:"";
	width:20px;
	height:2px;
	left:10px;
	display:block;
	position:absolute;
	transition:all .75s ease
	}
	
.btn:before{top:16px}
.btn:after{bottom:16px}

.menu:focus-within .list{left:0;opacity:1}
.menu:focus-within .intro{width:80%;left:20%}
.menu:focus-within .btn:before{transform:rotate(45deg) translate(2px,2px)}
.menu:focus-within .btn:after{transform:rotate(-45deg) translate(2px,-2px)}




  </style>
</head>
<body>


<div class="container-fluid">
  <div class="container">
	<div class="menu" tabindex="1">
		<div class="list">
    		<span>학교설립</span>
			<span>연혁</span>
			<span>설립자 소개</span>
		</div>
		<div class="intro">
			<div class="btn"></div>
			<h1>JangAn 
			<br>주소: 경기도 화성시 봉담읍 상리 1182
					</h1>
			<p>
			장안대학교는 대한민국 경기도 화성시에 있는 전문대학이다. 1989년 장안전문대학, <br>1998
			 장안대학으로 교명 변경하였으며 1991년 법인명이 서림학원으로 변경되었다. 2011년 장안대학교로 교명을 변경하였다.			
			</p>
			<p>
 

			1978년 12월: 장안실업전문대학 설립
1979년 3월: 개교
1982년 9월: 본관 준공
1984년 7월: 학생회관 준공
1985년 9월: 도서관 준공
1990년 3월: 장안전문대학으로 교명 변경
1991년 3월: 학교법인 서림학원 변경 인가
1991년 4월: 대학본부 겸 학술정보관 준공
1991년 5월: 장안전문대학으로 교명 변경
1998년 5월: 장안대학으로 교명 변경
2011년 11월: 장안대학교로 교명 변경
2012년: 교육과학기술부 선정 정부재정지원제한대학[2]
2014년: 교육부 선정 정부재정지원제한대학 및 경영부실대학[3]
2015년: 교육부 대학구조개혁평가 결과 D+등급[4]
2017년: 교육부 대학구조개혁평가 2차년도 이행점검 결과 재정지원제한 완전 해제[5]
2018년: 교육부 대학기본역량진단평가 결과 역량강화대학 선정 및 조건부 일반재정지원[6]
			</p>
			
			</div>
	</div>	
</div>


</div>
<a class="me" href="/addrbook/" target="blank_" data-toggle="tooltip" data-placement="right" title="main으로이동 tooltip이용">
	<span style="color:#000">메인으로 이동하기
    		</span>
</a>

</body>
</html>
