<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철 뉴스</title>
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
	height: 216px;
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
#main-box2 {
	margin-top: 20px;
	height: 600px;
	border: 2px solid #023459;
	margin-bottom: 30px;
}
#main-box2 table {
	font-size: 10pt;
	margin: 25px auto;
	width: 96%;	
	text-align: center;
    border-collapse: collapse;
    border-radius: 15px;
    padding: 0;
}
#main-box2 th{
	height: 37px;
	border-bottom : 1px solid #29367c;
	padding: 10px 0px;
}
#main-box2 td{
	height: 30px;
	border-top : 1px solid #eee;
	padding: 5px 0px; 
}
#main-box2 tbody tr td:nth-child(1) {
	font-weight: bold;
	width: 40%;
}
#main-box2 tbody tr td:nth-child(2) {
	color: #5e5c5b;
	width: 40%;
}
#main-box2 tbody tr td:nth-child(3) {
	width: 10%;
}
#main-box2 tbody tr td:nth-child(4) {
	width: 10%;
}
#main-caution {
	height: 100px;
    border: 1px solid #ddd;
    margin-bottom: 10px;
    font-size: 11pt;
    text-align: center;
    margin-top: 20px;
}
#main-caution > div { 
	display: table;
	width: 100%;
	height: 100%;
	position: relative;
}
#main-caution span { 
	display: table-cell;
	vertical-align: middle;
}
#main-caution img {
	width: 17px;
	position: absolute;
	top: 40px;
	left: 483px;
}
#main-total {
	height: 40px;
	position: relative;
	
}
#main-total span {
	font-size: 17pt;
	position: absolute;
	top: 3px;
	left: 12px;
}
#main-search {
    position: relative;
    text-align: right;
    padding: 11px 14px;
    border: 1px solid #d7d7d7;
    background: #ebebeb;
    display: table;
    width: 1440px;
}
#main-search select {
	height: 32px;
    min-width: 135px;
    padding-left: 15px;
    font-size: 13px;
    border: 1px solid #d5d5d5;
    display: table-cell;
    vertical-align: middle;
}
#main-search [type="text"] {
    height: 32px;
    padding-left: 5px;
    border: 1px solid #d5d5d5;
    display: table-cell;
    vertical-align: middle;
    margin-left: 3px;
}
#main-search [type="button"] {
	font-size: 14px;
    font-family: 'Noto Sans KR',Malgun Gothic,Dotum,sans-serif;
    background-color: #555;
    color: white;
    height: 30px;
    width: 58px;
    display: table-cell;
    vertical-align: middle;
    margin-left: 3px;
}
#main-pagenation-search {
	height: 80px;
}
#main-pagenation-search [alt="왼쪽화살표"] {
	width: 43px;
	position: absolute;
	left: 34%;
	cursor: pointer;
}	
#main-pagenation-search [alt="오른쪽화살표"] {
	width: 43px;
	position: absolute;
	right: 34%;
	cursor: pointer;
}
#main-pagenation-search > div {
	height: 50%;
	text-align: center;
	position: relative;
	font-size: 18px;
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





/* 제목 이미지 */
.titleImg{
display:inline-block;
background: url("resources/images/newstitle.png");
background-size: 40px;
width : 40px;
height : 40px;
}


#main-title {
	height: 50px;
    margin-bottom: 10px;
    text-align: left;
    font-size: 30pt;
    line-height: 64px;
    font-weight: bold;
}





#footer {
	height: 75px;
	background: #023459;
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
			<span>지하철뉴스</span>
		</div>
	</div>
	<div id="right-box">
		<div id="main-box1">
			<div id="site-route">홈>지하철뉴스</div>
		</div>
	</div>
	<div id="main-b">
	<div id="main-title"> <div class="titleImg"></div>지하철뉴스 </div>
		<div id="main-caution">
			<div><img alt="경고표시" src="resources/images/warning.png"/><span>BetterWay에서는 교통관련 언론기사를 링크서비스 하고 있습니다.</span></div>
		</div>
		<div id="main-total">
			<span>Total: 31695</span>
		</div>
		<div id="main-search">
			<select>
				<option>제목</option>
				<option>출처</option>
				<option>제목+출처</option>
			</select>
			<input type="text" />
			<input type="button" value="검색" />
		</div>
		<div id="main-box2">
			<table>
				<thead>
					<tr>
						<th>제목</th>
						<th>내용</th>
						<th>언론</th>
						<th>날짜</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>조선일보</td>
						<td>2020-05-12</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
					<tr>
						<td><a href="#">경기도, 올해 453억 들여 버스 정류소 확충 및 개선</a></td>
						<td>경기도는 올해 도민들의 버스 이용 편의 증진을 위해 453억원을...</td>
						<td>1</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="main-pagenation-search">
			<div>
			<img alt="왼쪽화살표" src="./Img/arrow-left.png"/>
					<span id="page-number"><a href="#">1</a><a>2</a><a>3</a><a>4</a><a>5</a><a>6</a><a>7</a><a>8</a><a>9</a><a>10</a></span>
			<img alt="오른쪽화살표" src="./Img/arrow-right.png" />
			</div>
		</div>
	</div>
</article>
<div id="footer"></div>
</body>
</html>