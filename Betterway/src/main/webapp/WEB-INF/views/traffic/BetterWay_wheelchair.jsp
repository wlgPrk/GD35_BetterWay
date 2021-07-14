<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>휠체어 이용안내</title>
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
	margin-top :16px;
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
.table_box1,.table_box2,.table_box3,.table_box4,
.table_box5,.table_box6,.table_box7,.table_box8{
	width:270px;
	border-top:2px solid #82b2da;
	display: inline-block;
	vertical-align: top;
	font-size: 11pt;
}

.subLine_table,.subLine_table2{
	width:100%;
	font-size: 0pt;
}
#con_table{
	width : 100%;
	border-collapse:collapse;
	border-spacing:0px;
}
#con_subLine_table{
	width : 270px;
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
td{
	height:61px;
}
#footer{
	width:100%;
	height:75px;
	margin-top : 5900px;
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
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
		reloadList();
});


function drawList(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"33%;\">"
	html +=	"	<col width = \"36%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">1호선(6역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 1){
				console.log(nowSub);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}else if(i<44){
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\"></td>"  
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}
			count++;
		}
		nowSub = list[i].SUBLINE_NO;
	} 
	   $(".table_box1").html(html);
	}
	
function drawList2(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"35%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">2호선(22역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 2){
				console.log(nowSub);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}
		nowSub = list[i].SUBLINE_NO;
	} 
	   $(".table_box2").html(html);
	}
	
function drawList3(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"33%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">3호선(17역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 3){
				console.log(nowSub);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}else if(i>56&&i<101){
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\"></td>"  
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}
			count++;
		}
		nowSub = list[i].SUBLINE_NO;
	} 
	   $(".table_box3").html(html);
	}
	
function drawList4(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"36%;\">"
	html +=	"	<col width = \"36%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">4호선(14역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 4){
				console.log(nowSub);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}else if(i>129&&i<146){
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\"></td>"  
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}
			count++;
		}
		nowSub = list[i].SUBLINE_NO;
	} 
	   $(".table_box4").html(html);
	}
	
function drawList5(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"36%;\">"
	html +=	"	<col width = \"36%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">5호선(19역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 5){
				console.log(nowSub);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}
		nowSub = list[i].SUBLINE_NO;
	} 
	   $(".table_box5").html(html);
	}
	
function drawList6(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"33%;\">"
	html +=	"	<col width = \"36%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">6호선(13역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 6){
				console.log(nowSub);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}else if(i>182&&i<199){
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\"></td>"  
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}
			count++;
		}
		nowSub = list[i].SUBLINE_NO;
	} 
	   $(".table_box6").html(html);
	}
	
function drawList7(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"35%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">7호선(15역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 7){
				console.log(nowSub);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}else if(i>212){
			for(var j = 0; j<8; j++){
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\"></td>"  
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td></td>"
				html += 	"<td></td>"
				html += "</tr>"
			}
			count++;
			}
		}
		nowSub = list[i].SUBLINE_NO;
	} 
	   $(".table_box7").html(html);
	}
	
function drawList8(list){
	   var html = "";
	   var count = 0;
	   
	   var nowSub = list[0].SUBLINE_NO;
	   //시작 그리기 <tbody>까지
	html += "<table id=\"con_subLine_table\">"
	html +=	"<colgroup>"            
	html +=	"	<col width = \"35%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"	<col width = \"33%;\">"
	html +=	"</colgroup>"           
	html +=	"<thead>"
	html +=	"	<tr>"
	html +=	"   <th scope=\"col\" colspan=\"3\">8호선(4역)</th>"
	html +=	"	</tr>"
	html +=	"	<tr>"
	html +=	"		<th scope=\"col\">역명</th>"
	html +=	"		<th scope=\"col\" colspan=\"2\">승·하차 위치</th>"
	html +=	"	</tr>"
	html +=	"</thead>"
	html +=	"<tbody>"
	
	for(var i = 0; i < list.length; i++){
		if(nowSub == 8){
				console.log(i);
			if(count % 2 == 0){
				html += "<tr>"
				html += 	"<td rowspan=\"2\">"+ list[i].SUBWAY_STATION_NAME +"</td>"  
				html += 	"<td>" + list[i].DIRECTION + "</td>"
				html += 	"<td>" + list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}else{
				html += "<tr>"
				html += 	"<td>"+ list[i].DIRECTION + "</td>"
				html += 	"<td>"+ list[i].PLATFORM_NO + "</td>"
				html += "</tr>"
			}
			count++;
		}
		nowSub = list[i].SUBLINE_NO;
	}for(var j = 0; j<31; j++){
				if(count % 2 == 0){
					html += "<tr>"
					html += 	"<td rowspan=\"2\"></td>"  
					html += 	"<td></td>"
					html += 	"<td></td>"
					html += "</tr>"
				}else{
					html += "<tr>"
					html += 	"<td></td>"
					html += 	"<td></td>"
					html += "</tr>"
				}
				count++;
	} //for
	   $(".table_box8").html(html);
	}
	
function reloadList(){
	var params = $("#actionForm").serialize();
	
	 $.ajax({
         url : "wheelchair_List", //stationEstaInfo 컨트롤러에 있음
         type : "post",  
         dataType :"json", 
         data : params,
         success : function(res){
             drawList(res.list);
             drawList2(res.list);
             drawList3(res.list);
             drawList4(res.list);
             drawList5(res.list);
             drawList6(res.list);
             drawList7(res.list);
             drawList8(res.list);
             console.log("success");
         },
         error : function(request,status,error){
            console.log(error);
         }
      });
}
</script>
</head>
<body>
<form action="#" id="actionForm" method="post"></form>

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
		
		<div class = "subLine_table">
		<div class = "table_box1"></div>
		<div class = "table_box2"></div>
		<div class = "table_box3"></div>
		<div class = "table_box4"></div>
		</div><br/><br/><br/>
		
		<div class = "subLine_table2">
		<div class = "table_box5"></div>
		<div class = "table_box6"></div>
		<div class = "table_box7"></div>
		<div class = "table_box8"></div>
		</div>
					
		</div>	
	   </div>
  </article>
</section>

<footer id = "footer"></footer>	
</body>
</html>