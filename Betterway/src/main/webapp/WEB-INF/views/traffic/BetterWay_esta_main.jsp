<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>편의시설 메인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


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
    min-height: 1000px;
  margin: 0px auto;
    width:1440px;
  
  
}

section:after { /* 뒷배경 */
  content: "";
  display: table;
  
  clear: both;
  
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
	margin-top :46px;
}

#sub_title{
	font-size: 15pt;
}
.con_box{
	width : 1080px;
	
	
	margin: auto;
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
#subLine{
 font-size: 15px;
}
#sub_box{
position: relative;
display: inline-block;

height: 100%;
top:46px;
}
#box_con_cir{
position: relative;
display: inline-block;

}
#box_con_txt{
position: relative;
display: inline-block;


}

</style>
<script type="text/javascript" 
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	reloadList();



$("#search").on("click",function(){
var params = $("#actionForm").serialize();
		//ajax
		$.ajax({
			url: "esta_mains", 
			type: "post", 
			dataType: "json",
			data: params, 
			success: function(res) { 
				drawList(res.list);
				
			},
			error: function(request, status, error) {
				console.log(error);
			}
		});//ajax end
	});//searchBtn
	});

	
		
	
	
	function reloadList() {
		var params =$("#actionForm").serialize();
		 $.ajax({
          url: "esta_mains", 
          type: "post", 
          dataType: "json", 
          data: params, 
          success: function(res){ 
         	 drawList(res.list);
         	
          },
      	error: function(request, status, error) { 
				
				console.log(error);
			}
       });
		 
	}
	//그리기
	function drawList(list) {
		var html= "";
		
		for(var d of list){
			html += "<tr> ";
			html += "<td>" + d.SUBWAY_STATION_NAME + "</td>";
			html += "<td>" + d.ELEV_COUNT + "</td>";
			html += "<td>" + d.ESCA_COUNT + "</td>";
			html += "<td>" + d.MOVINGWALK_COUNT + "</td>";
			html += "<td>" + d.WCHAIR_LIFT_COUNT + "</td>";
			html += "<td>" + d.MV_SAFE_FOOT_COUNT + "</td>";
			html += "<td>" + d.WCHAIR_CHARGER_COUNT + "</td>";
			html += "<td>" + d.DISABLED_TOILET_COUNT + "</td>";
			html += "<td>" + d.VOICE_INDUCER_COUNT + "</td>";
			html += "</tr>";
		}
			$("#con_tab tbody").html(html);	
		
	}




</script>
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
    	<div id = "sub_box">
			<div id="box_con_cir"><img alt="편의시설" src="resources/images/eleva.png" width="50px" height="50px"> </div>
			<div id="box_con_txt" style="font: 20px;">
			역 내부 편의시설 현황
			</div>
			</div>
			
			<div class="con_box">
			<hr id = "hr"/>
			<p>편의 시설에 대한 자세한 정보는 좌측 메뉴에서 확인 할 수있습니다.</p> 
			
			<br/>
			
			<div class = "subLine">
				<div id = "sub_tit">
			<strong>	호선 선택</strong>
				</div>
				<form action="#" id="actionForm" method="post">
				<span class="wrap">

				<input type="radio" name = "line"  value = "1" checked="checked"  id = "cheak_line1">
				<img src="resources/images/line/line1.png" style="width: 22px; height: 22px;">
				1호선
				</span>&nbsp; 
				<span class=wrap>
				<input type="radio" name = "line"  value = "2" id = "cheak_line2">
				<img src="resources/images/line/line2.png" style="width: 22px; height: 22px;">
				2호선
				</span>&nbsp; 
				<span class=wrap>
				<input type="radio" name = "line"  value = "3"  id = "cheak_line3">
				<img src="resources/images/line/line3.png" style="width: 22px; height: 22px;">
				3호선
				</span>&nbsp; 
				<span class=wrap>
				<input type="radio" name = "line" value = "4" id = "cheak_line4">
				<img src="resources/images/line/line4.png" style="width: 22px; height: 22px;">
				4호선
				</span>&nbsp; 
				<span class=wrap>
				<input type="radio" name = "line" value = "5"  id = "cheak_line5">
				<img src="resources/images/line/line5.png" style="width: 22px; height: 22px;">
				5호선
				</span>&nbsp; 
				<span class=wrap>
				<input type="radio" name = "line" value = "6"  id = "cheak_line6">
				<img src="resources/images/line/line6.png" style="width: 22px; height: 22px;">
				6호선
				</span>&nbsp; 
				<span class=wrap>			
				<input type="radio" name = "line" value = "7"  id = "cheak_line7">
				<img src="resources/images/line/line7.png" style="width: 22px; height: 22px;">
				7호선
				</span>&nbsp; 
				<span class=wrap>
				<input type="radio" name = "line" value = "8"  id = "cheak_line8">
				<img src="resources/images/line/line8.png" style="width: 22px; height: 22px;">
				8호선
				</span>&nbsp; 
				<span class=wrap>
				<input type="radio" name = "line" value = "9"  id = "cheak_line9">
				<img src="resources/images/line/line9.png" style="width: 22px; height: 22px;">
				9호선
				</span>	&nbsp; 
				
				<input type="button" value="검색" id="search" name = "search">
				
				</form>
				</div>
				
			<div id = "sub_tit"><strong>배려시설 현황</strong></div>
			<div class = "tab_box">
				<table id="con_tab" >
					<thead>
					<tr><th>역 이름</th>
						<th>엘리베이터</th><th>에스컬레이터</th>
						<th>수평보행기</th><th>휠체어리프트</th>
						<th>이동식안전발판</th><th>전동휠체어급속충전기</th>
						<th>장애인화장실</th><th>음성유도기</th>
					</tr>
					</thead>
					
					<tbody>
					
					
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