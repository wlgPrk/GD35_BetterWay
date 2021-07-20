<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>수유실 관리자</title>
<style type="text/css">
body{
	width:1440px;
	height:800px;
	margin: 0;
	display:inline-block;
}

#left{
	width: 20%;
	height : 100%;
	float: left;
}
#left_sub{
	margin-top: 200px;
	height:100%;
}
#left_sub > div{
	border-radius:15px;
	border :  1px solid;
	font-size:20pt;
	height: 55px;
	text-align: center;
	line-height: 2;
}
#left_sub div:nth-child(1){
	background-color: #ffcc00;
}
#right{
	width:80%;
	height : 100%;
	float: left;
}
#right_sub{
	height:15%;
	width:100%;
	margin-left: 120px;
	margin-top: 15px;
}
#right_sub input:nth-child(2){
	background-color: #82b2da;
}
#right_sub > input{
	font-size: 15pt;
	border: none;
	padding : 6px;
	border-radius: 5pt;	
}
#right_sub2{
	height:15%;
	width:100%;
	margin-left: 900px;
}
#writeBtn{
	font-size: 15pt;
	border: none;
	border-radius: 5pt;	
	background-color: #82b2da;
	margin-left: -132px;
	margin-top:10px;
	padding: 10px;
}
#right_sub3{
	height: 55%;
	width:100%;
}

table{
	margin-left: 100px;
	border-spacing:0px;
	text-align: center;
	margin-top: -56px;
}
th,tr,td{
	border-collapse:collapse;
	border: 1px solid;
}

th{
	background-color: #e0e0eb;
}

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript" 
		src="resources/script/popup/per.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){
	per();
	
	reloadList();
	//상단 버튼 페이지이동
	$("#happyAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_happyAdmin");
		$("#actionForm").submit();
	});
	
	$("#nursingRoomAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_nursingRoomAdmin");
		$("#actionForm").submit();
	});
	
	$("#cycleAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_cycleAdmin");
		$("#actionForm").submit();
	});
	
	$("#wheelchairAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_wheelchairAdmin");
		$("#actionForm").submit();
	});
	//-----------------------------------------------------------------
	
	$("#writeBtn").on("click",function(){
		$("#actionForm").attr("action","BetterWay_nursingRoomAdmin_Write");
		$("#actionForm").submit();
	});
	
	$(".list_wrap tbody").on("click","tr",function(){
		$("#subway_station_incode").val($(this).attr("subway_station_incode"));
		
		$("#actionForm").attr("action","BetterWay_nursingRoomAdmin_Detail");
		$("#actionForm").submit();
	});
});
function drawList(list){
	   var html = "";
	   
	   for(var d of list){
		  html += "<tr subway_station_incode =\"" + d.SUBWAY_STATION_INCODE +"\">";
	      html += "<td>" + d.SUBWAY_STATION_INCODE + "</td>";
	      html += "<td>" + d.SUBWAY_STATION_NAME + "</td>";
	      html += "<td>" + d.MAIN_PHONE_NUM + "</td>";
	      html += "</tr>";
	   }
	   
	   $(".list_wrap tbody").html(html);
	}
	
function reloadList(){
	var params = $("#actionForm").serialize();
	
	 $.ajax({
         url : "nursingRoom_List", //stationEstaInfo컨트롤러에 있음
         type : "post",  
         dataType :"json", 
         data : params,
         success : function(res){
             drawList(res.list); 
         },
         error : function(request,status,error){
            console.log(error);
         }
      });
}

</script>
</head>
<body>

	<div id="left">
		<div id="left_sub">
		<div>편의시설관리</div>
		<div>차량별냉방상태 관리</div>
		<div>건의게시판 관리</div>
		<div>역정보 관리</div>
		<div>호선 관리</div>
		</div>
	</div>
	<div id="right">
		<div id ="right_sub">
			<input type="button" id="happyAdmin" value="행복지대" />
			<input type="button" id="nursingRoomAdmin" value="수유실" />
			<input type="button" id="cycleAdmin" value="자전거보관함" />
			<input type="button" id="wheelchairAdmin" value="연단간격" />
			<input type="button" id="" value="화장실" />
		</div>
		<div id ="right_sub2">
			<form action="#" id="actionForm" method="post">
				<input type="hidden" id="subway_station_incode" name="subway_station_incode"/> 
				<input type="button" id="writeBtn"  value="행추가" />
			</form>
		</div>
		<div class ="list_wrap">
			<table>
				<colgroup>
					<col width="150px">
					<col width="300px">
					<col width="300px">
				</colgroup>
				<thead>
					<tr>
						<th>지하철역코드</th>
						<th>역이름</th>
						<th>전화번호</th>
					</tr>
				</thead>
					
				<tbody>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
					</tr>
				</tbody>				
			</table>
		</div>
		<div id ="right_sub"></div>
	</div>
</body>
</html>