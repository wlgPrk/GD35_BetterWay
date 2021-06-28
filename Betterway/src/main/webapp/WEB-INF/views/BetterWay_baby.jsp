<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수유실</title>
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
 	background-image:url("./images/서브타이틀_배경.png");       
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
display: inline-block;

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
}
#hr{
	margin-top :15px;
}

#sub_title{
	font-size: 15pt;
}
.con_box{
	width : 1080px;
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
	margin-top : 2900px;
	background: #023459;
}

*{
    margin: 0;
    padding: 0;s
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
	width:50px;
	margin-bottom: -10px;
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
                    		<a href="baby.html">수유실</a>
                    		<a href="wheelchair.html">휠체어 이용 승·하차 안내</a>
                    		<a href="cycle.html">자전거 보관함</a>
                    		<a href="happy.html">행복지대</a>
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
		                  	홈>역 내외 시설>내부 편의시설>수유실 &nbsp;
		                  	</div>
		            </div>
    	</div>
		<div id="box_con">
			<img id ="box_con_img"src="images/수유실검.png"/>
			<div id="box_con_text">
			수유실
			</div>
			<div class="con_box">
			<hr id = "hr"/>
			<p>수유실에는 유아용침대, 소파, 기저귀교환대, 전자렌지 등 유아수유에 필요한 각종 비품이 구비되어 있습니다.</p>
			<br/>
				
			<div id = "sub_title">1호선[<strong>2개역</strong> 운영]</div>
			<div class = "table_box">
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> <!-- 이렇게 주려면 이 테이블의 width도 지정해줘야함 -->
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>					
					</thead>
					<tbody>
						<tr>
							<td>종로3가(1)역</td>
							<td>6110-1301</td>
							<td>동대문역</td>
							<td>6110-1281</td>
						</tr>
					</tbody>				
				</table>
			</div><br/>
			
			<div id = "sub_title">2호선[<strong>11개역</strong> 운영]</div>
			<div class = "table_box">
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>					
					</thead>
					<tbody>
						<tr>
							<td>시청역</td>
							<td>6110-2011</td>
							<td>성수역</td>
							<td>6110-2111</td>
						</tr>
						<tr>
							<td>강변역</td>
							<td>6110-2141</td>
							<td>잠실역</td>
							<td>6110-2161</td>
						</tr>
						<tr>
							<td>삼성역</td>
							<td>6110-2191</td>
							<td>강남역</td>
							<td>6110-2221</td>
						</tr>
						<tr>
							<td>신림역</td>
							<td>6110-2301</td>
							<td>대림역</td>
							<td>6110-2331</td>
						</tr>
						<tr>
							<td>신촌역</td>
							<td>6110-2401</td>
							<td>영등포구청역</td>
							<td>6110-2361</td>
						</tr>
						<tr>
							<td>신설동역</td>
							<td>6110-1371</td>
							<td></td>
							<td></td>
						</tr>
					</tbody>				
				</table>
			</div><br/>
	
			<div id = "sub_title">3호선[<strong>6개역</strong> 운영]</div>
			<div class = "table_box">
			<table id="con_table">
				<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
				<thead>
					<tr>
						<th>역명</th>
						<th>연락처</th>
						<th>역명</th>
						<th>연락처</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>구파발역</td>
						<td>6110-3201</td>
						<td>독립문역</td>
						<td>6110-3261</td>
					</tr>
					<tr>
						<td>옥수역</td>
						<td>6110-3351</td>
						<td>고속터미널역</td>
						<td>6110-3391</td>
					</tr>
					<tr>
						<td>양재역</td>
						<td>6110-3421</td>
						<td>도곡역</td>
						<td>6110-3441</td>
					</tr>
				</tbody>
			</table>
			</div><br/>
			
			<div id = "sub_title">4호선[<strong>7개역</strong>운영]</div>
				<div class = "table_box">
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>노원역</td>
							<td>6110-4111</td>
							<td>미아사거리역</td>
							<td>6110-4161</td>
						</tr>
						<tr>
							<td>길음역</td>
							<td>6110-4171</td>
							<td>동대문역사문화공원역</td>
							<td>6110-4221</td>
						</tr>
						<tr>
							<td>서울역</td>
							<td>6110-4261</td>
							<td>이촌역</td>
							<td>6110-4301</td>
						</tr>
						<tr>
							<td>사당역</td>
							<td>6110-4331</td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
				</div><br/>
				
			<div id = "sub_title">5호선[<strong>27개역</strong>운영]</div>
				<div class = "table_box">
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>김포공항역</td>
							<td>6311-5121</td>
							<td>우장산역</td>
							<td>6311-5161</td>
						</tr>
						<tr>
							<td>까치산역</td>
							<td>6311-5181</td>
							<td>목동역</td>
							<td>6311-5201</td>
						</tr>
						<tr>
							<td>영등포구청역</td>
							<td>6311-5231</td>
							<td>신길역</td>
							<td>6311-5251</td>
						</tr>
						<tr>
							<td>여의도역</td>
							<td>6311-5261</td>
							<td>여의나루역</td>
							<td>6311-5271</td>
						</tr>
						<tr>
							<td>공덕역</td>
							<td>6311-5291</td>
							<td>충정로역</td>
							<td>6311-5311</td>
						</tr>
						<tr>
							<td>광화문역</td>
							<td>6311-5331</td>
							<td>동대문역사문화공원역</td>
							<td>6311-5361</td>
						</tr>
						<tr>
							<td>청구역</td>
							<td>6311-5371</td>
							<td>왕십리역</td>
							<td>6311-5401</td>
						</tr>
						<tr>
							<td>답십리역</td>
							<td>6311-5421</td>
							<td>군자역</td>
							<td>6311-5441</td>
						</tr>
						<tr>
							<td>아차산역</td>
							<td>6311-5451</td>
							<td>천호역</td>
							<td>6311-5471</td>
						</tr>
						<tr>
							<td>강동역</td>
							<td>6311-5481</td>
							<td>고덕역</td>
							<td>6311-5521</td>
						</tr>
						<tr>
							<td>올림픽공원역</td>
							<td>6311-5551</td>
							<td>거여역역</td>
							<td>6311-5591</td>
						</tr>
						<tr>
							<td>강일역</td>
							<td>6311-5611</td>
							<td>미사역</td>
							<td>6311-5621</td>
						</tr>
						<tr>
							<td>하남풍산역</td>
							<td>6311-5631</td>
							<td>하남시청역</td>
							<td>6311-5641</td>
						</tr>
						<tr>
							<td>하남검단산역</td>
							<td>6311-5651</td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
				</div><br/>
				
			<div id = "sub_title">6호선[<strong>11개역</strong>운영]</div>
				<div class="table_box"></div>
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>응암역</td>
							<td>6311-6101</td>
							<td>불광역</td>
							<td>6311-6121</td>
						</tr>
						<tr>
							<td>월드컵경기장역</td>
							<td>6311-6191</td>
							<td>합정역</td>
							<td>6311-6221</td>
						</tr>
						<tr>
							<td>대흥역</td>
							<td>6311-6251</td>
							<td>삼각지역</td>
							<td>6331-6281</td>
						</tr>
						<tr>
							<td>이태원역</td>
							<td>6311-6301</td>
							<td>약수역</td>
							<td>6311-6331</td>
						</tr>
						<tr>
							<td>상월곡역</td>
							<td>6311-6421</td>
							<td>동묘앞역</td>
							<td>6311-6361</td>
						</tr>
						<tr>
							<td>안암역</td>
							<td>6311-6391</td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table><br/>
				
			<div id = "sub_title">7호선[<strong>23개역</strong>운영]</div>
				<div class = "table_box">
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>수락산역</td>
							<td>6311-7111</td>
							<td>노원역</td>
							<td>6311-7131</td>
						</tr>
						<tr>
							<td>하계역</td>
							<td>6311-7151</td>
							<td>태릉입구역</td>
							<td>6311-7171</td>
						</tr>
						<tr>
							<td>상봉역</td>
							<td>6311-7201</td>
							<td>부평구청역</td>
							<td>6311-7591</td>
						</tr>
						<tr>
							<td>어린이대공원역</td>
							<td>6311-7261</td>
							<td>뚝섬유원지역</td>
							<td>6311-7281</td>
						</tr>
						<tr>
							<td>논현역</td>
							<td>6311-7321</td>
							<td>고속터미널역</td>
							<td>6311-7341</td>
						</tr>
						<tr>
							<td>이수역</td>
							<td>6311-7361</td>
							<td>대림역</td>
							<td>6311-7441</td>
						</tr>
						<tr>
							<td>가산디지털단지역</td>
							<td>6311-7461</td>
							<td>광명사거리역</td>
							<td>6311-7481</td>
						</tr>
						<tr>
							<td>온수역</td>
							<td>6311-7501</td>
							<td>까치울역</td>
							<td>6311-7511</td>
						</tr>
						<tr>
							<td>부천종합운동장역</td>
							<td>6311-7521</td>
							<td>춘의역</td>
							<td>6311-7531</td>
						</tr>
						<tr>
							<td>신중동역</td>
							<td>6311-7541</td>
							<td>부천시청역</td>
							<td>6311-7551</td>
						</tr>
						<tr>
							<td>상동역</td>
							<td>6311-7561</td>
							<td>삼산체육관역</td>
							<td>6311-7571</td>
						</tr>
						<tr>
							<td>굴포천역</td>
							<td>6311-7581</td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
				</div><br/>
				
			<div id = "sub_title">8호선[<strong>6개역</strong>운영]</div>
				<div class = "table_box">
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>모란역</td>
							<td>6311-8261</td>
							<td>몽촌토성역</td>
							<td>6311-8131</td>
						</tr>
						<tr>
							<td>잠실역</td>
							<td>6311-8141</td>
							<td>가락시장역</td>
							<td>6311-8171</td>
						</tr>
						<tr>
							<td>장지역</td>
							<td>6311-8191</td>
							<td>남한산성입구역</td>
							<td>6331-8221</td>
						</tr>
					</tbody>
				</table>
				</div><br/>
				
			<div id = "sub_title">9호선 2·3단계[<strong>12개역</strong>운영]</div>
				<div class = "table_box">
				<table id="con_table">
					<colgroup>
						<col width = "25%;"> 
						<col width = "25%;">
						<col width = "25%;">
						<col width = "25%;">
					</colgroup>
					<thead>
						<tr>
							<th>역명</th>
							<th>연락처</th>
							<th>역명</th>
							<th>연락처</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>언주역</td>
							<td>2656-0926</td>
							<td>석촌역</td>
							<td>2656-0933</td>
						</tr>
						<tr>
							<td>삼성중앙역</td>
							<td>2656-0928</td>
							<td>송파나루역</td>
							<td>2656-0934</td>
						</tr>
						<tr>
							<td>봉은사역</td>
							<td>2656-0929</td>
							<td>한성백제역</td>
							<td>2656-0935</td>
						</tr>
						<tr>
							<td>종합운동장역</td>
							<td>2656-0930</td>
							<td>올림픽공원역</td>
							<td>2656-0936</td>
						</tr>
						<tr>
							<td>삼전역</td>
							<td>2656-0931</td>
							<td>둔촌오륜역</td>
							<td>2656-0937</td>
						</tr>
						<tr>
							<td>석촌고분역</td>
							<td>2656-0932</td>
							<td>중앙보훈병원역</td>
							<td>2656-0938</td>
						</tr>
					</tbody>
				</table>
				</div><br/>
				</div>
		</div>	
	   </div>
  </article>
</section>

<footer id = "footer"></footer>	
</body>
</html>