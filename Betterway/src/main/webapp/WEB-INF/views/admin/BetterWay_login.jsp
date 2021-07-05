<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>관리자 로그인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Popup CSS -->
<link rel="stylesheet" type="text/css" href="./popup.css" />
<style type="text/css">

/*-------------------- 공용 시작 ---------------------*/

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header { /* 상단 큰메뉴바 */
  top: 0;
  left: 0;
  right: 0;
  height: 75px;
  padding: 1rem;
  color: white;
  background: #023459;
  font-weight: bold;
  display: flex;
  justify-content: space-between;
  align-items: center;
   
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
	#menu > ul > li:hover > ul {
		display:block;
	}
	#menu > ul > li > ul > li:hover {
		background: #B2A59F;
		transition: ease 1s;
		}
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
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

section{
width:100%;
height:800px;
background-image :url("main.jpg");

/* background-image :url("resources/images/main.jpg"); */
}

	

article {/* 섹션 안 큰내용, 가운데정렬 */
    height: 100%;
  margin: 0px auto;
    width:1440px;

  
}

section:after { /* 뒷배경 */
  content: "";
  display: table;

  clear: both;
  background: orange;
}





.footer{
position: absolute;
top:130%;
background-color: #023459;
width :100%;
height : 60px;

}


/*------------------- 공용 끝 ------------------- */




/* 컨텐츠틀*/
.con_box {


	position:relative;
	top:150px;
	padding-top:20px;
	padding-left:20px;
	background-color: #FFFFFF;
	width: 400px;
	height:280px;
	margin: 0px auto;
	box-shadow: 1px 2px 3px grey;
}

/*-- 로그인안내틀--*/
.login_text_box{
font-weight:bold;
width: 90%;
height :30px; 
font-size: 20px;
padding: 5px 0px 5px 5px; 
}

/*--텍스트인풋 --*/
.login_text{
font-weight:bold;
width: 90%;
    height: 30px;
    padding: 10px 14px;
    border: 1px solid #E0E0E0;
    background: #fff;
    
    font-size: 20px;
    margin: 0px 0px 0px 5px;
    outline: none;
  
}


/*--로그인버튼--*/
.login_btn{
color:white;
font-weight:bold;
width:90%;
height: 30px;
margin: 20px 0px 20px 5px; 
background-color:#82b2da;
box-shadow: 1px 2px 3px grey;

font-size: 20px;
line-height: 1.5;
text-align: center;
cursor: pointer;

}

.con_logo{
font-weight:bold;
font-size: 50px;
text-align:center;
width :100%;
height :50px;
}








</style>


<script type="text/javascript" 
src="./jquery-1.12.4.js"></script>
<script type="text/javascript" 
		src="./popup.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	$(".login_btn").on("click",function(){
		if($.trim($("#id").val())==""){
			makePopup( "아이디를입력하시오","닫기","");
		}else if($.trim($("#pw").val())==""){
			makePopup( "비밀번호를입력하시오","닫기","");
		}
	});//login btn end

	
	
	
	
}); //document end
</script>
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
<body>

<section>
<article>

<div class="con_box">
<div class="con_logo">BetterWay</div>
<div class="login_text_box">아이디</div>
<input type="text" class="login_text" placeholder="아이디를입력하세요" id="id">
<div class="login_text_box">비밀번호</div>
<input type="password" class="login_text" placeholder="비밀번호를입력하세요" id="pw">

<div class="login_btn">로그인</div>
</div>


</article>
 
</section>

<div class="footer"></div>
</body>
</html>