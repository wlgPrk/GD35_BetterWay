<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간 위치</title>
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
font-weight: bold;
font-size: 15px;
background: #1E646E;
color:#fff;
width:170px;
text-align:center;
border-radius: 15px 15px 15px 15px;

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
.subbtn{
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
     color: white;background:#B2A59F; padding-top:5px;padding-bottom:5px;padding-right:5px;
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
.box_up , .box_down{
    background-color: #f2f2f2;
    width: 300px;
    height: 150px;
    padding:15px 5px 15px 5px;
    margin-top:10px;
    border-radius: 15px;
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
	background-color: #B2A59F;
}
#deparr_search_btn{
    margin-top: 20px;
}
#subbtn_realtime, #subbtn_busstation{
	color: white;
	background:#B2A59F;
}
	</style>
	<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="resources/script/jquery/zoomsl-3.0.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
		//$('#zooming').zoom();
		//$('#zooming').zoom({ on:'grab' });
		//});
		
		$("img[name='subway']").imagezoomsl({
			zoomrange: [1, 12],
			zoomstart: 4, //시작 줌
			innerzoom: true, //이미지 내 줌으로 전환
			magnifierborder: "none" //두께 없음
		});
		
		$(".realtime_search").on("click",function(){
			var html = "";
			
			$.ajax({
				/* http://swopenAPI.seoul.go.kr/api/subway/51586e4544706f6f3130376b4d6a6e57/json/realtimePosition/0/5/1호선 ->(데이터 불러오기) */
				url:"http://swopenAPI.seoul.go.kr/api/subway/51586e4544706f6f3130376b4d6a6e57/json/realtimePosition/0/5/1호선",
				type:"get",
				dataType:"json",
				success:function(res){
					console.log(res);
					
				},
				error:function(requet,status,error){
					console.log(error);
				}
			});//ajax로 데이터 불러옴
			
		});
	});
	</script>
</head>
<body>
<div class="side">
	<div class="side_title">
	<a class="main" href="javascript:main();">BetterWay</a>

	</div>
	<div id="title">실시간 위치</div>
		<div class="wrap">
	<div id="dep_arr">
		<div id="deparr_search">
			<div class="dep"><input id="dep" type="text"placeholder="출발역"></div>
			<div class="arr"><input id="arr"type="text" placeholder="도착역"></div>
		</div>
		<div id="deparr_btn">
			<input type="button" id="deparr_search_btn" value="검색" style="background: none;"/>
		</div>
	</div>	  
	<div class="subbtn_box">
		<div class="subbtn"><a id="subbtn_realtime" href="javascript:BetterWay_subLineRealtime();" >실시간 위치</a></div>
		<div class="subbtn"><a id="subbtn_busstation" href="javascript:BetterWay_subLineBusstation();">주변 버스정류장</a></div>
	</div>			
	</div><!-- wrap end -->
	
	<div class="box_upndown">
		<div class="box_sub">
			<input type="text" class="realtime" placeholder="실시간 위치"/>
			<a class="realtime_search" href="#">검색</a>
		</div>
	    <div class="box_up">이번열차: O번째 전 역<br/> OO방면<br/>다음열차: O번째 전 역<br/> OO방면</div>
	    <div class="box_down">이번열차: O번째 전 역<br/> OO방면<br/>다음열차: O번째 전 역<br/> OO방면</div>
 	 </div><!-- box_upndown end -->
 
</div>

<div class="subline_img">
		<img src= "resources/images/노선도.jpg" name="subway" id ="subway" width='100%' height='100%'/>
		<p>마우스를 올려 확대해보세요.</p>
</div>

</body>
</html>