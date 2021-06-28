<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
		z-index: 300;
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
		
		nav ul {
  list-style-type: none;
  padding: 0;
}
.main{/* 상단 큰 메뉴바 아래 제일 큰 영역 */
	color:white;
	text-decoration : none;
	font-size: 30px;

}

article {
	min-height: 100%;
	width: 1440px;
	margin: 0 auto;
	background-color: white;
}

section:after { /* 뒷배경 */
  content: "";
  display: table;

  clear: both;
  background: orange;
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


/* 제목 이미지 */
.tit_img{
display:inline-block;
background: url("resources/images/suggest.png");
background-size: 40px;
width : 40px;
height : 40px;
}


/* 본문*/
.con_box {

	width: 900px;
	margin: 0px auto;
}

/* 내부에 absolute 속성쓰려고 만듬 */
.con_box_2{
	position: relative;
	width: 100%;
}







/*제목 틀*/
.sug_tit_box{
width:100%;
height:50px;
border-bottom:1px solid #e0e0eb;
line-height:2.5;
}
/*제목,작성자*/
.sug_tit_writer{
margin-right:10px;
display:inline-block;
text-align:center;
line-height:2.5;
width:10%;
height:100%;
border-right:1px solid #e0e0eb;
}
/*날짜, 추천,조회수,댓글*/
.sug_tit_sub{
display:inline-block;
width: 20%;
height:50px;
position: absolute;
left : 720px;
}
/* 내용*/
.sug_con{
padding : 20px 0px 0px 20px;
width:100%;
height:600px;
border-right: 1px solid #e0e0eb;
border-left: 1px solid #e0e0eb;
border-bottom:1px solid #e0e0eb;
margin-bottom:10px;
}
/*댓글 추천*/
.comm_push{

width:100%;
height:50px;
}


/*댓글 이미지*/
.comm_img{
display:inline-block;
background: url("resources/images/comment.png");
background-size: 25px;
width:25px;
height:25px;
margin-right: 10px;
margin-left: 10px;
}


/*추천 버튼 */
.push_img{
display:inline-block;
background: url("resources/images/good.png");
background-size: 25px;
width:25px;
height:25px;
margin-right: 10px;
margin-left: 10px;
}

/*삭제버튼 */
.del_btn{
position:absolute;
left:800px;
background-color:#e0e0eb;
font-size: 20px;
margin-right:10px;
width :80px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}
/*수정버튼*/
.update_btn{
position:absolute;
left:700px;
background-color:#82b2da;
font-size: 20px;
width :80px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}

/*테이블*/
.comm_table{
text-align:center;
width:100%;
}

/*댓글 세로길이*/
.comm_table tr{
height:80px;
}


/*댓글 라인*/
.comm_table tr:nth-child(1) td{
border-top: 1px solid #e0e0eb;

}
/*댓글 라인*/
.comm_table td{
border-bottom: 1px solid #e0e0eb;
}
/*댓글 라인*/
.comm_table tr td:nth-child(1){
border-right: 1px solid #e0e0eb;
}

/*댓글내용 왼쪽정렬*/
.comm_table tr td:nth-child(2){
padding-left:10px;
text-align: left;
}
/* 글수정*/
.comm_update{
position: absolute;
left:800px;
cursor: pointer;
}
/* 글삭제*/
.comm_del{
position: absolute;
left:850px;
cursor: pointer;
}
/* 댓글입력틀*/
.comm_box{
font-size: 0;
margin-top: 20px;

}

/* 아이디비밀번호입력틀*/
.id_pw_box{
display: inline-block;
height :100px;
width: 20%;

margin-right: 2%;
}

/* 내용입력틀*/
.comm_box_2{
height :100px;
display: inline-block;
vertical-align: top;
width: 78%;
}

/*아이디비밀번호입력*/
.id_pw{
	margin-bottom :18px;
	outline: none;
	width: 180px;
	height:30px;
	font-size: 20px;
	border : 1px solid #e0e0eb;
}


/*댓글 내용입력*/

.comm_{
	font-size:20px;
	outline: none;
	padding : 10px 0 0 5px;
	border : 1px solid #e0e0eb;
}

/*등록*/

.comm_add{

background-color:#82b2da;
font-size: 20px;
width :70px;
height :83px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
vertical-align: top;

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
  <a href="menu.html">BetterWay</a>
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
		<div class="con_box_2">
		<div id="main-title">
		<div class="tit_img"></div>	건의 게시판
		</div>
		<div id="main-caution">
			<div><p><img alt="경고표시" src="resources/images/warning.png"/>사이트 이용에 있어서 불편한 점을 건의하는 게시판입니다. <br/>
				서비스와 무관한 광고글, 욕설, 비방 등은 관리자가 임의 삭제하겠습니다.</p></div>
		</div>
		
 		<div class="sug_tit_box">
 		<div class="sug_tit_writer">
 		제목 </div>건의합니다
 		
 		 <div class="sug_tit_sub">2021/05/08 14:08:22</div>
 		</div>
 		<div class="sug_tit_box">
 		<div class="sug_tit_writer">
 		작성자</div>홍길동
 		<div class="sug_tit_sub">조회11 추천2 댓글2</div>
 		</div>
 		<div class="sug_con">
 		
 		dasdasddasdasdasdsaczxcxzcxzczxcxzcxczxczxczx
 		</div>
 		
 		
 		<div class="comm_push">
 		<div class="comm_img"></div>댓글 2 <div class="push_img"></div>추천하기
 			<input type="button" value="수정" class="update_btn">
 			<input type="button" value="삭제" class="del_btn">

 		</div>
 	<table class="comm_table">
 	<colgroup>
 	<col width="20%"/>
 	<col width="80%"/>
 	</colgroup>
 	
 	<tr>
 	<td>홍길동
 	</td>
 	<td>
 	zxczxczxczxczxcczxcxzc
 	<span class="comm_update">수정</span>
 	<span class="comm_del">삭제</span>
 	</td>
 	</tr>
 	
 	 <tr>
 	<td>김길동
 	</td>
 	 	<td>
 	 	xzczxczxczxcxzcxzczx
 	<span class="comm_update">수정</span>
 	<span class="comm_del">삭제</span>
 	</td>
 	</tr>
 	</table>	
 		
 		
 		
 	<div class="buttonBox">

	</div>
	
	<div class="comm_box">
	<div class="id_pw_box">
	<input type="text" placeholder="아이디" class="id_pw"><br/>
	<input type="password" placeholder="비밀번호" class="id_pw">
	</div>
	<div class="comm_box_2">
	<textarea rows="3" cols="60" class="comm_"></textarea>
	
	<input type="button" value="등록" class="comm_add"></div>
	</div>

	
	
	
				</div><!-- con_box_2 end -->
	</div> <!-- con_box end -->
	</div> <!-- right-box end -->
	
	<div class="footer"></div>
</article>
</body>
</html>