<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Better Way Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/css/popup/envinfoGuide.css?after" />
<script type="text/javascript" 
	src="resources/script/popup/envinfoGuide.js?after"></script>

<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	var a = $("#selstation option:selected").val();
	
	$(".charge_guide").on("click", function(){
		$(".popCharge").show();
	
	});
	$("#air").on("click",function(){
		envinfoGuide();
	});

	$(".admin").on("click", function(){
		location.href = "BetterWay_loginAdmin";
	});
	
	$(".map_guide").on("click", function(){
		location.href = "BetterWay_subLineSearch";
	
	});
	$(".lost").on("click", function(){
		location.href = "BetterWay_lostAndFound";
	
	});
	$(".board").on("click", function(){
		location.href = "BetterWay_suggestList";
	
	});
	$(".colling").on("click", function(){
		location.href = "BetterWay_cooling";
	
	});
	$(".news").on("click", function(){
		location.href = "BetterWay_subwayNews";
	
	});
	
	$(".time_guide").on("click", function(){
		$(".popdiv").show();
	
	});
	
	$(".cov_guide").on("click", function(){
		location.href = "BetterWay_esta_main";
	
	});
	
	$("#close").on("click", function(){
		$(".popdiv").hide();
		
		$("#con_table").empty();
		$("#dateBtn1").css("background-Color", "white");
		$("#dateBtn2").css("background-Color", "white");
		$("#dateBtn3").css("background-Color", "white");
		

		
		
	});
	
	$("#routeBtn").on("click", function(){
		var Start = $("#selS option:selected").val();
		var end = $("#selE option:selected").val();
		if(Start == "출발 역" || end == "도착 역"){
			alert("출발역과 도착역을 입력해 주세요.");
			
		}
		else{	$("#searchForm").attr("action", "http://127.0.0.1:8090/betterway/BetterWay_subLineSearch");
		$("#searchForm").submit();
		console.log(Start);
		console.log(end);
		}
	});
	$("#close2").on("click", function(){
		$(".popCharge").hide();
	});
	
	$(".realtime_train_box").on("click", function () {
		 window.open("https://smapp.seoulmetro.co.kr:58443/traininfo/traininfoUserView.do")

		
	});
	
	$("#selstation").select2();
	$("#selS").select2();
	$("#selE").select2();
	
	$("#dateBtn1").on("click", function() {
		$("#dateBtn1").css("background-Color", "silver");
		$("#dateBtn2").css("background-Color", "white");
		$("#dateBtn3").css("background-Color", "white");
		b = "1/";
		console.log(b);

	});
	$("#dateBtn2").on("click", function() {
		$("#dateBtn1").css("background-Color", "white");
		$("#dateBtn2").css("background-Color", "silver");
		$("#dateBtn3").css("background-Color", "white");
		b = "2/";
		console.log(b);
	});

	$("#dateBtn3").on("click", function() {
		$("#dateBtn1").css("background-Color", "white");
		$("#dateBtn2").css("background-Color", "white");
		$("#dateBtn3").css("background-Color", "silver");
		b = "3/";
		console.log(b);
	});

	$("#test1").on("click",function() {
						var a = $("#selstation option:selected").val();
						
						draw();

						$
								.ajax({
									// http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/5/0309/1/1/
									url : "http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/500/"
											+ a
											+ "/"
											+ b
											+ "1/", // 접속 주소
									type : "get", // 전송방식 : get, post
									dataType : "json",
									success : function(res) { // 성공 시 다음 함수 실행

										//var test =res.row[1];

										for (var i = 0; i < res.SearchSTNTimeTableByIDService.row.length; i++) {
											var time = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
													.substring(
															0,
															2);
											var timem = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
													.substring(
															3,
															5);
											var end = res.SearchSTNTimeTableByIDService.row[i].SUBWAYENAME

											if (time == "05") {
												$(
														'td[name="05상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "06") {
												$(
														'td[name="06상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "07") {
												$(
														'td[name="07상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "08") {
												$(
														'td[name="08상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "09") {
												$(
														'td[name="09상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "10") {
												$(
														'td[name="10상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "11") {
												$(
														'td[name="11상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "12") {
												$(
														'td[name="12상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "13") {
												$(
														'td[name="13상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "14") {
												$(
														'td[name="14상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "15") {
												$(
														'td[name="15상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "16") {
												$(
														'td[name="16상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "17") {
												$(
														'td[name="17상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "18") {
												$(
														'td[name="18상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "19") {
												$(
														'td[name="19상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "20") {
												$(
														'td[name="20상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "21") {
												$(
														'td[name="21상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "22") {
												$(
														'td[name="22상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "23") {
												$(
														'td[name="23상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "24") {
												$(
														'td[name="24상"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											}

										}

									},
									error : function(
											request,
											status, error) { // 실패 시 다음 함수 실행
										console
												.log(request);
										console.log(status);
										console.log(error);
									}

								});

						$
								.ajax({
									// http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/5/0309/1/1/
									url : "http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/500/"
											+ a
											+ "/"
											+ b
											+ "2/", // 접속 주소
									type : "get", // 전송방식 : get, post
									dataType : "json",
									success : function(res) { // 성공 시 다음 함수 실행
										for (var i = 0; i < res.SearchSTNTimeTableByIDService.row.length; i++) {
											var time = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
													.substring(
															0,
															2);
											var timem = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
													.substring(
															3,
															5);
											var end = res.SearchSTNTimeTableByIDService.row[i].SUBWAYENAME

											if (time == "05") {
												$(
														'td[name="05하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "06") {
												$(
														'td[name="06하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "07") {
												$(
														'td[name="07하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "08") {
												$(
														'td[name="08하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "09") {
												$(
														'td[name="09하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "10") {
												$(
														'td[name="10하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "11") {
												$(
														'td[name="11하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "12") {
												$(
														'td[name="12하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "13") {
												$(
														'td[name="13하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "14") {
												$(
														'td[name="14하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "15") {
												$(
														'td[name="15하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "16") {
												$(
														'td[name="16하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "17") {
												$(
														'td[name="17하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "18") {
												$(
														'td[name="18하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "19") {
												$(
														'td[name="19하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "20") {
												$(
														'td[name="20하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "21") {
												$(
														'td[name="21하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "22") {
												$(
														'td[name="22하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											} else if (time == "23") {
												$(
														'td[name="23하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											}

											else if (time == "24") {
												$(
														'td[name="24하"]')
														.prepend(
																timem,
																"("
																		+ end
																		+ ")</br>");

											}

										}
									},
									error : function(
											request,
											status, error) { // 실패 시 다음 함수 실행
										console
												.log(request);
										console.log(status);
										console.log(error);
									}

								});

					});

});

function draw() {
var html = "";
html += "<tr><td name=\"05상\" id=\"05상\"></td><th>05</th><td name=\"05하\" id=\"05하\"></td></tr>";
html += "<tr><td name=\"06상\" id=\"06상\"></td><th>06</th><td name=\"06하\" id=\"06하\"></td></tr>";
html += "<tr><td name=\"07상\" id=\"07상\"></td><th>07</th><td name=\"07하\" id=\"07하\"></td></tr>";
html += "<tr><td name=\"08상\" id=\"08상\"></td><th>08</th><td name=\"08하\" id=\"08하\"></td></tr>";
html += "<tr><td name=\"09상\" id=\"09상\"></td><th>09</th><td name=\"09하\" id=\"09하\"></td></tr>";
html += "<tr><td name=\"10상\" id=\"10상\"></td><th>10</th><td name=\"10하\" id=\"10하\"></td></tr>";
html += "<tr><td name=\"11상\" id=\"11상\"></td><th>11</th><td name=\"11하\" id=\"11하\"></td></tr>";
html += "<tr><td name=\"12상\" id=\"12상\"></td><th>12</th><td name=\"12하\" id=\"12하\"></td></tr>";
html += "<tr><td name=\"13상\" id=\"13상\"></td><th>13</th><td name=\"13하\" id=\"13하\"></td></tr>";
html += "<tr><td name=\"14상\" id=\"14상\"></td><th>14</th><td name=\"14하\" id=\"14하\"></td></tr>";
html += "<tr><td name=\"15상\" id=\"15상\"></td><th>15</th><td name=\"15하\" id=\"15하\"></td></tr>";
html += "<tr><td name=\"16상\" id=\"16상\"></td><th>16</th><td name=\"16하\" id=\"16하\"></td></tr>";
html += "<tr><td name=\"17상\" id=\"17상\"></td><th>17</th><td name=\"17하\" id=\"17하\"></td></tr>";
html += "<tr><td name=\"18상\" id=\"18상\"></td><th>18</th><td name=\"18하\" id=\"18하\"></td></tr>";
html += "<tr><td name=\"19상\" id=\"19상\"></td><th>19</th><td name=\"19하\" id=\"19하\"></td></tr>";
html += "<tr><td name=\"20상\" id=\"20상\"></td><th>20</th><td name=\"20하\" id=\"20하\"></td></tr>";
html += "<tr><td name=\"21상\" id=\"21상\"></td><th>21</th><td name=\"21하\" id=\"21하\"></td></tr>";
html += "<tr><td name=\"22상\" id=\"22상\"></td><th>22</th><td name=\"22하\" id=\"22하\"></td></tr>";
html += "<tr><td name=\"23상\" id=\"23상\"></td><th>23</th><td name=\"23하\" id=\"23하\"></td></tr>";
html += "<tr><td name=\"24상\" id=\"24상\"></td><th>24</th><td name=\"24하\" id=\"24하\"></td></tr>";

$("#con_table").html(html);
}
	
	





</script>
<link rel="stylesheet" type="text/css" href="resources/css/popup/test.css?after" />
<link rel="stylesheet" type="text/css" href="resources/css/popup/popCharge.css?after" />
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
	text-align: right;
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
	top : -200px;
	height: 150px;
	width : 360px;
	display: inline-block;
	background-color:rgba(31,78,121,0.3);
}
.center_box {
	position: relative;
	top:-300px;
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
	top: -40px;
	
	left: 150px;
	width : 300px;
	
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
.box_con_head2{
font-size: 14px;
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
.colling{
display: inline-block;
position:relative;
text-align:center;
margin:25px;
height:100px;
width:200px;
cursor: pointer;
border:4px solid silver;
background-color: white;
}
.news{
display: inline-block;
position:relative;
text-align:center;
margin:25px;
height:100px;
width:200px;
cursor: pointer;
border:4px solid silver;
background-color: white;
}
.board{
display: inline-block;
position:relative;
text-align:center;
margin:25px;
height:100px;
width:200px;
cursor: pointer;
border:4px solid silver;
background-color: white;
}
.lost{
display: inline-block;
position:relative;
text-align:center;
margin:25px;
height:100px;
width:200px;
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
.con_img_colling{
position:relative;
display:inline-block;
background-image :url("resources/images/aircon.png");
background-position: center;

  background-size: cover;
width : 80px;
height: 80px;
}
.con_img_news{
position:relative;
display:inline-block;
background-image :url("resources/images/news2.png");
background-position: center;

  background-size: cover;
width : 80px;
height: 80px;
}
.con_img_board{
position:relative;
display:inline-block;
background-image :url("resources/images/board2.png");
background-position: center;

  background-size: cover;
width : 80px;
height: 80px;
}
.con_img_lost{
position:relative;
display:inline-block;
background-image :url("resources/images/lost2.png");
background-position: center;

  background-size: cover;
width : 80px;
height: 80px;
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
background-image :url("resources/images/map2.png");
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
.con_search_txt2{
display:inline-block;
position:relative;
top:-12px;
width : 100px;
height: 85px;
background-color: white;
font-size: 12px;
border: 1px solid silver;
}
.con_map_txt{
display:inline-block;
position:relative;
top : -25px;
width : 130px;
height: 100px;
background-color: white;
font-size: 15px;
border: 1px solid silver;
}

.box_realtime_train_con_img{
position:relative;
display:inline-block;
background-image :url("resources/images/train2.png");
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

.test{
display: block;
}
.text_header{
position: relative;
top: 70px;

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
.admin{

cursor: pointer;
}
  #pop{
    width:300px; height:400px; background:#3d3d3d; color:#fff;
    position:absolute; top:10px; left:500px; text-align:center;
    border:2px solid #000;
   }
td{
width: 60px;
}
 .white_content{
        display: none;
        position: absolute;
        top: 25%;
        left: 25%;
        width: 50%;
        height: 50%;
        padding: 16px;
        border: 16px solid orange;
        background-color: white;
        z-index:1002;
        overflow: auto;



    }

.popdiv{
 
        display:none;
        position: absolute;
        top: 10%;
        left: 35%;
        width: 40%;
        height: 90%;
        
        border: 6px solid black;
        background-color: white;
        z-index:1002;
        overflow: auto;
}
.popCharge{
 
        display:none;
        position: absolute;
        top: 10%;
        left: 35%;
        width: 40%;
        height: 90%;
        
        border: 6px solid black;
        background-color: white;
        z-index:1002;
        overflow: auto;
}
#air{
cursor: pointer;
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
						<li><a href="BetterWay_subLineRealtime2">실시간 열차정보</a></li>
						<li><a href="BetterWay_subLineBusstation">역주변 버스정류장 연계</a></li>
						<li><a href="BetterWay_esta_main">역 내외 시설</a></li>
					</ul></li>
				<li><a href="#">환경정보안내</a>
					<ul>
						<li id = "air">실내 공기질 정보 제공</li>
						<li><a href="BetterWay_cooling">차량 별 냉방상태</a></li>
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
	<div class = "popCharge">
	<header>
<p>운임 안내</p>
<input type="button" id = "close2" value="닫기" style="float: right; width: 40px; height: 40px;">
</header>
	<div class="bg">
		<div class="popup">
			 <div class="box_tit">
        
		        <div class="img_cov">
		      
		                  <div class="img_cov_con">
		                  	홈>운임 안내 &nbsp;
		                  	</div>
		            </div>
    	</div>
			<div class="wrap">
	
			<table id = "con_tab" style="position: relative;  " >  
			
<tbody>
 <c:forEach var="data" items="${list}">
      <tr>
         <td>${data.CATEGORY}</td>
         <td>${data.TRAFFIC_CARD}</td>
         <td>${data.D_TRAFFIC_CARD}</td>
        
      </tr>
   </c:forEach>

</tbody>
</table>
	</div>
				
			</div>
			
		</div>
	</div>	
<div class = "popdiv">
		<header>
		<p>역별 시간표</p>
		<input type="button" id = "close" value="닫기" style="float: right; width: 40px; height: 40px;">
	</header>
	<div class="bg">
		<div class="popup">
			<div class="box_tit">
				<div class="img_cov">
					<div class="img_cov_con">홈>시간표 안내 &nbsp;</div>
				</div>
			</div>
			<div class="wrap">

				<div>
					<input type="button" id="test1" name="test1" value="검색"> <strong>요일과
						역을 선택후 버튼을 눌러주세요.</strong>
				</div>

				<div>

					<select id="selstation" style="width: 180px;">
						<option selected="selected">역</option>
						<c:forEach items="${SubwayList}" var="t1">
							<option value="${t1.STR_INCODE}"><c:out
									value="${t1.SUBWAY_STATION_NAME}(${t1.SUBLINE_NO}호선)" />
							</option>
						</c:forEach>
					</select>
				</div>


				<table id="timetable" style="position: relative; left: 80px;">

					<thead>
						<tr>
							<th><input type="button" id="dateBtn1" value="평일">
							</th>
							<th><input type="button" id="dateBtn2" value="토요일">
							</th>
							<th><input type="button" id="dateBtn3" value="공휴일">
							</th>
						</tr>
						<tr>
							<th scope="col">상행</th>
							<th scope="col">시각</th>
							<th scope="col">하행</th>
						</tr>
					</thead>
					<tbody id="con_table">
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
		
		
		
		<div class= "text_header">
		BetterWay<br/>
			<div class= "text_body">
		더 나은 교통 서비스를 위해<br/>
			</div>
			</div>
		<div class ="con">
		<form action="#"   id ="searchForm"method="post">
			<div class="search_route">
				<div class="search_route_box">
					 <br />
					<br /> 
						<select id="selS" name = "selS" style=" width: 200px;height: 30px;font-size: 15px;">
						<option selected="selected">출발 역</option>
						<c:forEach items="${SubwayList}" var="START">
							<option value="${START.SUBWAY_STATION_NAME}"><c:out
									value="${START.SUBWAY_STATION_NAME}(${START.SUBLINE_NO}호선)" />
							</option>
						</c:forEach>
					</select>

					<br/> 
					<br/>
					<select id="selE" name = "selE" style=" width: 200px;height: 30px;font-size: 15px;">
						<option selected="selected">도착 역</option>
						<c:forEach items="${SubwayList}" var="END">
							<option value="${END.SUBWAY_STATION_NAME}"><c:out
									value="${END.SUBWAY_STATION_NAME}(${END.SUBLINE_NO}호선)" />
							</option>
						</c:forEach>
					</select>
				</div>
				<input type="button" class="search1" id= "routeBtn" name ="routeBtn" value="경로 검색"
				style="background-color: #82B2DA;" />
			</div>
			</form>
			<br/>
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
			<div class = "time_guide">
		 
			<div class = "con_img_clock"> </div>
			<div class = "con_search_txt">
			<div class = "box_con_head">열차 시간표</div>
			<br/> <div>호선,역별 시간표를 안내합니다.</div>
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
		<br/><div>역사내,외의 편의시설을 안내합니다.</div>
			
			</div>
			</div>
			<div class = "map_guide">
			<div class = "con_img_map"> </div>
			<div class = "con_map_txt">
			<div class = "box_con_head">노선도</div>
			<br/> <div>노선도및 열차정보를 안내합니다.</div>
			</div>
			</div>
			
			</div>
			
			</div>
		<div class = "box4">
		<div class = "colling">
		 <div class = "con_img_colling"> </div>
			<div class = "con_search_txt2">
			<div class = "box_con_head2">냉방상태 안내</div>
			<br/> <div>호선별 약냉방칸을 안내합니다.</div>
			</div>
			</div>
		
		
		<div class = "news">
		  <div class = "con_img_news"> </div>
			<div class = "con_search_txt2">
			<div class = "box_con_head2">지하철 뉴스</div>
			<br/> <div>지하철 관련뉴스를 안내합니다.</div>
			</div>
			</div>
		<div class = "board">
		 <div class = "con_img_board"> </div>
			<div class = "con_search_txt2">
			<div class = "box_con_head2">건의 게시판</div>
			<br/> <div>건의 게시판으로 이동합니다.</div>
			</div>
			</div>	
		<div class = "lost">
		  <div class = "con_img_lost"> </div>
			<div class = "con_search_txt2">
			<div class = "box_con_head2">유실물 찾기</div>
			<br/> <div>유실물 찾기로 이동합니다.</div>
			</div>
			</div>

</div>

</div>
		</article>
	</section>

	<footer>
		<div class = "admin">관리자 로그인</div>
	</footer>

</body>
</html>