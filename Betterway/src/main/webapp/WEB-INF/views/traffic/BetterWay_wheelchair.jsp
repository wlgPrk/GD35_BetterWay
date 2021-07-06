<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
</script>

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
.img_cov_context{
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
display: inline-block;

}

#box_con_img{
width:50px;
margin-bottom: -12px;
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
margin-bottom:15px;
font-weight: bold;
}
#hr{
	margin-top :15px;
}
#sub_title{
	font-size: 15pt;
}
#img_wheel{
	text-align: center;
}
.con_box{
	width : 1350px;
	margin : auto;
}
.table_box{
	width:100%;
	border-top:2px solid #82b2da;
}
#con_table{
	width : 100%;
	border-collapse:collapse;
	border-spacing:0px;
}
thead{
	display: table-header-group;
	vertical-align: middle;
	background-color:#f0f0f5;
}
th,td{
	border : 1px solid #e0e0eb;
	border-collapse: collapse;
	padding : 10px;
	text-align: center;
}

#footer{
	width:100%;
	height:75px;
	margin-top : 5260px;
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

</style>
</head>
<body>

<header>
  <a class="main" href="menu.html">BetterWay</a>
	<div id="menu">
	<ul>
		<li><a href="#">교통안내</a>
			<ul>
				<li><a href="zoom.html">노선도</a></li>
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
                    		<a href="BetterWay_baby.html">수유실</a>
                    		<a href="BetterWay_wheelchair.html">휠체어 이용 승·하차 안내</a>
                    		<a href="BetterWay_cycle.html">자전거 보관함</a>
                    		<a href="BetterWay_happy.html">행복지대</a>
                		</div>
           			 </li>
           		 <li class="nav" id="outside_esta">
                <a href="#outside_esta" class="btn">외부시설</a>
            	</li>
       			 </ul>
			</div>
			
		</div>
		<div id="box_top">
		
		 <div class="box_title">
		        <div class="img_cov">
		                  <div class="img_cov_con">
		                  	홈>역 내외 시설>내부 편의시설>휠체어 이용 승·하차 안내 &nbsp;
		                  	</div>
		        </div>
    	</div>
		<div id="box_con">
			<img id="box_con_img" src="resources/images/휠체어검.png"/>
			<div id="box_con_text">
			휠체어 이용 승·하차 안내
			</div>
			
		<hr id = "hr"/><br/>
		
		<div id = "box_con_sub_num">Ⅰ </div>
		<h4 id = "sub_title">이동식 안전 발판 비치 현황(197역)</h4>
		<p>전동차와 승강장 연단간격이 넓은 역사의 승·하차 편의를 위한 이동식 안전 발판을 이용할 고객께서는 해당역사로 연락주시기 바랍니다.</p>
		<br/>
		
		<div id = "img_wheel">
			<img src="resources/images/이동식 안전 발판.PNG"/>
		</div><br/>
		<hr/><br/>
		
		<div class = "table_box">
			<table id = "con_table">
				<colgroup>
					<col width = "10%;">
					<col width = "75%;">
					<col width = "15%;">
				</colgroup>
				<thead>
					<tr>
						<th>호선</th>
						<th>이동식 안전발판 비치 역사</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1~4</td>
						<td>1호선(서울역~청량리), 2호선(시청~용두), 3호선(지축~오금), 4호선(당고개~남태령)</td>
						<td>전역사<br/>(120역)</td>
					</tr>
					<tr>
						<td>5</td>
						<td>방화, 개화산, 김포공항, 송정, 발산, 우장산, 화곡, 신정, 목동, 오목교, 양평, 영등포구청, 영등포시장, 신길, 여의도,<br/> 
						여의나루, 마포, 공덕, 애오개, 충정로, 서대문, 광화문, 을지로4가, 동대문역사문화공원, 청구, 신금호, 행당, 왕십리,<br/>
						답십리, 군자, 아차산, 천호, 굽은다리, 거여</td>
						<td>34개역</td>
					</tr>
					<tr>
						<td>6</td>
						<td>응암, 불광, 독바위, 연신내, 구산, 월드컵경기장, 합정, 녹사평, 창신, 고려대, 월곡, 화랑대</td>
						<td>12역</td>
					</tr>
					<tr>
						<td>7</td>
						<td>도봉산, 수락산, 마들, 노원, 중계, 하계, 공릉, 태릉입구, 먹골, 중화, 상봉, 면목, 사가정, 용마산, 중곡, 어린이대공원,<br/>
						 건대입구, 강남구청, 고속터미널, 이수, 남성, 장승배기, 신풍, 남구로, 가산디지털단지, 철산, 철왕</td>
						<td>27역</td>
					</tr>
					<tr>
						<td>8</td>
						<td>몽촌토성, 잠실, 산성, 단대오거리</td>
						<td>4역</td>
					</tr>
				</tbody>
			</table>
		</div><br/><br/><br/>

		
		<div id = "box_con_sub_num">Ⅱ</div>
		<h4 id = "sub_title">전동차와 승강장 연단간격이 가장 좁은 승·하차 위치 현황</h4>
		<p>□대상 : 연단간격 10cm 초과 역사(110역)</p>
		
		<div class = "table_box">
			<table id = "con_table">
				<colgroup>
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col" colspan="3">1호선(6역)</th><!-- scope col 헤더셀이 세로행에 적용된다. row 가로행에 적용 -->
						<th scope="col" colspan="3">2호선(22역)</th>
						<th scope="col" colspan="3">3호선(17역)</th>
						<th scope="col" colspan="3">4호선(14역)</th>
					</tr>
					<tr>
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th> <!-- colspan은 가로로 병합 -->
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th>
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th>
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">서울역</td>  <!-- rowspan은 세로로 병합 -->
						<td>소요산방면</td>
						<td>7-3</td>
						<td rowspan="2">시청</td> 
						<td>내선</td>
						<td>7-3</td>
						<td rowspan="2">연신내</td>  
						<td>대화방면</td>
						<td>7-1</td>
						<td rowspan="2">당고개</td> 
						<td>당고개방면</td>
						<td>4-3</td>
					</tr>
					<tr>
						<td>신도림방면</td>
						<td>1-4</td>
						<td>외선</td>
						<td>4-1</td>
						<td>오금방면</td>
						<td>3-2</td>
						<td>오이도방면</td>
						<td>5-1</td>
					</tr>
					<tr>
						<td rowspan="2">동대문</td> 
						<td>소요산방면</td>
						<td>4-4</td>
						<td rowspan="2">동대문역사<br/>문화공원</td>  
						<td>내선</td>
						<td>10-2</td>
						<td rowspan="2">불광</td> 
						<td>대화방면</td>
						<td>1-1</td>
						<td rowspan="2">미아사거리</td> 
						<td>당고개방면</td>
						<td>7-1</td>
					</tr>
					<tr>
						<td>신도림방면</td>
						<td>7-1</td>
						<td>외선</td>
						<td>9-2</td>
						<td>오금방면</td>
						<td>1-4</td>
						<td>오이도방면</td>
						<td>1-4</td>
					</tr>
					<tr>
						<td rowspan="2">동묘앞</td> 
						<td>소요산방면</td>
						<td>1-2</td>
						<td rowspan="2">신당</td>  
						<td>내선</td>
						<td>4-2</td>
						<td rowspan="2">녹번</td> 
						<td>대화방면</td>
						<td>8-1</td>
						<td rowspan="2">길음</td> 
						<td>당고개방면</td>
						<td>7-2</td>
					</tr>
					<tr>
						<td>신도림방면</td>
						<td>3-4</td>
						<td>외선</td>
						<td>7-1</td>
						<td>오금방면</td>
						<td>10-2</td>
						<td>오이도방면</td>
						<td>7-1</td>
					</tr>
					<tr>
						<td rowspan="2">신설동</td> 
						<td>소요산방면</td>
						<td>6-1</td>
						<td rowspan="2">상왕십리</td>  
						<td>내선</td>
						<td>1-1</td>
						<td rowspan="2">홍제</td> 
						<td>대화방면</td>
						<td>10-2</td>
						<td rowspan="2">성신여대<br/>입구</td> 
						<td>당고개방면</td>
						<td>10-4</td>
					</tr>
					<tr>
						<td>신도림방면</td>
						<td>10-4</td>
						<td>외선</td>
						<td>10-4</td>
						<td>오금방면</td>
						<td>4-2</td>
						<td>오이도방면</td>
						<td>9-2</td>
					</tr>
					<tr>
						<td rowspan="2">제기동</td> 
						<td>소요산방면</td>
						<td>1-4</td>
						<td rowspan="2">왕십리</td>  
						<td>내선</td>
						<td>3-1</td>
						<td rowspan="2">무악재</td> 
						<td>대화방면</td>
						<td>1-3</td>
						<td rowspan="2">한성대입구</td> 
						<td>당고개방면</td>
						<td>9-2</td>
					</tr>
					<tr>
						<td>신도림방면</td>
						<td>8-2</td>
						<td>외선</td>
						<td>6-1</td>
						<td>오금방면</td>
						<td>4-4</td>
						<td>오이도방면</td>
						<td>8-1</td>
					</tr>
					<tr>
						<td rowspan="2">청량리</td> 
						<td>소요산방면</td>
						<td>9-1</td>
						<td rowspan="2">잠실</td>  
						<td>내선</td>
						<td>7-3</td>
						<td rowspan="2">경복궁</td> 
						<td>대화방면</td>
						<td>1-1</td>
						<td rowspan="2">혜화</td> 
						<td>당고개방면</td>
						<td>2-2</td>
					</tr>
					<tr>
						<td>신도림방면</td>
						<td>4-3</td>
						<td>외선</td>
						<td>3-3</td>
						<td>오금방면</td>
						<td>10-1</td>
						<td>오이도방면</td>
						<td>7-3</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">잠실새내</td>  
						<td>내선</td>
						<td>3-3</td>
						<td rowspan="2">종로3가</td> 
						<td>대화방면</td>
						<td>5-1</td>
						<td rowspan="2">동대문</td> 
						<td>당고개방면</td>
						<td>4-2</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>2-1</td>
						<td>오금방면</td>
						<td>4-3</td>
						<td>오이도방면</td>
						<td>2-4</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">종합운동장</td>  
						<td>내선</td>
						<td>1-3</td>
						<td rowspan="2">충무로</td> 
						<td>대화방면</td>
						<td>8-1</td>
						<td rowspan="2">동대문역사<br/>문화공원</td> 
						<td>당고개방면</td>
						<td>4-2</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>2-2</td>
						<td>오금방면</td>
						<td>3-2</td>
						<td>오이도방면</td>
						<td>5-1</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">삼성</td>  
						<td>내선</td>
						<td>9-1</td>
						<td rowspan="2">약수</td> 
						<td>대화방면</td>
						<td>3-3</td>
						<td rowspan="2">충무로</td> 
						<td>당고개방면</td>
						<td>1-2</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>3-3</td>
						<td>오금방면</td>
						<td>4-1</td>
						<td>오이도방면</td>
						<td>5-2</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">방배</td>  
						<td>내선</td>
						<td>1-4</td>
						<td rowspan="2">금호</td> 
						<td>대화방면</td>
						<td>10-2</td>
						<td rowspan="2">회현</td> 
						<td>당고개방면</td>
						<td>8-3</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>10-1</td>
						<td>오금방면</td>
						<td>4-3</td>
						<td>오이도방면</td>
						<td>7-1</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">서울대입구</td>  
						<td>내선</td>
						<td>6-2</td>
						<td rowspan="2">옥수</td> 
						<td>대화방면</td>
						<td>5-2</td>
						<td rowspan="2">서울역</td> 
						<td>당고개방면</td>
						<td>8-1</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>5-3</td>
						<td>오금방면</td>
						<td>1-3</td>
						<td>오이도방면</td>
						<td>1-1</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">봉천</td>  
						<td>내선</td>
						<td>3-1</td>
						<td rowspan="2">압구정</td> 
						<td>대화방면</td>
						<td>1-1</td>
						<td rowspan="2">숙대입구</td> 
						<td>당고개방면</td>
						<td>1-3</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>9-3</td>
						<td>오금방면</td>
						<td>8-3</td>
						<td>오이도방면</td>
						<td>4-4</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">신림</td>  
						<td>내선</td>
						<td>2-3</td>
						<td rowspan="2">도곡</td> 
						<td>대화방면</td>
						<td>1-4</td>
						<td rowspan="2">동작</td> 
						<td>당고개방면</td>
						<td>7-1</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>7-4</td>
						<td>오금방면</td>
						<td>7-1</td>
						<td>오이도방면</td>
						<td>1-3</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">신대방</td>  
						<td>내선</td>
						<td>10-1</td>
						<td rowspan="2">대청</td> 
						<td>대화방면</td>
						<td>3-3</td>
						<td rowspan="2">총신대입구</td> 
						<td>당고개방면</td>
						<td>7-1</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>4-4</td>
						<td>오금방면</td>
						<td>1-1</td>
						<td>오이도방면</td>
						<td>6-1</td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">구로디지털<br/>단지</td>  
						<td>내선</td>
						<td>1-3</td>
						<td rowspan="2">수서</td> 
						<td>대화방면</td>
						<td>10-4</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>6-4</td>
						<td>오금방면</td>
						<td>5-1</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">당산</td>  
						<td>내선</td>
						<td>10-2</td>
						<td rowspan="2">가락시장</td> 
						<td>대화방면</td>
						<td>6-4</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>2-3</td>
						<td>오금방면</td>
						<td>4-4</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">홍대입구</td>  
						<td>내선</td>
						<td>7-2</td>
						<td rowspan="2">오금</td> 
						<td>대화방면</td>
						<td>5-1</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>3-2</td>
						<td>오금방면</td>
						<td>6-1</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">신촌</td>  
						<td>내선</td>
						<td>7-2</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>5-2</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">아현</td>  
						<td>내선</td>
						<td>5-1</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>8-1</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">충정로</td>  
						<td>내선</td>
						<td>9-1</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>2-4</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">신답</td>  
						<td>내선</td>
						<td>1-3</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>1-1</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2">용두</td>  
						<td>내선</td>
						<td>4-3</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td>외선</td>
						<td>4-4</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div><br/><br/>
		
		<div class = "table_box">
			<table id = "con_table">
				<colgroup>
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
					<col width = "8%;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col" colspan="3">5호선(19역)</th><!-- scope col 헤더셀이 세로행에 적용된다. row 가로행에 적용 -->
						<th scope="col" colspan="3">6호선(13역)</th>
						<th scope="col" colspan="3">7호선(15역)</th>
						<th scope="col" colspan="3">8호선(4역)</th>
					</tr>
					<tr>
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th> <!-- colspan은 가로로 병합 -->
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th>
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th>
						<th scope="col">역명</th>
						<th scope="col" colspan="2">승·하차 위치</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td rowspan="2">개화산</td>  <!-- rowspan은 세로로 병합 -->
						<td>방화방면</td>
						<td>8-2</td>
						<td rowspan="2">응암</td> 
						<td>역촌방면</td>
						<td>1-1</td>
						<td rowspan="2">도봉산</td>  
						<td>장암방면</td>
						<td>8-3</td>
						<td rowspan="2">몽촌토성</td> 
						<td>잠실방면</td>
						<td>1-1</td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>4-4</td>
						<td>봉화산방면</td>
						<td>6-3</td>
						<td>부평구청<br/>방면</td>
						<td>4-3</td>
						<td>모란방면</td>
						<td>3-2</td>
					</tr>
					<tr>
						<td rowspan="2">김포공항</td> 
						<td>방화방면</td>
						<td>7-3</td>
						<td rowspan="2">불광</td>  
						<td>응암방면</td>
						<td>2-2</td>
						<td rowspan="2">중계</td> 
						<td>장암방면</td>
						<td>7-4</td>
						<td rowspan="2">산성</td> 
						<td>잠실방면</td>
						<td>1-3</td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>8-1</td>
						<td></td>
						<td></td>
						<td>부평구청<br/>방면</td>
						<td>7-3</td>
						<td>모란방면</td>
						<td>1-4</td>
					</tr>
					<tr>
						<td rowspan="2">발산</td> 
						<td>방화방면</td>
						<td>5-1</td>
						<td rowspan="2">독바위</td>  
						<td>응암방면</td>
						<td>1-2</td>
						<td rowspan="2">공릉</td> 
						<td>장암방면</td>
						<td>8-1</td>
						<td rowspan="2">단대오거리</td> 
						<td>잠실방면</td>
						<td>1-4</td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>8-2</td>
						<td></td>
						<td></td>
						<td>부평구청<br/>방면</td>
						<td>1-1</td>
						<td>모란방면</td>
						<td>1-3</td>
					</tr>
					<tr>
						<td rowspan="2">화곡</td> 
						<td>방화방면</td>
						<td>6-3</td>
						<td rowspan="2">연신내</td>  
						<td>응암방면</td>
						<td>1-1</td>
						<td rowspan="2">중화</td> 
						<td>장암방면</td>
						<td>7-2</td>
						<td rowspan="2">모란</td> 
						<td>잠실방면</td>
						<td>1-4</td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>6-4</td>
						<td></td>
						<td></td>
						<td>부평구청<br/>방면</td>
						<td>7-2</td>
						<td>모란방면</td>
						<td>3-2</td>
					</tr>
					<tr>
						<td rowspan="2">목동</td> 
						<td>방화방면</td>
						<td>6-1</td>
						<td rowspan="2">구산</td>  
						<td>응암방면</td>
						<td>1-1</td>
						<td rowspan="2">상봉</td> 
						<td>장암방면</td>
						<td>7-4</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>7-2</td>
						<td></td>
						<td></td>
						<td>부평구청<br/>방면</td>
						<td>1-3</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">신길</td> 
						<td>방화방면</td>
						<td>5-3</td>
						<td rowspan="2">월드컵경기장</td>  
						<td>응암방면</td>
						<td>4-1</td>
						<td rowspan="2">면목</td> 
						<td>장암방면</td>
						<td>8-1</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>5-4</td>
						<td>봉화산방면</td>
						<td>8-1</td>
						<td>부평구청<br/>방면</td>
						<td>2-1</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">충정로</td> 
						<td>방화방면</td>
						<td>1-2</td>
						<td rowspan="2">합정</td>  
						<td>응암방면</td>
						<td>8-2</td>
						<td rowspan="2">용마산</td> 
						<td>장암방면</td>
						<td>2-1</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>3-2</td>
						<td>봉화산방면</td>
						<td>3-4</td>
						<td>부평구청<br/>방면</td>
						<td>6-4</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">서대문</td> 
						<td>방화방면</td>
						<td>5-4</td>
						<td rowspan="2">녹사평</td>  
						<td>응암방면</td>
						<td>8-1</td>
						<td rowspan="2">건대입구</td> 
						<td>장암방면</td>
						<td>3-3</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>7-2</td>
						<td>봉화산방면</td>
						<td>1-1</td>
						<td>부평구청<br/>방면</td>
						<td>1-1</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">광화문</td> 
						<td>방화방면</td>
						<td>8-3</td>
						<td rowspan="2">버티고개</td>  
						<td>응암방면</td>
						<td>6-2</td>
						<td rowspan="2">강남구청</td> 
						<td>장암방면</td>
						<td>7-4</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>4-2</td>
						<td>봉화산방면</td>
						<td>5-1</td>
						<td>부평구청<br/>방면</td>
						<td>2-4</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">동대문역사<br/>문화공원</td> 
						<td>방화방면</td>
						<td>1-2</td>
						<td rowspan="2">창신</td>  
						<td>응암방면</td>
						<td>1-1</td>
						<td rowspan="2">고속터미널</td> 
						<td>장암방면</td>
						<td>2-2</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>8-3</td>
						<td>봉화산방면</td>
						<td>6-4</td>
						<td>부평구청<br/>방면</td>
						<td>8-1</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">청구</td> 
						<td>방화방면</td>
						<td>7-2</td>
						<td rowspan="2">고려대</td>  
						<td>응암방면</td>
						<td>8-1</td>
						<td rowspan="2">남성</td> 
						<td>장암방면</td>
						<td>1-2</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>8-1</td>
						<td>봉화산방면</td>
						<td>1-1</td>
						<td>부평구청<br/>방면</td>
						<td>6-2</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">신금호</td> 
						<td>방화방면</td>
						<td>2-3</td>
						<td rowspan="2">월곡</td>  
						<td>응암방면</td>
						<td>1-1</td>
						<td rowspan="2">장승배기</td> 
						<td>장암방면</td>
						<td>8-3</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>8-2</td>
						<td>봉화산방면</td>
						<td>6-3</td>
						<td>부평구청<br/>방면</td>
						<td>4-4</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">군자</td> 
						<td>방화방면</td>
						<td>5-3</td>
						<td rowspan="2">화랑대</td>  
						<td>응암방면</td>
						<td>5-3</td>
						<td rowspan="2">가산디지털<br/>단지</td> 
						<td>장암방면</td>
						<td>6-4</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>7-3</td>
						<td>봉화산방면</td>
						<td>5-3</td>
						<td>부평구청<br/>방면</td>
						<td>2-1</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">아차산</td> 
						<td>방화방면</td>
						<td>3-3</td>
						<td rowspan="2"></td>  
						<td></td>
						<td></td>
						<td rowspan="2">철산</td> 
						<td>장암방면</td>
						<td>1-2</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>1-2</td>
						<td></td>
						<td></td>
						<td>부청구청<br/>방면</td>
						<td>8-1</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">광나루</td> 
						<td>방화방면</td>
						<td>5-3</td>
						<td rowspan="2"></td>  
						<td></td>
						<td></td>
						<td rowspan="2">천왕</td> 
						<td>장암방면</td>
						<td>1-2</td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>1-1</td>
						<td></td>
						<td></td>
						<td>부청구청<br/>방면</td>
						<td>8-3</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td rowspan="2">천호</td> 
						<td>방화방면</td>
						<td>1-2</td>
						<td rowspan="2"></td>  
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동<br/>마천방면</td>
						<td>1-4</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr><tr>
						<td rowspan="2">굽은다리</td> 
						<td>방화방면</td>
						<td>4-2</td>
						<td rowspan="2"></td>  
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동방면</td>
						<td>5-4</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr><tr>
						<td rowspan="2">명일</td> 
						<td>방화방면</td>
						<td>1-3</td>
						<td rowspan="2"></td>  
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>상일동방면</td>
						<td>3-4</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr><tr>
						<td rowspan="2">거여</td> 
						<td>방화방면</td>
						<td>6-3</td>
						<td rowspan="2"></td>  
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
						<td rowspan="2"></td> 
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>마천방면</td>
						<td>8-3</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
					
		</div>	
	   </div>
  </article>
</section>

<footer id = "footer"></footer>	
</body>
</html>