<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
#sidebar {
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
	/*padding: 0px 15px;*/
	font-size: 14pt;
}
#main-box1 {
	height: 216px;
	background-image: url("./Img/handle.png");
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
    text-align: left;
    font-size: 30pt;
    line-height: 64px;
    font-weight: bold;
}
#main-caution {
	height: 100px;
    border: 1px solid #ddd;
    margin-bottom: 20px;
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

}
#main-caution img {
	width: 17px;
}
[alt="공지"], [alt="이미지"], [alt="이미지없음"] {
	width: 30px;
}
#main-table {
	height: 527px;
    margin-bottom: 10px;
}
#main-table table {
    border-collapse: collapse;
    width: 100%;
    text-align: center;
    margin-top: 20px;
    font-size: 10pt;
}
#main-table th{
	height: 37px;
	border-top : 2px solid #29367c;
	border-bottom : 1px solid #29367c;
	padding: 10px 0px;
}
#main-table td{
	height: 30px;
	border-top : 1px solid #eee;
	padding: 5px 0px; 
}
#table-last {
	border-bottom: 1px solid #29367c;
}
#main-write {
	height: 50px;
	position: relative;
}	
#main-write input {
	position: absolute;
	right: 0;
	background-color: #29367c;
	color: white;
	padding: 10px 30px;
	font-size: 11pt;
	cursor: pointer;
	box-shadow: 1px 2px 3px gray;
}
#main-pagenation-search {
	height: 80px;
}
#main-pagenation-search [alt="왼쪽화살표"] {
	width: 43px;
	position: absolute;
	left: 28%;
	cursor: pointer;
}	
#main-pagenation-search [alt="오른쪽화살표"] {
	width: 43px;
	position: absolute;
	right: 28%;
	cursor: pointer;
}
#main-pagenation-search > div {
	height: 50%;
	text-align: center;
	position: relative;
}
#page-number {
	line-height: 43px;
}
#page-number a {
	margin: 10px;
	cursor: pointer;
}
#page-number a:link {
	border: 1px solid black;
	padding: 5px 10px;	
}
#main-pagenation-search span {
	vertical-align: top;
}
#search-box {
	margin: 10px auto;
	height: 100%;
}
#search-box select {
	width: 115px;
	height: 40px;
	-webkit-appearance: none;
	-moz-appearance: none; 
	appearance: none;
	background: url("./Img/arrow-bottom.png");
	background-repeat: no-repeat;
	background-position: 150% 67%;
	background-size: 77px;
	border: 3px solid  #29367c;
	text-indent: 15px;
	padding: 5px 5px;
}
#search-box [type="text"] {
	width: 300px;
	height: 40px;
	border: 3px solid  #29367c;
}
#search-box [type="button"] {
	width: 92px;
	height: 40px;
	border: 3px solid  #29367c;
	font-size: 10pt;
	background-color: white;
	cursor: pointer;
}





/* 본문틀*/
.con_box {
	position :relative;
	width: 900px;
	height: 400px;
	margin: 0px auto;
	top: 200px;
}






/*-- 로그인안내틀--*/
.login_text_box{
width: 90%;
height :30px; 
font-size: 20px;
padding: 5px 0px 5px 5px; 
}

/*--텍스트인풋 --*/
.login_text{
width: 90%;
    height: 30px;
    padding: 10px 14px;
    border: 1px solid #E0E0E0;
    background: #fff;
    font-size: 20px;
    margin: 0px 0px 0px 5px;
  
}


/*--로그인버튼--*/
.login_btn{
width:90%;
height: 30px;
margin: 20px 0px 20px 5px; 
background-color: #82b2da;
color: white;
font-size: 20px;
line-height: 1.5;
text-align: center;
cursor: pointer;

}







/* 이건 메인안에 컨텐츠 크기 고정해주고 게속 브라우저 x축 줄였다 늘렸다 반복해도  메인안컨텐츠가 계속 중앙에오게하는 역할*/
.con_box {
	padding-left:20px;
	background-color: #FFFFFF;
	width: 400px;
	height:300px;
	margin: 0px auto;
	box-shadow: 1px 2px 3px grey;
}

.con_logo{
font-size: 50px;
text-align:center;
width :100%;
height :50px;
}
.footer{
position : absolute;
top :100%;
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
<div class="con_box">
<div class="con_logo">BetterWay</div>
<div class="login_text_box">아이디</div>
<input type="text" class="login_text" placeholder="아이디를입력하세요" id="id">
<div class="login_text_box">비밀번호</div>
<input type="password" class="login_text" placeholder="비밀번호를입력하세요" id="pw">

<div class="login_btn">로그인</div>
</div>

<div class="footer"></div>
</article>
</body>
</html>