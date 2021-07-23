<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자전거보관함</title>

<style type="text/css">
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

	

article {/* 섹션 안 큰내용, 가운데정렬 */
 	 background-color: #fff;
    height: 100%;
  	margin: 0px auto;
    width:1440px;
    background: orange;
  
}

section:after { /* 뒷배경 */
  content: "";
  display: table;

  clear: both;
  background: orange;
}


/* 
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
} */

/* 사이드랑 박스  가로*/
#sidebar {
	float: left;
background:#fff;
	width: 25%;
	/* 임의 지정 */
}
#sidebar_top{
height:216px;
background:#82B2DA;
padding-top: 80px;
font-size: 30pt;
font-weight:bold;
text-align: center;
color: #fff;
}
#box_top {
	float: right;
	
	width:75%;
	height: 645px; /* 임의 지정 */
}

  .box_title{
    position: relative;
 	background-image:url("resources/images/서브타이틀_배경.png");       
    background-size : cover;                    
  height:216px;

  }


.img_cov{
 backdrop-filter: blur(5px);
   height:216px;
   padding-top: 160px;
 
}
.img_cov_con{/* 어디로 왔능가  */

font-size: 20pt;

background:rgba(52, 75, 22, 0.63);
    color: #fff;
    text-align: right;
   

}
.img_cov_contxt{
font-weight: bold;
background: #1E646E;
color:#fff;
width:170px;
text-align:center;
border-radius: 15px 15px 15px 15px;


}

#box_con_text{
margin-top: 30px;
font-weight :bold;
font-size: 30pt;

}
#box_con_img{
padding:5px;
font-size: 25pt;
float: left;
}
#box_con_sub_num{
margin-top:-1px;
font-size: 15pt;
float: left;
}
.line_sel_bar{
border-bottom:2px solid #E0E0EB;
margin-top: 50px;
height:30px;
}
.line_sel_bar>.scroll:hover{
text-decoration:underline;
}



.scroll {
text-align:center;
margin-left: 10px;

}

#side_sub_menu{
text-align: center;
font-size: 20pt;
font-weight:bold;
border-bottom:1px solid #82B2DA;
height:100px;
padding-top: 30px;
}
#side_sub_menu:hover{
background: #B2A59F;

}

p{
margin-top: 10px;
margin-bottom:30px;
font-weight: bold;
margin-left: 20px
}
#hr{
	margin-top :16px;
}
#sub_title{
	font-size: 15pt;
}
#img_cycle,#img_cycle2{
	text-align: center;
}
.con_box{
	width : 1080px;
	height : 1000px;
	margin : auto;
}
#footer{
	width:100%;
	height:75px;
	margin-top : 530px;
	background: #023459;
}
*{
    margin: 0;
    padding: 0;
    list-style: none;
    text-decoration: none;
}
.side_menu_sub{
    display: block;
    overflow: hidden;
    text-align: center;
}
.nav{
    overflow: hidden;
	border-bottom:1px solid #82B2DA;
}
.btn{
    display: block;
    background-color: #fff;
    color: black;
    position: relative;
    font-size: 20pt;
    font-weight: bold;
    height: 100px;
    padding-top: 30px;

}
.btn:hover{
background: #B2A59F;
}
.side_menu_sub_down{
    background: #fff;
    overflow: hidden;
    transition: max-height 0.7s;
    max-height: 0;
}
.side_menu_sub_down a{
    display: block;
    padding: 15px 20px;
    color: #222;
    font-size: 16px;
   /* border-bottom: 1px solid #e0e0eb;*/
    position: relative;
    
}
.side_menu_sub_down a:after{
    content: '';
    opacity: 0;
    transition: opacity 0.3s;

}
.side_menu_sub_down a:hover{
    background: #B2A59F;
   	transition: all 0.3s;
    border-bottom: 1px solid #c8c8c8;
}
.side_menu_sub_down a:last-child{
    border:none;
}
.nav:target .side_menu_sub_down{
    max-height: 16em;
}
#box_con_img{
	width:65px;
}
li{
cursor: pointer;
}
</style>

<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>

<!-- 실내공기질 팝업 스크립트 -->
<link rel="stylesheet" type="text/css" href="resources/css/popup/envinfoGuide.css?after" />
<script type="text/javascript" 
		src="resources/script/popup/envinfoGuide.js?after"></script>
		
<script type="text/javascript">
$(document).ready(function(){
	$("#air").on("click",function(){
		envinfoGuide();
	});
});
</script>
</head>

<body>

<header>
  <a class="main" href="BetterWay_main">BetterWay</a>
	<div id="menu">
	<ul>
		<li><a href="#">교통정보안내</a>
			<ul>
				<li><a href="BetterWay_subLineSearch">노선도</a></li>
				<li><a href="BetterWay_subLineRealtime2">실시간 열차정보</a></li>
				<li><a href="BetterWay_subLineBusstation">역주변 버스정류장 연계</a></li>
				<li><a href="BetterWay_esta_main">역 내외 시설</a></li>
			</ul>
		</li>
		<li><a href="#">환경정보안내</a>
			<ul>
				<li id="air">실내 공기질 정보 제공</li>
				<li><a href="BetterWay_cooling">차량 별 냉방상태</a></li>
				<li><a href="BetterWay_congestion">혼잡도</a></li>
			</ul>
		</li>
		<li><a href="BetterWay_subwayNews">지하철 뉴스</a>
			
		</li>
		<li><a href="BetterWay_suggestList">고객의 소리</a>
			<ul>
				<li><a href="BetterWay_lostAndFound">유실물 조회</a></li>
				<li><a href="BetterWay_suggestList">건의 게시판</a></li>
			</ul>
		</li>

	</ul>
</div>
</header>

<section>
  <article>
		<div id="sidebar">
			<div id="sidebar_top">
			역 내외 시설
			</div>
			
			<div id="side_menu">
				 <ul class="side_menu_sub">
           			 <li class="nav" id="inside_esta">
               		 <a href="#inside_esta" class="btn">내부 편의시설</a>
                		<div class="side_menu_sub_down">
                    		<a href="BetterWay_nursingRoom2">수유실</a>
                    		<a href="BetterWay_wheelchair">휠체어 이용 승·하차 안내</a>
                    		<a href="BetterWay_cycle">자전거 보관함</a>
                    		<a href="BetterWay_happy">행복지대</a>
                    		<a href="BetterWay_toilet">화장실 안내</a>
                		</div>
           			 </li>
           		 <li class="nav" id="outside_esta">
                <a href="BetterWay_esta_out" class="btn">외부시설</a>
            		</li>
       			 </ul>
			</div>
			
		</div>
		<div id="box_top">
		
		 <div class="box_title">
        
		        <div class="img_cov">
		      
		                  <div class="img_cov_con">
		                  	홈>교통정보안내>역 내외 시설>내부 편의시설>자전거 보관함 &nbsp;
		                  	</div>
		            </div>
    	</div>
		<div id="box_con">
			<img id="box_con_img" src="resources/images/자전거검.png"/>
			<div id="box_con_text">
			자전거 보관함
			</div>
			<hr id = "hr"/><br/>
			
			<div id = "box_con_sub_num">Ⅰ </div>
			<h4 id = "sub_title">사물함형 자전거 보관함 설치 역</h4>
				<p>6호선 - 고려대역 / 화랑대역 / 봉화산역
				<br/>7호선 - 먹골역 / 신풍역</p>
			<br/>
			
			<div id = "box_con_sub_num">Ⅱ </div>
			<h4 id = "sub_title">사물함형 자전거 보관함 사용 방법</h4>
			<br/>
			<div id = "img_cycle">
				<img src="resources/images/자전거 보관함.PNG"/>
			</div><br/><br/>
			
			<div id = "box_con_sub_num">Ⅲ </div>
			<h4 id = "sub_title">자전거 찾기</h4>
			<br/>
			<div id = "img_cycle2">
				<img src="resources/images/자전거 찾기.PNG"/>
			</div>
									
		</div>	
	   </div>
  </article>
</section>

<footer id = "footer"></footer>
</body>
</html>