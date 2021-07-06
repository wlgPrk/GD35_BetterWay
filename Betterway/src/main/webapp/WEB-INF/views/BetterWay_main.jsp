<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Better Way Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$(".charge_guide").on("click", function(){
		window.open('BetterWay_pop1.html','팝업창',"width=700,height=1200,top="+(screen.availHeight/2-600)+",left="+(screen.availWidth/2-350)+"");
	
	});
	
	$(".map_guide").on("click", function(){
		location.href = "BetterWay_subLineSearch";
	
	});
	
	$(".cov_guide").on("click", function(){
		location.href = "BetterWay_esta_main";
	
	});
	
	
	
	$(".realtime_train_box").on("click", function () {
		 window.open("https://smapp.seoulmetro.co.kr:58443/traininfo/traininfoUserView.do")

		
	});
});




</script>
<style type="text/css">
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
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

.main {
	color: white;
	text-decoration: none;
	font-size: 30px;
}

* {
	margin: 0;
	padding: 0;
}

ul li {
	list-style: none;
}

a {
	text-decoration: none;
	color: #333;
}

#top_menu {
	font: bold 16px "malgun gothic";
	width: 720px;
	height: 50px;
	background: #fff;
	color: black;
	line-height: 50px;
	text-align: center;
	z-index: 2;
}

#top_menu>ul>li {
	float: left;
	width: 180px;
	position: relative;
}

#top_menu>ul>li>ul {
	width: 180px;
	display: none;
	position: absolute;
	font-size: 14px;
	background: #fff;
}

#top_menu>ul>li:hover>ul {
	display: block;
}

#top_menu>ul>li>ul>li:hover {
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

article {
	height: 1080px;
	margin: 0px auto;
	width: 1440px;
	
	
	z-index: -3;
}

section:after {
	content: "";
	display: table;
	clear: both;
	
	
	
	
}
section{
background-image :url("resources/images/main.jpg");
 border: 0;
    padding: 0; 
min-height: 100%;
z-index: -5;
    background-position: center;
  background-size: cover;



 
  
}

footer {
	background-color: #777;
	padding: 10px;
	text-align: center;
	color: white;
}

@media ( max-width : 600px) {
	nav, article {
		width: 100%;
		height: auto;
	}
}
.con{
display: inline-block;
}
.search_route {
	position: relative;
	height:150px;
	top : 150px;
	left : -400;
	display: inline-block;
	width : 360px;
	
	background-color:rgba(31,78,121,0.3);
}
.realtime_train {
	position: relative;
	top : 50px;
	height: 150px;
	width : 360px;
	display: inline-block;
	background-color:rgba(31,78,121,0.3);
}
.center_box {
	position: relative;
	top:-30px;
	text-align: center;
	left : 70px;
	width : 600px;
	height:470px;
	display: inline-block;
	vertical-align:middle;
	background-color:rgba(31,78,121,0.3);
	
}

.box4 {
	position: relative;
	text-align: center;
	
	
	left: 150px;
	width : 300px;
	height:500px;
	display: inline-block;
	background-color:rgba(31,78,121,0.3);
	
}




.search_route_box{
	position: relative;
	top: -5px;
	left :0;
	display: inline-block;
	text-align: center;
	vertical-align:middle;
	height: 150px;
	width: 250px;
	font-size: 20px;
	font-weight: bold;
	
}
.realtime_train_box {
	position: relative;
	margin:20px;
    cursor:pointer;
	display: inline-block;
	background-color : white;
	vertical-align:middle;
	text-align:center;
	height: 120px;
	width: 320px;
	font-size: 20px;
	font-weight: bold;
	border:4px solid silver;
}
.box_con_head{
font-size: 16px;
font-weight: bold;
border: 1px solid silver;
background-color: #82b2da;
}


.search1 {
	position: relative;
	
	width: 70px;
	height: 70px;
	font: bold ;
	cursor: pointer;
	
}

.btn{
border: 0;
    padding: 0; 
min-height: 25%;
    
  display:inline-block;
 width:25%;
  
  background-color: white;
}
.sub_center_box_1{
display: inline-block;
height:50%;
width:100%;
background-color:rgba(31,78,121,0.2);
position:relative;
}
.sub_center_box_2{
display: inline-block;
height:50%;
width : 100%;
background-color:rgba(31,78,121,0.2);
position:relative;

}

.time_guide{

display: inline-block;
position:relative;
text-align:center;
top:60px;
margin:10px;
height:150px;
width:270px;
cursor: pointer;
border:4px solid silver;

background-color: white;
}

.cov_guide{

display: inline-block;
border:4px solid silver;
margin:10px;
height:150px;
width:270px;
position:relative;	
text-align:center;
background-color: white;
cursor: pointer;
}
.charge_guide{

display: inline-block;
position:relative;
text-align:center;
top:60px;
margin:10px;
height:150px;
width:270px;
cursor: pointer;
border:4px solid silver;

background-color: white;
}

.map_guide{

display: inline-block;
border:4px solid silver;
margin:10px;
height:150px;
width:270px;
position:relative;	
text-align:center;
background-color: white;
cursor: pointer;
}



.con_img_clock{
position:relative;
display:inline-block;
margin-left:10px;
margin-top:25px;
background-image :url("resources/images/clock.png");
background-position: center;

  background-size: cover;
width : 100px;
height: 100px;


}
.con_img_ticket{
position:relative;
display:inline-block;
margin-left:10px;
margin-top:25px;
background-image :url("resources/images/ticket.png");
background-position: center;
  background-size: cover;
width : 100px;
height: 100px;


}
.con_img_escalator{
position:relative;
display:inline-block;
margin-left:10px;
margin-top:25px;
background-image :url("resources/images/escalator.png");
background-position: center;
  background-size: cover;
width : 100px;
height: 100px;


}
.con_img_map{
position:relative;
display:inline-block;
margin-left:10px;
margin-top:25px;
background-image :url("resources/images/map.png");
background-position: center;
  background-size: cover;
width : 100px;
height: 100px;


}
.con_charge_txt{
display:inline-block;
position:relative;
top :-5px;
width : 130px;
height: 100px;
background-color: white;
font-size: 15px;
border: 1px solid silver;
}

.con_cov_txt{
display:inline-block;
position:relative;
top :-5px;
width : 130px;
height: 100px;
background-color: white;
font-size: 15px;
border: 1px solid silver;
}

.con_search_txt{
display:inline-block;
position:relative;
top :-25px;
width : 130px;
height: 100px;
background-color: white;
font-size: 15px;
border: 1px solid silver;
}
.con_map_txt{
display:inline-block;
position:relative;
top :-5px;
width : 130px;
height: 100px;
background-color: white;
font-size: 15px;
border: 1px solid silver;
}

.box_realtime_train_con_img{
position:relative;
display:inline-block;
background-image :url("resources/images/train.png");
top: 10px;
width : 100px;
height: 100px;
background-size: cover;
border: 1px solid silver;
cursor: pointer;

}
.box_realtime_train_con_txt{
display:inline-block;
position:relative;
top : -22px;
width : 130px;
height: 100px;
background-color: white;
border: 1px solid silver;
text-align: center;
font-size: 12px;
}



.news{

 background-color:rgba(31,78,121,0.2);
height: 250px;

}
.board{
background-color:rgba(31,78,121,0.2);
height: 250px;

}
table{
position:relative;
left : 30px;
top : 30px;
width: 80%;
	background-color:white;
}
th{
border-bottom: 2px solid;
width: 100%;
text-align: center;
vertical-align: top;
background-color: #82b2da;
}

td{
text-align: left;
border-bottom: 2px solid;
cursor: pointer;
background-color: white;
}
.test{
display: block;
}
.text_header{
position: relative;
top: 100px;

font-size: 60px;
color: white;
font-weight: bold;
font-family: sans-serif;
text-align: right;

}
.text_body{

font-size: 30px;
color:  white;
font-weight: bold;
font-family: inherit;

}

</style>
</head>
<body>



	<header>
		<a class="main" href="main">BetterWay</a>
		<div id="top_menu">
			<ul>
				<li><a href="#">교통안내</a>
					<ul>
						<li><a href="BetterWay_subLineSearch">노선 정보</a></li>
						<li><a href="BetterWay_subLineRealtime">실시간 열차정보</a></li>
						<li><a href="BetterWay_subLineBusstation">역주변 버스정류장 연계</a></li>
						<li><a href="BetterWay_esta_main">역 내외 시설</a></li>
					</ul></li>
				<li><a href="#">환경정보안내</a>
					<ul>
						<li><a href="BetterWay_eveinfoGuide">실내 공기질 정보 제공</a></li>
						<li><a href="BetterWay_eveinfoGuide2">차량 별 냉방상태</a></li>
					</ul></li>
				<li><a href="BetterWay_subwayNews">지하철 뉴스</a></li>
				<li><a href="BetterWay_suggestList">고객의 소리</a>
					<ul>
						<li><a href="BetterWay_lostAndFound">유실물 조회</a></li>
						<li><a href="BetterWay_suggestList">건의 게시판</a></li>
					</ul></li>
			</ul>
		</div>
		
	</header>
	<section>
		<article>
		<div class= "text_header">
		BetterWay</br>
			<div class= "text_body">
		더 나은 교통 서비스를 위해</br>
			</div>
			</div>
		<div class ="con">
			<div class="search_route">
				<div class="search_route_box">
					 <br />
					<br /> <input type="text"   placeholder="출발역" style=" width: 200px;height: 30px;font-size: 15px;"/> <br />
					<br /> <input type="text" placeholder="도착 역" style=" width: 200px;height: 30px;font-size: 15px;" />
				</div>
				<input type="button" class="search1"   onclick="startM();" value="경로 검색"
				style="background-color: #82B2DA;" />
			</div><br/>
			<div class="realtime_train"
			>
				<div name = "realtime_train_box" class="realtime_train_box">
					<div class = "box_realtime_train_con_img"> </div>
			<div class = "box_realtime_train_con_txt">
			<div class = "box_con_head">실시간 열차 정보</div>
			<br/> <div>서울시의 실시간 지하철 정보를 보여줍니다.</div>
			
			</div>
					</div>
			</div>
			
			
			<div class ="center_box">
			<div class = "sub_center_box_1">
			<div class = "time_guide" >
			<div class = "con_img_clock"> </div>
			<div class = "con_search_txt">
			<div class = "box_con_head">열차 시간표</div>
			<br/> <div>호선,역별 시간표를 알려드립니다.</div>
			</div>
			</div>
			<div name = "charge_guide"class = "charge_guide">
			<div class = "con_img_ticket"> </div>
			<div class = "con_charge_txt">
			<div class = "box_con_head">운임 안내</div>
			<br/> <div>지하철 운임은 거리비례제로 책정됩니다.</div>
			
			</div>
			</div>
			</div>
			<div class = "sub_center_box_2">
			<div class = "cov_guide">
			<div class = "con_img_escalator"> </div>
			<div class = "con_cov_txt">
			<div class = "box_con_head">편의시설 안내</div>
		<br/><div>역사내,외의 편의시설을 안내해드립니다.</div>
			
			</div>
			</div>
			<div class = "map_guide">
			<div class = "con_img_map"> </div>
			<div class = "con_map_txt">
			<div class = "box_con_head">노선도</div>
			<br/> <div>노선도및 열차정보를 안내해드립니다.</div>
			</div>
			</div>
			
			</div>
			
			</div>
		<div class = "box4">
		<div class = "news">
		<table>
		<th>지하철 뉴스<th/>
		<tr>
		<td >내용</td>
		</tr>
		<tr>
		<td>내용</td>
		</tr>
		<tr>
		<td>내용</td>
		</tr>
		<tr>
		<td>내용</td>
		</tr>
		<tr>
		<td>내용</td>
		</tr>
		<tr>
		<td>내용</td>
		</tr>
		</table>
		</div>
		<br/>
		
		<div class = "board">
		<table>
		<tr> <th>게시판</th></tr>
		<tr>
		<td>내용</td>
		</tr>
		<tr>
		<td>내용</td>
		</tr>
		<tr>
		<td>내용</td>
		</tr><tr>
		<td>내용</td>
		</tr><tr>
		<td>내용</td>
		</tr><tr>
		<td>내용</td>
		</tr><tr>
		<td>내용</td>
		</tr>
	  
		</table>
		</div>	

</div>
</div>
		</article>
	</section>

	<footer>
		<p>Footer</p>
	</footer>

</body>
</html>