
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>출구별 버스정류장</title>
<script type="text/javascript">


function main(){

		location.href="BetterWay_main.html";
	}

function BetterWay_subLineBusstation(){
	location.href="BetterWay_subLineBusstation.html";
}
function BetterWay_subLineRealtime(){

	location.href="BetterWay_subLineRealtime2.html";

}

</script>
<style>

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
height:29.7px;
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
.subbtn{
background:#82b2da;
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
    color: white;
    background: #82B2DA;
    padding-top: 5px;
    padding-bottom: 5px;
    padding-right: 5px;
}
a{
text-decoration: none;

font-size: 15px;


}
 .box_sub_wrap {
      display: flex;
      justify-content: center;
      align-items: center;


      flex-direction: column;

    }
    .box_table {
      background-color: #f2f2f2;
      width: 300px;
      height: 380px;
      padding:10px 5px ;
	border:1px;
 	  margin-top:10px;
 	  border-radius: 15px;
 	  overflow:auto;

    }
.subbtn_box{
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top:10px;
    padding-right:5px;
    
}
table{

margin:0 auto;
border:1px solid;
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
#deparr_search_btn{
    margin-top: 20px;
}
.subbtn_realtime{
	background-color: #B2A59F;
	border-radius: 5px;
	height:100%;
	width:155px;
	text-align: center;
}
#subbtn_busstation{
	color: white;
	background:  #82B2DA;
}
#subbtn_realtime{
	color: white;
	background-color: #B2A59F;
}
.subbtn_busstation{
	background:#82B2DA;
	border-radius: 5px;
	height:100%;
	width:155px;
	text-align: center;
}
table{
padding-top:25px;
    border-collapse: collapse;
}
 th, td {
    border: 1px solid  #B2A59F;
  }
  #searchBtn{
  background:  #82B2DA;
  height:30px;
 color: white;
     cursor: pointer;
  }
  #realtime_search{
  background:  #82B2DA;
  height:60px;
 color: white;    
 cursor: pointer;
  }

	</style>
<script type="text/javascript"
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/script/jquery/zoomsl-3.0.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f7722bc2ddde46bcdead0ff30caa3358"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	

	$("#selS").select2();
	$("#selE").select2();
	 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.5647, 126.9771), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	$("#realtime_search").on("click", function(){
		var Start = $("#selS option:selected").val();
		var end = $("#selE option:selected").val();
		if(Start == "출발 역" || end == "도착 역"){
			alert("출발역과 도착역을 입력해 주세요.");
			
		}
		else{	$("#SearchForm").attr("action", "http://127.0.0.1:8090/betterway/BetterWay_subLineSearch");
		$("#SearchForm").submit();
		console.log(Start);
		console.log(end);
		}
	});
	
	$("#searchBtn").on("click",function(){
		var html="";
		var params = $("#SearchForm").serialize();	
		var stationid;
		$("#st").val($("#select_station").val());
		
		console.log(st);
		
		var startX;
		var startY;

				$.ajax({
					url:"getsIdsName",
					type:"post", //전송방식(get,post)
					dataType:"json",//받아올 데이터 형식
					data:params,//보낼 데이터(문자열 형태)
					success:function(res){//성공 시 다음 함수 실행						
					//console.log(res);
								 for(var d of res.data){						
									if(st.value==d.SUBWAY_STATION_NAME){														
										var stationid=d.SUBWAYSTATIONID;//이름으로 받아와서 지하철 아이디로 api검색
										var startX =d.LNG;
										var startY =d.LAT;
										//console.log(stationid);
										console.log(startX);
										
									}
								} 
								$("#stationid").val(stationid);
								console.log(stationid);
								var params = $("#apiForm").serialize();
								console.log(params);
								 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								    mapOption = { 
								        center: new kakao.maps.LatLng(startY, startX), // 지도의 중심좌표
								        level: 3 // 지도의 확대 레벨
								    };

								// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
								var map = new kakao.maps.Map(mapContainer, mapOption); 
								let target = [];
								
					$.ajax({
						
						//url:"http://openapi.tago.go.kr/openapi/service/SubwayInfoService/getSubwaySttnExitAcctoBusRouteList?serviceKey=cexG3uY6lBddZH4UqdhsVWCJaGgUx%2BjRRCl7qbAZnA17YxlK3sZAtI1er2P7Z78KZdkHVRhO%2FL21j8%2F3LR7CLw%3D%3D&subwayStationId="+stationid+"&numOfRows=300",
						////url:"http://openapi.tago.go.kr/openapi/service/SubwayInfoService/getSubwaySttnExitAcctoBusRouteList?serviceKey=cexG3uY6lBddZH4UqdhsVWCJaGgUx%2BjRRCl7qbAZnA17YxlK3sZAtI1er2P7Z78KZdkHVRhO%2FL21j8%2F3LR7CLw%3D%3D&subwayStationId="+stationid+"&numOfRows=300&pageNo=1",
						//type:"get",
						// dataType:"xml",				
						//success:function(res){
						//	console.log(res); 
						url: "busapi", 
						type: "post", 
						dataType: "json",
						data: params, 
						success: function(res) {
							console.log(res.data);
						
						
							//출구번호를 밖에서 변수로 만들어 놓고
							//먼저 그려놓음 ?
							//안에서 비교해가면서 버스번호 뽑기
					 	 	var busRouteNo =$(res.data).find("busRouteNo").text();	
							var table_exitNo =$(res.data).find("exitNo").text();//출구번호출구번호	
							var EXIT = new Set(table_exitNo);//1234-->1/0,1/1,1/2 번출구를 못가져옴
							console.log(busRouteNo); 

		
							var html="";
							
							var busRouteNo =$(this).find("busRouteNo").text();
							var exitNo = $(this).find("exitNo").text();	
							var table_exitNo =$(res).find("exitNo").text();//출구번호출구번호		
							var EXIT = new Set(table_exitNo);//1234
							var html = "";
							//html += "<tr><td name=\"05상\" id=\"05상\"></td><th>05</th><td name=\"05하\" id=\"05하\"></td></tr>";
							
							
							 $(res.data).find('item').each(function(){
								 var busRouteNo = $(this).find("busRouteNo").text(); 	
									var exitNo = $(this).find("exitNo").text();	
									var exitNos = $(this).find("exitNo").text();
									html +="<tr>";	
									html +="<td id=\""+exitNo+"\"class=\"exit\" name=\""+exitNo+"\"></td><td id=\""+busRouteNo+"\" class=\"busnum\"name=\""+busRouteNo+"\"></td>";
									html +="</tr>";
									$("#hide").html(html);
									
									
								 });
									var text = $("#hide tr:last td:first-child").eq(0).attr('id');
									console.log(text);//강남->12 구산->4
									
							// var rows = document.getElementById("tmp_table_body").getElementsByTagName("tr");
							 var rows = document.getElementById("hide").getElementsByClassName("exit");
							 console.log($(res).find('item').length);
							console.log(text);
							 
							
				
							console.log(rows);
							if(rows.length==0){
								alert("해당 역은 버스안내를 제공하지 않습니다.");
								}
							
						
							console.log($(Array.from(rows)[6]).attr("id"));
							
							var busnum = document.getElementById("hide").getElementsByClassName("busnum");
							console.log(busnum);
							console.log($(Array.from(busnum)[6]).attr("id"));
							//출구번호 먼저그리기
							 exit="";
							 for(i=1;i<=text;i++){//1-4 | //1-12
							
								exit +="<tr>";	
								exit +="<td id=\""+i+"\" name=\"get"+i+"\">"+i+"</td><td id=\"busNo\" name=\"busNo"+i+"\"></td>";
								exit +="</tr>";
								
								$("#tmp_table_body").html(exit);//출구번호 그림   
								
							 }
							 for(i=1;i<=text;i++){
								for(r=0;r<=busnum.length;r++){
									 if($(Array.from(rows)[r]).attr("id")==i){
									
											  $('td[name=busNo'+i+']').prepend($(Array.from(busnum)[r]).attr("id")+" ");
										}
								}
					
							 }
					
							
						},
						error:function(requet,status,error){
							console.log(error);
							
						}
						
					});//api에서 가져올 id에 따른 출구번호, 버스번호
			
						},
						
						
						
						
					error:function(request,status,error){//실패시 다음 함수 실행
						console.log(error);
					}
				});//db에서 가져온 id, 역이름
		
	});		

});

</script>
</head>
<body>

<div class="side">
	<div class="side_title">
	<a class="main" href="BetterWay_main.html">BetterWay</a>
	</div>


	<div class="wrap">
		<div id="title">출발 도착 역검색</div>
<div id="dep_arr">
		<form action="#" id="SearchForm" method="post" >
			<div id="deparr_search">
			
			<!-- <div class="dep"><input type="text"  id="select_LatLngD" name="select_LatLngD"placeholder="출발역"></div>
			<div class="arr"><input type="text"  id="select_LatLngA" name="select_LatLngA" placeholder="도착역"></div> -->
				
				  <input type="hidden" id="sD" name="select_LatLngD"/>  
				 <input type="hidden" id="sA" name="select_LatLngA"/>  
		 	<select id="selS" name = "selS"  style="width: 260px;height: 30px;font-size: 15px;">
						<option selected="selected">출발역</option>
						<c:forEach items="${SubwayList}" var="START">
							<option value="${START.SUBWAY_STATION_NAME}"><c:out
									value="${START.SUBWAY_STATION_NAME}(${START.SUBLINE_NO}호선)" />
							</option>
						</c:forEach>
					</select>
			 <select id="selE" name = "selE" style="width: 260px;height: 30px;font-size: 15px;">
						<option selected="selected">도착역</option>
						<c:forEach items="${SubwayList}" var="END">
							<option value="${END.SUBWAY_STATION_NAME}"><c:out
									value="${END.SUBWAY_STATION_NAME}(${END.SUBLINE_NO}호선)" />
							</option>
						</c:forEach>
					</select>
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
		<div class="box_sub_wrap">
		<div id="dep_arr">
		 
		<div class="box_sub">
<form action="#" id="SearchForm" method="post" >
<input type="text"  class="realtime" id="select_station" placeholder="역 이름을 입력해주세요."/>
<input type="button" id="searchBtn"value="검색">
<input type="hidden" id="st" name="select_station"/>  
</form>

<form action="#" id="apiForm" method="post" >
<input type="hidden" id="stationid" name="stationid">
</form>
			
		</div>

		</div>	  

	    <div class="box_table">
	    
	  						    <table >
								<thead></thead>
								<tbody id="tmp_table_body">
				
								</tbody>
								
								</table>
								
								<table style="display: none;">
								<thead></thead>
								<tbody id="hide">
				
								</tbody>
								
								</table>
								
								
								
								
								
								
															
							
								
	</div>
	   
  </div>
 
</div>



<div id="map" style="width: 75%;height: 1080px;"></div>

</body>

</html>


	
									