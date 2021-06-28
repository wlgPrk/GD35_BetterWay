<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유실물조회</title>
<style type="text/css">
* { 
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  height: 100%;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 0;
  height: 100%;
}

/* Style the header */
header {
  height: 75px;
  padding: 1rem;
  color: white;
  background: #023459;
  font-weight: bold;
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: relative;
  z-index: 100;
}
.main{
	color:white;
	text-decoration : none;
	font-size: 30px;
}
	ul li{
		list-style: none;
	}
	a {
		text-decoration: none;
		color:#333;
	}

	#menu {
		font:bold 16px "malgun gothic";
		width:720px;
		height:50px;
		background: #fff	;
		color:black;
		line-height: 50px; 
		text-align: center;
	}


	#menu > ul > li {
		float:left;
		width:180px;
		position:relative;
	}
	#menu > ul > li > ul {
		width:180px;
		display:none;
		position: absolute;
		font-size:14px;
		background: #fff;
	}
	#menu > ul > li:hover > ul { /* li가 hover 상태일때 ul의 display를 block으로 지정  */
		display:block; 
	}
	#menu > ul > li > ul > li:hover {
		background: #B2A59F;
		transition: ease 1s;
		}

article {
	min-height: 100%;
	width: 1440px;
	margin: 0 auto;
	background-color: white;
}
#left-box {
	width: 360px;
	height: 100%;
	display: inline-block;
	vertical-align: top;
}
#side-box1 {
	height: 216px;
	background-color: #82B2DA;
	color: white;
	font-size: 30pt;
	font-weight: bold;
	text-align: center;
	line-height: 200px;
}
#side-box2, #side-box3 {
	height: 100px;
    border-bottom: 1px solid #82B2DA;
    text-align: center;
    font-size: 20pt;
    font-weight: bold;
    line-height: 96px;
}
#right-box {
	width: 1080px;
	height: 100%;
	display: inline-block;
	vertical-align: top;
}
#main-box1 {
	height: 216px;
	background-color: silver;
	background-image: url("resources/images/handle.png");
	backdrop-filter: blur(5px);	
	padding-top: 160px;
}
#site-route {
	font-size: 20pt;
	background:rgba(52, 75, 22, 0.63);
    color: #fff;
    text-align: right;	
}
#main-title {
	height: 50px;
    margin-bottom: 10px;
    text-align: center;
    font-size: 30pt;
    line-height: 64px;
}
#main-caution {
	height: 100px;
    border: 1px solid #ddd;
    margin-bottom: 10px;
    font-size: 11pt;
    text-align: center;
}
#main-caution > div { 
	display: table;
	width: 100%;
	height: 100%;
}
#main-caution p { 
	display: table-cell;
	vertical-align: middle;
	margin: 0 auto;
}
#main-caution img {
	width: 17px;
}
#main-lost-box {
	height: 200px;
	font-size: 20pt;
	text-align: center;
	color: white;
}
#main-lost-box > div {
	width: 465px;
	height: 100%;
	margin: 0 auto;
	background-color: #3de3c7;
}
#main-lost-box .theme, input {
	height: 50%;
	line-height: 102px;
}
#main-lost-box input {
	width: 130px;
	height: 50px;
	border: 1px solid white;
	color: white;
	background-color:  #3de3c7;
	line-height: 53px;
	font-size: 12pt;
	cursor: pointer;
	box-shadow: 1px 2px 3px grey;
}

/* 이건 메인안에 컨텐츠 크기 고정해주고 게속 브라우저 x축 줄였다 늘렸다 반복해도  메인안컨텐츠가 계속 중앙에오게하는 역할*/
.pix {
	width: 900px;
	margin: 0px auto;
}

/* 제목 이미지 */
.titleImg{
display:inline-block;
background: url("resources/images/lost.png");
background-size: 40px;
width : 40px;
height : 40px;
}

/*부제목정렬*/
.title{
text-align: left;
}

.footer{
background-color: #023459;
width :100%;
height : 100px;
margin-top:20px;
}
</style>
</head>
<body>
<header>
  <a class="main" href="menu.html">BetterWay</a>
<div id="menu">
	<ul>
		<li><a href="#">교통안내</a>
			<ul>
				<li><a href="zoom.html">사이버스테이션</a></li>
				<li><a href="#">실시간 열차정보</a></li>
				<li><a href="#">역주변 버스정류장 연계</a></li>
				<li><a href="#">역 내외 시설</a></li>
			</ul>
		</li>
		<li><a href="#">환경정보안내</a>
			<ul>
				<li><a href="javascript:popup();">실내 공기질 정보 제공</a></li>
				<li><a href="conditionInfo.html">차량 별 냉방상태</a></li>
			</ul>
		</li>
		<li><a href="#">지하철 뉴스</a>
			
		</li>
		<li><a href="#">고객의 소리</a>
			<ul>
				<li><a href="#">유실물 조회</a></li>
				<li><a href="#">건의 게시판</a></li>
			</ul>
		</li>
	</ul>
</div>
</header>
<article>
	<div id="left-box">
		<div id="side-box1">
			<span>고객의소리</span>
		</div>
		<div id="side-box2">
			<span>유실물 조회</span>
		</div>
		<div id="side-box3">
			<span>건의 게시판</span>
		</div>
	</div>
	<div id="right-box">
		<div id="main-box1">
			<div id="site-route">홈>고객의소리>유실물조회</div>
		</div>
		
		
		<div id="main-title">
		
		<div class="pix">
			<div class="title"><div class="titleImg"></div>유실물 조회</div>
	
		<div id="main-caution">
			<div><p><img alt="경고표시" src="resources/images/warning.png"/>경찰청 홈페이지를 통해 유실물을 조회하실 수 있습니다.</p></div>
		</div>
		<div id="main-lost-box">
			<div>
				<div class="theme">경찰청 유실물 종합포털</div>
				<div class="theme"><a href="https://www.lost112.go.kr/" target="_blank"><input type="button" value="바로가기"/></a></div>
			</div>
		</div>
			</div><!-- pix end -->
		</div>
	</div>
</article>

<div class="footer"></div>
</body>
</html>