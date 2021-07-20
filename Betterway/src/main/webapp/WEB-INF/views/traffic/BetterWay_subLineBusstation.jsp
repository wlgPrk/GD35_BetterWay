
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      height: 580px;
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
text-align:center;
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

	</style>
<script type="text/javascript"
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/script/jquery/zoomsl-3.0.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>


<script type="text/javascript">
$(document).ready(function(){
	$("img[name='subway']").imagezoomsl({
		zoomrange: [1, 12],
		zoomstart: 4, //시작 줌
		innerzoom: true, //이미지 내 줌으로 전환
		magnifierborder: "none" //두께 없음
	});
	//$("#select_station").select2();
	
	$("#realtime_search").on("click",function(){
		var html="";
		var params = $("#SearchForm").serialize();	
		var stationid;
		$("#st").val($("#select_station").val());
		console.log(st);

				$.ajax({
					url:"getsIdsName",
					type:"post", //전송방식(get,post)
					dataType:"json",//받아올 데이터 형식
					data:params,//보낼 데이터(문자열 형태)
					success:function(res){//성공 시 다음 함수 실행						
					//console.log(res);
								 for(var d of res.data){						
									if(st.value==d.SUBWAY_STATION_NAME){														
										var stationid=d.SUBWAYSTATIONID;
										//console.log(stationid);
									}
								} 
					$.ajax({
						
						////url:"http://openapi.tago.go.kr/openapi/service/SubwayInfoService/getSubwaySttnExitAcctoBusRouteList?serviceKey=cexG3uY6lBddZH4UqdhsVWCJaGgUx%2BjRRCl7qbAZnA17YxlK3sZAtI1er2P7Z78KZdkHVRhO%2FL21j8%2F3LR7CLw%3D%3D&subwayStationId="+stationid+"&numOfRows=300",
						url:"http://openapi.tago.go.kr/openapi/service/SubwayInfoService/getSubwaySttnExitAcctoBusRouteList?serviceKey=cexG3uY6lBddZH4UqdhsVWCJaGgUx%2BjRRCl7qbAZnA17YxlK3sZAtI1er2P7Z78KZdkHVRhO%2FL21j8%2F3LR7CLw%3D%3D&subwayStationId="+stationid+"&numOfRows=300&pageNo=1",
						type:"get",
						dataType:"xml",				
						success:function(res){
							console.log(res);
						
							//출구번호를 밖에서 변수로 만들어 놓고
							//먼저 그려놓음 ?
							//안에서 비교해가면서 버스번호 뽑기
					 	 	var busRouteNo =$(res).find("busRouteNo").text();	
							var table_exitNo =$(res).find("exitNo").text();//출구번호출구번호	
							var EXIT = new Set(table_exitNo);//1234
							console.log(busRouteNo); 
		
							var html="";
							
							var busRouteNo =$(this).find("busRouteNo").text();
							var exitNo = $(this).find("exitNo").text();	
							var table_exitNo =$(res).find("exitNo").text();//출구번호출구번호		
							var EXIT = new Set(table_exitNo);//1234
							var html = "";
							//html += "<tr><td name=\"05상\" id=\"05상\"></td><th>05</th><td name=\"05하\" id=\"05하\"></td></tr>";

							for(i=0;i<=Array.from(EXIT).length-1;i++){
								html +="<tr>";	
								html +="<td id=\""+Array.from(EXIT)[i]+"\" name=\"get"+Array.from(EXIT)[i]+"\">"+Array.from(EXIT)[i]+"</td><td id=\"busNo\" name=\"busNo"+Array.from(EXIT)[i]+"\"></td>";
								html +="</tr>";
								
								
							}console.log(Array.from(EXIT).length);
							$("tbody").html(html);  
							   
							 $(res).find('item').each(function(){
								 var busRouteNo = $(this).find("busRouteNo").text(); 	
									var exitNo = $(this).find("exitNo").text();	
									var exitNos = $(this).find("exitNo").text();
									html +="<tr>";	
									//html +="<td id=\""+exitNo+"\" name=\""+exitNo+"\">"+exitNo+"</td><td id=\""+busRouteNo+"\" name=\""+busRouteNo+"\">"+busRouteNo+"</td>";
									//1 751
									//1 571
									html +="<td id=\""+exitNo+"\" name=\""+busRouteNo+"\"></td><td id=\""+busRouteNo+"\" name=\""+busRouteNo+"\"></td>";
									
									html +="</tr>";
									$("#tmp_table_body").html(html);
									
									 
								 });  //tbody에출구번호그림	 */ 	
							 var rows = document.getElementById("tmp_table_body").getElementsByTagName("tr");
							
						    for(var r=Array.from(EXIT).length; r<=rows.length; r++ ){//로우수만큼 돌면서
						      var cells = rows[r].getElementsByTagName("td");
									console.log(cells);//tr 하나씩
									console.log(cells[1].id);
									for(i=0;i<=Array.from(EXIT).length;i++){
											if(cells[0].id==i){
												  $('td[name=busNo'+i+']').prepend(cells[1].id+" ");
											}
									}
						    }
							
							/* for(i=0;i<=Array.from(EXIT).length-1;i++){
								
								html +="<tr>";	
								html +="<td id=\""+Array.from(EXIT)[i]+"\" name=\""+Array.from(EXIT)[i]+"\">"+Array.from(EXIT)[i]+"</td><td id=\"busNo\" name=\"busNo\"></td>";
								html +="</tr>";
								
								$("tbody").html(html);
								if(Array.from(EXIT)[i]>0){
									console.log("aaaaaa");
									$(res).find('item').each(function(){
										 var busRouteNo = $(this).find("busRouteNo").text(); 	
											var exitNo = $(this).find("exitNo").text();	
											var exitNos = $(this).find("exitNo").text();	
											
											if(exitNo == Array.from(EXIT)[i]){
												console.log(exitNo);
												console.log(Array.from(EXIT)[i]);
												  $('td[name="busNo"]').prepend(busRouteNo);
												
												}
										 }); 
									
									}
						 };   */
						
							 
						
						
									 

						
							
						},
						error:function(requet,status,error){
							console.log(error);
							
						}
						
					});//api에서 가져올 id에 따른 출구번호, 버스번호
			
						},//success end
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
		<div class="box_sub_wrap">
		<div id="dep_arr">
		 
		<div class="box_sub">
		 <form action="#" id="SearchForm" method="post" >
		 <input type="text"  class="realtime" id="select_station"/>
		 <input type="button" id="realtime_search"value="검색">
		  <input type="hidden" id="st" name="select_station"/>  
		 
<%-- 	 <select class="realtime" id="select_station">
		 <option selected="selected">역</option>
		   <c:forEach items="${SubwayList}">
    			<option value="${SUBWAY_STATION_NAME}"><c:out value="${SUBWAY_STATION_NAME}"/></option>
   		   </c:forEach>
		 </select> --%>
			
		  </form>
			
		</div>

		</div>	  

	    <div class="box_table">
	    
								<table>
								<thead></thead>
								<tbody id="tmp_table_body">
				
								</tbody>
								
								</table>
								
								
							
								
	</div>
	   
  </div>
 
</div>



<div class="subline_img"><span class='zoom' id='zooming'>
		<img src= "resources/images/노선도.jpg" name="subway" id ="subway" width='100%' height='100%'/>
		<p>마우스를 올려 확대해보세요.</p>
	</span>
</div>

</body>

</html>