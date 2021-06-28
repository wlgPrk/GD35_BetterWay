<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>건의게시판 - 메인</title>
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


/* 제목 이미지 */
.tit_img{
display:inline-block;
background: url("./Img/suggest.png");
background-size: 40px;
width : 40px;
height : 40px;
}


/* 본문*/
.con_box {
	width: 900px;
	margin: 0px auto;
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
	<div id="sidebar">
		<div id="side-box1">
			<span>고객의소리</span>
		</div>
		<div id="side-box2">
			<a href="Lost-Property.html"><span>유실물 조회</span></a>
		</div>
		<div id="side-box3">
			<a href="Bboard1.html"><span>건의 게시판</span></a>
		</div>
	</div>
	<div id="right-box">
		<div id="main-box1">
			<div id="site-route">홈>고객의소리>건의게시판</div>
		</div>
		
		<div class="con_box">
		<div id="main-title">
		<div class="tit_img"></div>	건의 게시판
		</div>
		<div id="main-caution">
			<div><p><img alt="경고표시" src="./Img/warning.png"/>사이트 이용에 있어서 불편한 점을 건의하는 게시판입니다. <br/>
				서비스와 무관한 광고글, 욕설, 비방 등은 관리자가 임의 삭제하겠습니다.</p></div>
		</div>
		<div id="main-table">
			<table>
			<colgroup>
			<col width="30px"/>
			<col width="60px"/>
			<col width="500px"/>
			<col width="60px"/>
			<col width="60px"/>
			<col width="60px"/>
			<col width="60px"/>
			</colgroup>
					<tr>
						<th>번호</th>
						<th>글의종류</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>작성일</th>
						<th>조회</th>
						<th>추천</th>
					</tr>
					<tr>
						<td>공지</td>
						<td><img alt="공지" src="./Img/warning-red2.png"/></td>
						<td>게시판 이용안내</td>
						<td>관리자</td>
						<td>21/05/13</td>
						<td>530</td>
						<td>22</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지" src="./Img/has-img.png"/></td>
						<td><a href="Bboard2.html">건의합니다[2]</a></td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr id="table-last">
						<td>210513</td>
						<td><img alt="이미지없음" src="./Img/chat.png"/></td>
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
			</table>
		</div>
		<div id="main-write">
			<a href="Bboard4.html"><input type="button" value="글쓰기" /></a>
		</div>
		<div id="main-pagenation-search">
			<div>
				<img alt="왼쪽화살표" src="./Img/arrow-left.png"/>
					<span id="page-number"><a href="./Bboard3.html">1</a><a>2</a><a>3</a><a>4</a><a>5</a><a>6</a><a>7</a><a>8</a><a>9</a><a>10</a></span>
				<img alt="오른쪽화살표" src="./Img/arrow-right.png" />
			</div>
				<div id="search-box">
					<span>
						<select>
							<option>선택</option>
							<option>제목</option>
							<option>작성자</option>
						</select>
					</span>	
					<span>
						<input type="text" />
					</span>
					<span>	
						<input type="button" value="검색" />
					</span>
			</div>
		</div>
	</div> <!-- con_box end -->
	</div> <!-- right-box end -->
	
	<div class="footer"></div>
</article>
</body>
</html>