<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경로검색</title>
<script type="text/javascript">

function main(){
	/* 수정수정 */
		location.href="BetterWay_cooling.html";
	}

function BetterWay_subLineRealtime(){

	location.href="BetterWay_subLineRealtime2";

}
function BetterWay_subLineBusstation(){
	location.href="BetterWay_subLineBusstation";
}
</script>
<style>
*{
overflow: hidden;
}
	div{
float:left;
width:100%;

}
.main{
	color:white;
	text-decoration : none;
	font-size: 30px;
}
.side{
background-color: #023459;
width:25%;
 height: 100vh;
}
.side_title{
text-align: center;
font-weight: bold;
padding:10px 0px 10px 0px;
}
.subline_img{
width:75%;
}
#subway{
	width:100%;
	height:940px;
}
#title{
    font-size: 15px;
    background: #e0e0eb;
    width: 170px;
    padding-top: 2px;
    border-radius: 15px;
    margin-bottom: 5px;
    font-weight: bold;
    height: 22px;
    text-align: center;
    margin-left: 90px;
}
.arr{

display: inline-block;
margin-top:5px;

}
#dep , #arr{
padding-left:5px;
width:300px;
height:30px;
}
/* zoom */
* { border:0; margin:0; padding:0; }
p { position:absolute; top:3px; right:28px; color:#555; font:bold 13px sans-serif;}

.zoom {
	display:inline-block;
	position: relative;
}

.zoom img {
	display: block;
	min-height: 100%;
}

.zoom img::selection { background-color: transparent; }

#zooming img:hover { cursor:  default; }
#zooming img:active { cursor:  default; }

.wrap{
margin-top:15px;
padding:5px 0px 5px 0px;
 text-align: center;
}
.subbtn_busstation{
	background:#B2A59F;
	border-radius: 5px;
	height:100%;
	width:155px;
	text-align: center;
}
.subbtn_realtime{
	background:#B2A59F;
	border-radius: 5px;
	height:100%;
	width:155px;
	text-align: center;
}

.box_sub {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top:10px;
} 

.realtime{
	width:265px;
	padding-left: 5px;
	height: 30px;
}
.realtime_search{  
	padding-left: 5px;
    height: 20px;
     color: white;background:#82B2DA; padding-top:5px;padding-bottom:5px;padding-right:5px;
}
a{
	text-decoration: none;
	font-size: 15px;
}
 .box_upndown {
     display: flex;
     justify-content: center;
     align-items: center;
     flex-direction: column;
}
.box_all{
	background-color: #f2f2f2;
    width: 300px;
    height: 150px;
    padding:15px 5px 15px 5px;
    margin-top:10px;
    border-radius: 15px;
}
.box_up , .box_down{
    background-color: #f2f2f2;
    width: 300px;
    height: 400px;
    padding:15px 5px 15px 5px;
    margin-top:10px;
    border-radius: 15px;
    font-size: 11pt;

}
#box_up_sub1{
	width:40%;
	height:100%;
	float :left;
}
#box_up_sub1_img{
	width:100px;
	height:110px;
	margin-top: 17px;
}
#box_up_sub2{
	width:60%;
	height:100%;
	font-size: 10.5pt;
}
#box_down_sub1{
	width:40%;
	height:100%;
	float :left;
}
#box_down_sub1_img{
	width:100px;
	height:110px;
	margin-top: 17px;
}
#box_down_sub2{
	width:60%;
	height:100%;
	font-size: 10.5pt;
}
.subbtn_box{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top:10px;
    padding-right:5px;
    
}
#dep_arr{
	display: flex;
    justify-content: center;
    align-items: center;

}
 #deparr_search {
     width: 270px;
     float: left;
     box-sizing: border-box;
    }
#deparr_btn,#bus_search_btn {
	width: 30px;
	float: right;
	box-sizing: border-box;
	height:65px;
	background-color: #82B2DA;
}

#subbtn_realtime{
	color: white;
	background:#B2A59F;
}
#subbtn_busstation{
	color: white;
	background: #B2A59F;
}
#select_LatLngD,#select_LatLngA{
    padding-left: 5px;
    width: 300px;
    height: 29.7px;
}
table{
/* width:250px;
height:200px; */

text-align: center;
margin-left: 25px;
}
.deparr_search_btn{
float:right;
width: 30px;

	box-sizing: border-box;
	height:65px;
	background-color: #82B2DA;
}
#weatherWrap{
width:100%;
height:180px;
}
#weatherIcon{
height:50px;
width:50px;
}
	</style>
	<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="resources/script/jquery/zoomsl-3.0.min.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		$("#weatherIcon").hide();
		$("img[name='subway']").imagezoomsl({
			zoomrange: [1, 12],
			zoomstart: 4, //시작 줌
			innerzoom: true, //이미지 내 줌으로 전환
			magnifierborder: "none" //두께 없음
		});
		
		$("#realtime_search").on("click",function(){
			
			var html="";
			var params = $("#SearchForm").serialize();	
			$("#sD").val($("#select_LatLngD").val()); //출발역	
			var startX;
			var startY;
			$("#sA").val($("#select_LatLngA").val()); //도착역
			var endX;
			var endY;
			$.ajax({
					url:"getLatLngD",
					type:"post",
					dataType:"json",
					data:params,
					success:function(res){				
								 for(var d of res.data){						
									if(sD.value==d.SUBWAY_STATION_NAME){														
										var startY=d.LAT;
										var startX=d.LNG;
									}
								} 
									 
							 $.ajax({
							url:"getLatLngA",
							type:"post", //전송방식(get,post)
							dataType:"json",//받아올 데이터 형식
							data:params,//보낼 데이터(문자열 형태)
							success:function(res){//성공 시 다음 함수 실행						
							//console.log(res);
										 for(var d of res.data){						
											if(sA.value==d.SUBWAY_STATION_NAME){														
												var endY=d.LAT;
												var endX=d.LNG;
											}
										}
											$.ajax({
												
											//http://ws.bus.go.kr/api/rest/pathinfo/getPathInfoBySubway?serviceKey=cexG3uY6lBddZH4UqdhsVWCJaGgUx%2BjRRCl7qbAZnA17YxlK3sZAtI1er2P7Z78KZdkHVRhO%2FL21j8%2F3LR7CLw%3D%3D&startX=126.91373&startY=37.54946&endX=126.9172&endY=37.61137
												url:"http://ws.bus.go.kr/api/rest/pathinfo/getPathInfoBySubway?ServiceKey=cexG3uY6lBddZH4UqdhsVWCJaGgUx%2BjRRCl7qbAZnA17YxlK3sZAtI1er2P7Z78KZdkHVRhO%2FL21j8%2F3LR7CLw%3D%3D&startX="+startX+"&startY="+startY+"&endX="+endX+"&endY="+endY,
												type:"get",
												dataType:"xml",
												success:function(res){
												var html ="";
												console.log(res);
												var time ="";
												var time = $(res).find("time").text();
											console.log(time);
												$("#take_P").html(time);//소요시간 뿌림
												
												
												var pathListCnt= $(res).find("routeNm").text();
												console.log(pathListCnt);
												if(pathListCnt.length>=9){
													html +="환승 2 번";
												}else if(pathListCnt.length>=5){
													html +="환승 1 번";
												}else if(pathListCnt.length>=3){
													html +="환승 없음";
												}
												
												$("#transfer").html(html);//소요시간 뿌림
											
												
												 $(res).find('pathList').each(function(){
													 var railLinkId=$(this).find("railLinkId").text();
													 console.log(railLinkId.length);
													 var routeNm = $(this).find("routeNm").text();
												
													 var fname = $(this).find("fname").text(); 	
														var tname = $(this).find("tname").text();	
														var exitNos = $(this).find("exitNo").text();
														html +="<tr>";	
														html +="<td>"+routeNm+fname+" 승차 </td>";
														html +="</tr>";
														html +="<tr>";	
														html +=	"<td>"+routeNm+tname+" 하차</td>";
														html +="</tr>";
														
														$("#route").html(html);
													
													 }); 	

												 getWeather();
												 },
												error:function(requet,status,error){
													console.log(error);
												}
												
											});//ajax로 데이터 불러옴
											function getWeather() {
												$.ajax({
													//https://api.openweathermap.org/data/2.5/weather?lat=37.61137&lon=126.9172&appid=44c6ec52a93219e25d17ecf7fed82606&units=metric
													url: "http://api.openweathermap.org/data/2.5/weather", // 접속 주소
													type: "get", // 전송방식 : get, post
													dataType: "json", // 받아올 데이터 형식
													data: "lat="+endY+"&lon="+endX+"&appid=44c6ec52a93219e25d17ecf7fed82606&lang=kr&units=metric", //보낼 데이터(문자열형태)
													success: function(res) { // 성공 시 다음 함수 실행 res->받아오는 데이터를 인자로 받음 
														console.log(res);
														console.log(res.main.temp);
														console.log(res.weather[0].icon);
														$("#weatherIcon").attr("src", 
																"http://openweathermap.org/img/wn/" 
																				+ res.weather[0].icon + "@2x.png");
														$("#temp").html(res.main.temp + "℃ - " + res.weather[0].description);
														$("#weatherIcon").show();
													},
													error: function(request, status, error) { // 실패 시 다음 함수 실행
														console.log(request);
														console.log(status);
														console.log(error);
													}
												});
											}

											//날씨 아작스 불러오기
								
								},//success end 도착역
							error:function(request,status,error){//실패시 다음 함수 실행
								console.log(error);
							}
						});
				 },//success end 출발역
				error:function(request,status,error){//실패시 다음 함수 실행
					console.log(error);
				}
			});//db에서 좌표 가져와 변수로 담기
		});//onclick 이벤트 end
			
});	//end	
</script>
</head>
<body>
<div class="side">
	<div class="side_title">
	<a class="main" href="javascript:main();">BetterWay</a>

	</div>
		<div class="wrap">
		<div id="title">출발 도착 역검색</div>
<div id="dep_arr">
		
			<form action="#" id="SearchForm" method="post" >
			<div id="deparr_search">
			<!-- <input type="text"  class="realtime" id="select_station"/> -->
			<div class="dep"><input type="text"  id="select_LatLngD" name="select_LatLngD"placeholder="출발역"></div>
			<div class="arr"><input type="text"  id="select_LatLngA" name="select_LatLngA" placeholder="도착역"></div>
				
					
		
				 
				 
				  <input type="hidden" id="sD" name="select_LatLngD"/>  
				 <input type="hidden" id="sA" name="select_LatLngA"/>  
		<%-- 	 <select class="realtime" id="select_station">
				 <option selected="selected">역</option>
				   <c:forEach items="${SubwayList}">
		    			<option value="${SUBWAY_STATION_NAME}"><c:out value="${SUBWAY_STATION_NAME}"/></option>
		   		   </c:forEach>
				 </select> --%>
			</div>
			<input type="button"id="realtime_search" class="deparr_search_btn" value="검색"/>
		  </form>
		
		
	</div>	  
	<div class="subbtn_box">
		<div class="subbtn_realtime">
		<a id="subbtn_realtime" href="javascript:BetterWay_subLineRealtime();" >실시간 위치</a>
		</div>
		<div class="subbtn_busstation"><a id="subbtn_busstation" href="javascript:BetterWay_subLineBusstation();">주변 버스정류장</a></div>
	</div>			
	</div><!-- wrap end -->
	
	<div class="box_upndown">
		<div class="box_sub">
		
			<input type="text" class="realtime" placeholder="실시간 위치"/>
			<a class="realtime_search" href="#">검색</a>
		
		</div>

	    <div class="box_up">
	
	    	<div id="box_table_Guide">
			
				<span style="margin-left: 15px;"><b>소요시간(분) : </b><span id="take_P"></span></span></br></br>
				<span style="margin-left: 15px;"><b>환승 횟수 : </b><span id="transfer"></span></span></br></br>
				
			   <table>
			   <span style="margin-left: 15px;"><b>이동경로 </b></span></br></br>
			   <thead></thead>
			   <tbody id="route"></tbody>
			   </table></br></br>
			    <div style="margin-left: 15px;" id="weather_P" ><b>도착지 날씨</b>
			    <div id="weatherWrap">
					<img alt="날씨" id="weatherIcon" /><span id="temp"></span>
					<table id="weatherHistory">
						<tbody></tbody>
					</table>
					</div>
</div>
			   
			
			  	  	    
			</div>
	    </div>
	   
 	 </div><!-- box_upndown end -->
 
</div>

<div class="subline_img">
		<img src= "resources/images/노선도.jpg" name="subway" id ="subway" width='100%' height='100%'/>
		<p>마우스를 올려 확대해보세요.</p>
</div>

</body>
</html>

