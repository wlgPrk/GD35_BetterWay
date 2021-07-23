<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지하철 혼잡도</title>
</head>
<script type="text/javascript">
function popup(){
	window.open('BetterWay_envinfoGuide','팝업창',"width=700,height=1000,top="+(screen.availHeight/2-500)+",left="+(screen.availWidth/2-350)+"");
}
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
  
}

section:after { /* 뒷배경 */
  content: "";
  display: table;
  clear: both;
}

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
	width : 1350px;
	height :  1200px;
	margin : auto;
}
.table_box{
	width:100%;
	border-top:2px solid #82b2da;
	margin-top: 16px;
}
#con_table{
	border-collapse:collapse;
	border-spacing:0px;
}
thead{
	display: table-header-group;
	vertical-align: middle;
}
th,td{
	border : 1px solid #f0f0f5;
	border-collapse: collapse;
	padding : 10px;
}

#footer{
	width:100%;
	height:75px;
	margin-top : 630px;
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
	width:50px;
	margin-bottom: -10px;
}
#selstation{
	width:150px;
	height:30px;
}
#selsubLine{
	width:100px;
	height:30px;
}
#congestion_chart{
	margin-top: 100px;
}
#upLine_btn,#downLine_btn{
	font-size: 12pt;
    border: none;
    border-radius: 5pt;
    background-color: #82b2da;
    margin-top: 5px;
    padding: 5px;
    padding-top: 1px;
}
#chart{
	width:100%;
	height:450px;
}
#chart_title{
	width: 1080px;
    height: 35px;
    text-align: center;
    margin-top: -475px;
    margin-left: -40px;
}

</style>

<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script> <!-- 차트 스크립트 -->

<!-- 샐렉트2 스크립트 -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>

<script type="text/javascript">
//stationEstainfo 컨트롤러에 있음

//1.역검색하면 관련된 호선나오게하기, 호선중복제거 샐렉트박스 선택했을때 값 넘어가는 거 찾기
//2.검색내용을 API에 보내서 관련내용 차트에 받기
//3.차트에 표현하기
$(document).ready(function(){
	$("#selstation").select2();
	$("#selsubLine").select2();
	
	$("#selstation").change(function(){
		$("#subway_station_name").val($("#selstation").val());
		//console.log($("#subway_station_name").val());
		
	 	var params = $("#SearchForm").serialize();
	 	//console.log($("#SearchForm").serialize());
	
	$.ajax({
		url:"congestions",
		type:"post",
		dataType:"json",
		data:params,
		success:function(res){	
			
			changeL(res.data);
		},
		error:function(requet,status,error){
			console.log(error);
			}
		});//congestions ajax끝
	});//$("#selstation").change 함수 끝
	
			/*상행*/
			$("#upLine_btn").on("click",function(){
						
			var a,b,c,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u = 0; //차트data에 넣을 것 평일
			var a1,b1,c1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1 = 0; //차트data에 넣을 것 토요일
			var a2,b2,c2,e2,f2,g2,h2,i2,j2,k2,l2,m2,n2,o2,p2,q2,r2,s2,t2,u2 = 0; //차트data에 넣을 것 일요일
			
			$.ajax({
				/*https://api.odcloud.kr/api/15071311/v1/uddi:a5158b81-27c7-4151-ba6c-b912a6f13d39?page=1&perPage=15&serviceKey=3Fj2wrFDqsoyP7TUxDOYsEhXLRdqJy1f49oI894kJMGYhAOU1Gy6FUVTDyiWS101ShcJsItCxoHp3v6yOQ6cBw%3D%3D ->(데이터 불러오기) */
				url:"https://api.odcloud.kr/api/15071311/v1/uddi:a5158b81-27c7-4151-ba6c-b912a6f13d39?page=1&perPage=1668&serviceKey=3Fj2wrFDqsoyP7TUxDOYsEhXLRdqJy1f49oI894kJMGYhAOU1Gy6FUVTDyiWS101ShcJsItCxoHp3v6yOQ6cBw%3D%3D",
				type:"get",
				dataType:"json",
				success:function(res){
					var html = "";
					console.log(res);
			
					for(var d of res.data){
						//console.log(d.역명);
						//서울은 서울역이라서 따로 처리해야함 - 처리완
						var seoul = $("#selstation").val();
						if($("#selstation").val()=="서울"){
							seoul = "서울역";
						}
						if(seoul==d.역명 && $("#selsubLine").val()==d.호선){
						//console.log(d.역명+","+d.호선);//if 조건은 잘되는 듯
						//console.log(d);
							if(d.방향=="상선" || d.방향=="내선"){
								if(d.요일=="평일"){
									 a = d['5:30~ (%)'];
									 b = d['6:30~ (%)'];
									 c = d['7:30~ (%)'];
									 e = d['8:30~ (%)'];
									 f = d['9:30~ (%)'];
									 g = d['10:30~ (%)'];
									 h = d['11:30~ (%)'];
									 i = d['12:30~ (%)'];
									 j = d['13:30~ (%)'];
									 k = d['14:30~ (%)'];
									 l = d['15:30~ (%)'];
									 m = d['16:30~ (%)'];
									 n = d['17:30~ (%)'];
									 o = d['18:30~ (%)'];
									 p = d['19:30~ (%)'];
									 q = d['20:30~ (%)'];
									 r = d['21:30~ (%)'];
									 s = d['22:30~ (%)'];
									 t = d['23:30~ (%)'];
									 u = d['24:30~ (%)'];
									 console.log(a);
								}else if(d.요일=="토요일"){
									 a1 = d['5:30~ (%)'];
									 b1 = d['6:30~ (%)'];
									 c1 = d['7:30~ (%)'];
									 e1 = d['8:30~ (%)'];
									 f1 = d['9:30~ (%)'];
									 g1 = d['10:30~ (%)'];
									 h1 = d['11:30~ (%)'];
									 i1 = d['12:30~ (%)'];
									 j1 = d['13:30~ (%)'];
									 k1 = d['14:30~ (%)'];
									 l1 = d['15:30~ (%)'];
									 m1 = d['16:30~ (%)'];
									 n1 = d['17:30~ (%)'];
									 o1 = d['18:30~ (%)'];
									 p1 = d['19:30~ (%)'];
									 q1 = d['20:30~ (%)'];
									 r1 = d['21:30~ (%)'];
									 s1 = d['22:30~ (%)'];
									 t1 = d['23:30~ (%)'];
									 u1 = d['24:30~ (%)'];
									 console.log(a1);
								}else if(d.요일=="일요일"){
									 a2 = d['5:30~ (%)'];
									 b2 = d['6:30~ (%)'];
									 c2 = d['7:30~ (%)'];
									 e2 = d['8:30~ (%)'];
									 f2 = d['9:30~ (%)'];
									 g2 = d['10:30~ (%)'];
									 h2 = d['11:30~ (%)'];
									 i2 = d['12:30~ (%)'];
									 j2 = d['13:30~ (%)'];
									 k2 = d['14:30~ (%)'];
									 l2 = d['15:30~ (%)'];
									 m2 = d['16:30~ (%)'];
									 n2 = d['17:30~ (%)'];
									 o2 = d['18:30~ (%)'];
									 p2 = d['19:30~ (%)'];
									 q2 = d['20:30~ (%)'];
									 r2 = d['21:30~ (%)'];
									 s2 = d['22:30~ (%)'];
									 t2 = d['23:30~ (%)'];
									 u2 = d['24:30~ (%)'];
									 console.log(a2);
								}
							}
							
			$("#chart_title").hide();	
			chart();//캔버스 그리는 함수 ->이렇게 안하면 이전데이터가 자꾸 겹쳐나옴
			new Chart(document.getElementById("congestion_chart"), {
				 type: 'line',
				  data: {
				    labels: ["5:30","6:30","7:30","8:30","9:30","10:30","11:30","12:30","13:30","14:30","15:30","16:30","17:30","18:30",
				    		 "19:30","20:30","21:30","22:30","23:30","24:30"],
				    datasets: [{ 
				        data: [a,b,c,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u],
				        label: "평일",
				        borderColor: "#3e95cd",
				        fill: false
				      }, { 
				        data: [a1,b1,c1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1],
				        label: "토요일",
				        borderColor: "#8e5ea2",
				        fill: false
				      }, { 
				        data: [a2,b2,c2,e2,f2,g2,h2,i2,j2,k2,l2,m2,n2,o2,p2,q2,r2,s2,t2,u2],
				        label: "일요일",
				        borderColor: "#3cba9f",
				        fill: false
				      }]
				  },
				  options: {
					  responsive: true,
						scales: {
							yAxes: [{
								ticks: {
									min: 0,
									max: 120
								}
							}]
						},
				    title: {
				      display: true,
				      text: $("#selstation").val()+"역 상행",
				      		fontSize : 16
				    }
				  }
			});//차트 끝
				
				}//if($("#selstation").val()==d.역명 && $("#selsubLine").val()==d.호선)끝
					}//성공시 for문 돌린거 마무리 
				},
				error:function(requet,status,error){
					console.log(error);
					}
				});//ajax로 데이터 불러옴
				
			  });//상행버튼 눌렀을때
			 
			  
			  /*하행*/
				$("#downLine_btn").on("click",function(){
					
				var a,b,c,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u = 0; //차트data에 넣을 것 평일
				var a1,b1,c1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1 = 0; //차트data에 넣을 것 토요일
				var a2,b2,c2,e2,f2,g2,h2,i2,j2,k2,l2,m2,n2,o2,p2,q2,r2,s2,t2,u2 = 0; //차트data에 넣을 것 일요일
				
				$.ajax({
					/*https://api.odcloud.kr/api/15071311/v1/uddi:a5158b81-27c7-4151-ba6c-b912a6f13d39?page=1&perPage=15&serviceKey=3Fj2wrFDqsoyP7TUxDOYsEhXLRdqJy1f49oI894kJMGYhAOU1Gy6FUVTDyiWS101ShcJsItCxoHp3v6yOQ6cBw%3D%3D ->(데이터 불러오기) */
					url:"https://api.odcloud.kr/api/15071311/v1/uddi:a5158b81-27c7-4151-ba6c-b912a6f13d39?page=1&perPage=1668&serviceKey=3Fj2wrFDqsoyP7TUxDOYsEhXLRdqJy1f49oI894kJMGYhAOU1Gy6FUVTDyiWS101ShcJsItCxoHp3v6yOQ6cBw%3D%3D",
					type:"get",
					dataType:"json",
					success:function(res){
						var html = "";
						//console.log(res);
				
						for(var d of res.data){
							//console.log(d.역명);
							var seoul = $("#selstation").val();
							if($("#selstation").val()=="서울"){
								seoul = "서울역";
							}
							if(seoul==d.역명 && $("#selsubLine").val()==d.호선){
							//console.log(d.역명+","+d.호선);//if 조건은 잘되는 듯
							//console.log(d);
								if(d.방향=="하선" || d.방향=="외선"){
									if(d.요일=="평일"){
									     //console.log(d['5:30~ (%)']);
										 a = d['5:30~ (%)'];
										 b = d['6:30~ (%)'];
										 c = d['7:30~ (%)'];
										 e = d['8:30~ (%)'];
										 f = d['9:30~ (%)'];
										 g = d['10:30~ (%)'];
										 h = d['11:30~ (%)'];
										 i = d['12:30~ (%)'];
										 j = d['13:30~ (%)'];
										 k = d['14:30~ (%)'];
										 l = d['15:30~ (%)'];
										 m = d['16:30~ (%)'];
										 n = d['17:30~ (%)'];
										 o = d['18:30~ (%)'];
										 p = d['19:30~ (%)'];
										 q = d['20:30~ (%)'];
										 r = d['21:30~ (%)'];
										 s = d['22:30~ (%)'];
										 t = d['23:30~ (%)'];
										 u = d['24:30~ (%)'];
									}else if(d.요일=="토요일"){
										 a1 = d['5:30~ (%)'];
										 b1 = d['6:30~ (%)'];
										 c1 = d['7:30~ (%)'];
										 e1 = d['8:30~ (%)'];
										 f1 = d['9:30~ (%)'];
										 g1 = d['10:30~ (%)'];
										 h1 = d['11:30~ (%)'];
										 i1 = d['12:30~ (%)'];
										 j1 = d['13:30~ (%)'];
										 k1 = d['14:30~ (%)'];
										 l1 = d['15:30~ (%)'];
										 m1 = d['16:30~ (%)'];
										 n1 = d['17:30~ (%)'];
										 o1 = d['18:30~ (%)'];
										 p1 = d['19:30~ (%)'];
										 q1 = d['20:30~ (%)'];
										 r1 = d['21:30~ (%)'];
										 s1 = d['22:30~ (%)'];
										 t1 = d['23:30~ (%)'];
										 u1 = d['24:30~ (%)'];
									}else if(d.요일=="일요일"){
										 a2 = d['5:30~ (%)'];
										 b2 = d['6:30~ (%)'];
										 c2 = d['7:30~ (%)'];
										 e2 = d['8:30~ (%)'];
										 f2 = d['9:30~ (%)'];
										 g2 = d['10:30~ (%)'];
										 h2 = d['11:30~ (%)'];
										 i2 = d['12:30~ (%)'];
										 j2 = d['13:30~ (%)'];
										 k2 = d['14:30~ (%)'];
										 l2 = d['15:30~ (%)'];
										 m2 = d['16:30~ (%)'];
										 n2 = d['17:30~ (%)'];
										 o2 = d['18:30~ (%)'];
										 p2 = d['19:30~ (%)'];
										 q2 = d['20:30~ (%)'];
										 r2 = d['21:30~ (%)'];
										 s2 = d['22:30~ (%)'];
										 t2 = d['23:30~ (%)'];
										 u2 = d['24:30~ (%)'];
									}
								}
				
				$("#chart_title").hide();	
				chart();//캔버스 그리는 함수
				new Chart(document.getElementById("congestion_chart"), {
					 type: 'line',
					  data: {
					    labels: ["5:30","6:30","7:30","8:30","9:30","10:30","11:30","12:30","13:30","14:30","15:30","16:30","17:30","18:30",
					    		 "19:30","20:30","21:30","22:30","23:30","24:30"],
					    datasets: [{ 
					        data: [a,b,c,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u],
					        label: "평일",
					        borderColor: "#3e95cd",
					        fill: false
					      }, { 
					        data: [a1,b1,c1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1],
					        label: "토요일",
					        borderColor: "#8e5ea2",
					        fill: false
					      }, { 
					        data: [a2,b2,c2,e2,f2,g2,h2,i2,j2,k2,l2,m2,n2,o2,p2,q2,r2,s2,t2,u2],
					        label: "일요일",
					        borderColor: "#3cba9f",
					        fill: false
					      }]
					  },
					  options: { 
						  responsive: true,
							scales: {
								yAxes: [{
									ticks: {
										min: 0,
										max: 120
									}
								}]
							},
					    title: {
					      display: true,
					      text: $("#selstation").val()+"역 하행",
					      		fontSize : 16
					    }
					  }
				});//차트 끝
					}
						}//성공시 for문 돌린거 마무리 
					},
					error:function(requet,status,error){
						console.log(error);
						}
					});//ajax로 데이터 불러옴
					
				  });//하행버튼 눌렀을때
				
});

function chart(){
	var html="";
	html += "<canvas id=\"congestion_chart\" width=\"800\" height=\"450\"></canvas>"
	$("#chart").html(html);
}

function changeL(data){
	 var html = "";
	 html += "<option selected=\"selected\">호선</option>";
	   
	   for(var d of data){
		  html += "<option>"+ d.SUBLINE_NO +"</option>";
	   }
	   
	   $("#selsubLine").html(html);
}

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
				<li><a href="javascript:popup();">실내 공기질 정보 제공</a></li>
				<li><a href="BetterWay_cooling">차량 별 냉방상태</a></li>
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
		                  	홈>교통정보안내>혼잡도 &nbsp;
		                  	</div>
		            </div>
    	</div>
		<div id="box_con">
			<img id="box_con_img" src="resources/images/crowd.png"/>
			<div id="box_con_text">
			혼잡도
			</div>
			
			<form action="#" id="SearchForm" method="post">
			
			<input type="hidden" name="subway_station_name" id="subway_station_name" /><!-- 샐렉트 값받기 -->
			
			<div class="table_box">
				<select id = "selstation">
    				<option selected="selected">역</option>
    					<c:forEach items="${SubwayList}" var = "t1">
    						<option value="${t1.SUBWAY_STATION_NAME}">
    						<c:out value="${t1.SUBWAY_STATION_NAME}(${t1.SUBLINE_NO}호선)"/> </option>
   						</c:forEach>
   				</select>
   				<select id = "selsubLine">
    				<option selected="selected">호선</option>
   				</select>
   				<input id="upLine_btn" type="button" value="상행" />
   				<input id="downLine_btn" type="button" value="하행" />
   				
   				<div id="chart"></div>
   				<div id="chart_title">아래 빈칸은 차트가 그려질 곳입니다.</div>
    		</div>
    		</form>
    		
			</div>	
		</div>
  </article>
</section>

<footer id = "footer"></footer>
</body>
</html>