<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>편의시설 메인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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

 /* .box_title{
    position: relative;
 	background-image:url("resources/images/sub.png");       
    background-size : cover;                     
  height:216px;

  }*/

.img_cov{
 backdrop-filter: blur(5px);
background-image:url("resources/images/sub.png");       
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

}
#box_con_img{
padding:5px;
font-size: 25pt;
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

#side_menu_sub{
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
	margin-top : 500px;
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


#sub_tit{
	font-size: 15pt;
}
.con_box{
	width : 1080px;
	margin : auto;
}
.tab_box{
	width:100%;
	border-top:2px solid #82b2da;
}
#con_tab{
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

#under_box{
	width:1080px;
	height:150px;
}

</style>
</head>
<body>

<header>
  <a class="main" href="BetterWay_main">BetterWay</a>
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
		<div id="sidebar">
			<div id="sidebar_top">
			역 내외 시설
			</div>
			
			<div id="side_menu">
				 <ul class="side_menu_sub">
           			 <li class="nav" id="inside_esta">
               		 <a href="#inside_esta" class="btn">내부 편의시설</a>
                		<div class="side_menu_sub_down">
                    		<a href="BetterWay_baby">수유실</a>
                    		<a href="BetterWay_wheelchair">휠체어 이용 승·하차 안내</a>
                    		<a href="BetterWay_cycle">자전거 보관함</a>
                    		<a href="BetterWay_happy">행복지대</a>
                		</div>
           			 </li>
           		 <li class="nav" id="outside_esta">
                <a href="BetterWay_esta_out" class="btn">외부시설</a>
                	<div class="side_menu_sub_down">
                	</div>
            		</li>
       			 </ul>
			</div>
			
		</div>
		<div id="box_top">
		
		 <div class="box_tit">
        
		        <div class="img_cov">
		      
		                  <div class="img_cov_con">
		                  	홈>역 내외 시설 &nbsp;
		                  	</div>
		            </div>
    	</div>
    	
    	
    	<div id="box_con">
			<span id="box_con_cir"><img alt="편의시설" src="resources/images/eleva.png" width="50px" height="50px"> </span>
			<span id="box_con_txt">
			역 내부 편의시설 현황
			</span>
			
			<div class="con_box">
			<hr id = "hr"/>
			<p>편의 시설에 대한 자세한 정보는 좌측 메뉴에서 확인 할 수있습니다.</p> 
			
			<br/>
				
			<div id = "sub_tit"><strong>배려시설 현황</strong></div>
			<div class = "tab_box">
				<table id="con_tab">
				<div class = "subLine">
				<span class="wrap">
				<input type="radio" name = "line_1" onclick ="rd1;" checked="checked" id = cheak_line1>
				1호선
				</span>
				<span class=wrap>
				<input type="radio" name = "line_2" onclick ="rd2;"  id = cheak_line2>
				2호선
				</span>
				<span class=wrap>
				<input type="radio" name = "line_3" onclick ="rd3;"  id = cheak_line3>
				3호선
				</span>
				<span class=wrap>
				<input type="radio" name = "line_4" onclick ="rd4;" id = cheak_line4>
				4호선
				</span>
				<span class=wrap>
				<input type="radio" name = "line_5" onclick ="rd5;"  id = cheak_line5>
				5호선
				</span>
				<span class=wrap>
				<input type="radio" name = "line_6" onclick ="rd6;"  id = cheak_line6>
				6호선
				</span>
				<span class=wrap>			
				<input type="radio" name = "line_7" onclick ="rd7;"  id = cheak_line7>
				7호선
				</span>
				<span class=wrap>
				<input type="radio" name = "line_8" onclick ="rd8;"  id = cheak_line8>
				8호선
				</span>
				<span class=wrap>
				<input type="radio" name = "line_9" onclick ="rd9;"  id = cheak_line9>
				9호선
				</span>	
				</div>
					
					<tbody>
					<!--<tr class="td-total_1"><td>소계</td>	<td>36</td>	<td>31</td>	<td></td>	<td>9</td>	<td>10</td>	<td>3</td>	<td>12</td>	<td>219</td></tr>-->
					<tr>	<td>서울역</td><td>4</td>	<td>5</td>	<td></td>	<td>1</td>	<td>1</td>	<td></td>	<td>1</td>	<td>33</td></tr>
					<tr><td>시청역</td>	<td>3</td>	<td>3</td>	<td></td>	<td>　</td>	<td>1</td>	<td></td>	<td>1</td>	<td>32</td></tr>
					<tr><td>종각역</td>	<td>4</td>	<td>2</td>	<td></td>	<td>　</td>	<td>1</td>	<td>1</td>	<td>1</td>	<td>38</td></tr>
					<tr><td>종로3가역</td>	<td>3</td>	<td>4</td>	<td></td>	<td></td>	<td>1</td>	<td>1</td>	<td>1</td>	<td>48</td></tr>
					<tr><td>종로5가역</td>	<td>3</td>	<td>　</td>	 <td></td>	<td>　</td>	<td>1</td>	<td></td>	<td>1</td>	<td>32</td></tr>
					<tr><td>동대문역</td>	<td>3</td>	<td>1</td>	<td></td>	<td>　</td>	<td>1</td>	<td></td>	<td>1</td>	<td>4</td></tr>
					<tr><td>동묘앞역</td>	<td>7</td>	<td>12</td>	<td></td>	<td>　</td>	<td>1</td>	<td>1</td>	<td>4</td>	<td>37</td></tr>
					<tr><td>신설동역</td>	<td>5</td>	<td>　</td>		<td></td>	<td>6</td>	<td>1</td>	<td></td>	<td>1</td>	<td></td></tr>
					<tr><td>제기동역</td>	<td>3</td>	<td>2</td>	<td></td>	<td>　</td>	<td>1</td>	<td>1</td>	<td>1</td>	<td></td></tr>
					<tr><td>청량리역</td>	<td>1</td>	<td>4</td>	<td></td>	<td>2</td>	<td>1</td>	<td></td>	<td>1</td>	<td></td></tr>
			</tbody>
					</table>
    	
    	</div>
    	<br/>
    	</div>
    	
    	
    	
    	</div>
		
    	</div>
    	
    	
 </article>
</section>


</body>
</html>