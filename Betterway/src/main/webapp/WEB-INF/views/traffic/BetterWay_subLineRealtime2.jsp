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
	background:#82B2DA;
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
    height: 150px;
    padding:15px 5px 15px 5px;
    margin-top:10px;
    border-radius: 15px;
    font-size: 11pt;
    text-align: center;
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
#deparr_search_btn{
    margin-top: 20px;
}
#subbtn_realtime{
	color: white;
	background: #82B2DA;
}
#subbtn_busstation{
	color: white;
	background: #B2A59F;
}
	</style>
	<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="resources/script/jquery/zoomsl-3.0.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		/* $("#subbtn_realtime").on("click",function(){
		$(".subbtn_realtime").css("background-Color","black");
		$("#subbtn_realtime").css("background-Color","black"); */
		
		$("img[name='subway']").imagezoomsl({
			zoomrange: [1, 12],
			zoomstart: 4, //시작 줌
			innerzoom: true, //이미지 내 줌으로 전환
			magnifierborder: "none" //두께 없음
		});
		
		$(".realtime_search").on("click",function(){
			var html = "";
			var a = $(".realtime").val();
							
			$.ajax({
				/*http://swopenapi.seoul.go.kr/api/subway/51586e4544706f6f3130376b4d6a6e57/json/realtimeStationArrival/0/5/%EC%84%9C%EC%9A%B8 ->(데이터 불러오기) */
				url:"http://swopenapi.seoul.go.kr/api/subway/51586e4544706f6f3130376b4d6a6e57/json/realtimeStationArrival/0/100/"+ a +"",
				type:"get",
				dataType:"json",
				success:function(res){
					var html = "";
					var html2 = "";
					var count = 0;
					
					for(var i = 0; i< res.realtimeArrivalList.length; i++){
						var st = res.realtimeArrivalList[i];
						console.log(res);
						
						if($(".realtime").val()==st.statnNm){
							if(st.updnLine == "상행"){
								if(i<2){	
									if(i==0){
										html += "<strong>이번열차 </strong><br/>";
										html += st.trainLineNm + "<br/>";
										html += st.arvlMsg2 + "<br/><br/>";
									}else{
										html += " <strong>다음열차 </strong><br/>";
										html += st.trainLineNm + "<br/>";
										html += st.arvlMsg2 + "<br/><br/>";
									}
									
								$("#box_up_sub2").html(html);
								}
							}else if(st.updnLine == "하행"){
		                        console.log(count);
		                        if(count == 0){
		                        	 	html2 += " <strong>이번열차 </strong><br/>";
				                        html2 += st.trainLineNm + "<br/>";
				                        html2 += st.arvlMsg2 + "<br/><br/>";
		                        }else if(count == 1){
		                        		html2 += " <strong>다음열차 </strong><br/>";
			                        	html2 += st.trainLineNm + "<br/>";
			                       		html2 += st.arvlMsg2 + "<br/><br/>";
		                        }
		                      
		                        
		                        $("#box_down_sub2").html(html2);
		                        count++;
		                        if(count == 3){
		                        	break;
		                        }
								//두개 그리고 싶으면 for문 밖에 count변수 만들고 count2됐을때 브레이크
		                     }
						}
					}
				},
				error:function(requet,status,error){
					console.log(error);
				}
			});//ajax로 데이터 불러옴
			
			//console.log($(".realtime").val()); //값넘어오는 지 확인
			});
		});
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
		<div id="deparr_search">
			<div class="dep"><input id="dep" type="text"placeholder="출발역"></div>
			<div class="arr"><input id="arr"type="text" placeholder="도착역"></div>
		</div>
		<div id="deparr_btn">
			<input type="button" id="deparr_search_btn" value="검색" style="background: none;"/>
		</div>
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
	    	<div id = "box_up_sub1"><strong>상행</strong><img id="box_up_sub1_img" src="resources/images/underground.png"/></div>
	    	<div id = "box_up_sub2">상행 열차 실시간 정보가 표시될 곳입니다.</div>
	    </div>
	    <div class="box_down">
	    	<div id = "box_down_sub1"><strong>하행</strong><img id="box_down_sub1_img" src="resources/images/underground.png"/></div>
	    	<div id = "box_down_sub2">하행 열차 실시간 정보가 표시될 곳입니다.</div>
	    </div>
 	 </div><!-- box_upndown end -->
 
</div>

<div class="subline_img">
		<img src= "resources/images/노선도.jpg" name="subway" id ="subway" width='100%' height='100%'/>
		<p>마우스를 올려 확대해보세요.</p>
</div>

</body>
</html>