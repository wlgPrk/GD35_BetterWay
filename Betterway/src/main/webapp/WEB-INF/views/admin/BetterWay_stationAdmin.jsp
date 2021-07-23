<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>호선 관리자</title>
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
#right_sub > input{
	font-size: 15pt;
	border: none;
	padding : 6px;
	border-radius: 5pt;	
}
#right_sub2{
	height:15%;
	width:100%;
	margin-left: 1000px;
}
#writeBtn{
	font-size: 15pt;
	border: none;
	border-radius: 5pt;	
	background-color: #82b2da;

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

.logoutBtn{
position: relative;
left:850px;
}

#right_sub span{
position: relative;
left:850px;
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
	
	
	//호선구분
	if("${param.select_no}" != ""){
		$("#select_no").val("${param.select_no}");
		reloadList();
	}//if end
	
	//로그아웃
	$(".logoutBtn").on("click",function(){
		location.href = "BetterWay_logoutAdmin";
	});

	
	$("#writeBtn").on("click",function(){
		$("#actionForm").attr("action","BetterWay_stationAdmin_Write");
		$("#actionForm").submit();
	});
	
	$(".list_wrap tbody").on("click","tr",function(){
		$("#subway_station_incode").val($(this).attr("subway_station_incode"));
		$("#actionForm").attr("action","BetterWay_stationAdmin_Detail");
		$("#actionForm").submit();
	});
	
	//호선 
	$("#select_no").on("change",function(){
		reloadList();
	});
	
	
	
});//document end




function drawList(list){
	   var html = "";
	   
	   for(var d of list){
		  html += "<tr subway_station_incode =\"" + d.SUBWAY_STATION_INCODE +"\">";
	      html += "<td>" + d.SUBWAY_STATION_INCODE + "</td>";
	      html += "<td>" + d.SUBLINE_NO + "</td>";
	      html += "<td>" + d.SUBWAY_STATION_NAME + "</td>";
	      html += "<td>" + d.MAIN_PHONE_NUM + "</td>";
	      html += "<td>" + d.SUBWAY_STATION_OCODE+ "</td>";
	      html += "<td>" + d.LAT+ "</td>";
	      html += "<td>" + d.LNG+ "</td>";
	      html += "<td>" + d.STR_INCODE+ "</td>";
	      html += "<td>" + d.START_NO+ "</td>";
	      html += "<td>" + d.SUBWAYSTATIONID+ "</td>";
	      html += "</tr>";
	   }
	   
	   $(".list_wrap tbody").html(html);
	}
	
function reloadList(){
	var params = $("#actionForm").serialize();
	
	 $.ajax({
         url : "BetterWay_stationAdmins",//stationEstaInfo컨트롤러에 있음
         type : "post",  
         dataType :"json", 
         data : params,
         success : function(res){
             drawList(res.list);
             console.log(res);
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
	
		</div>
		<div id ="right_sub2">
			<form action="#" id="actionForm" method="post">
				<input type="hidden" id="subway_station_incode" name="subway_station_incode"/> 
				<input type="button" id="writeBtn"  value="행추가" />

			<select id="select_no" name="select_no">
			<option value="1">1호선</option>
			<option value="2">2호선</option>
			<option value="3">3호선</option>
			<option value="4">4호선</option>
			<option value="5">5호선</option>
			<option value="6">6호선</option>
			<option value="7">7호선</option>
			<option value="8">8호선</option>
			<option value="9">9호선</option>
			</select>
			
		<input type="hidden" name="select_no" value="${param.select_no}"/>
			</form>
			
			
		</div>
		<div class ="list_wrap">
			<table>
				<colgroup>
					<col width="100px;">
					<col width="100px;">
					<col width="200px;">
					<col width="200px;">
					<col width="100px;">
					<col width="100px;">
					<col width="100px;">
					<col width="100px;">
					<col width="100px;">
					<col width="200px;">
				
				</colgroup>
				<thead>
					<tr>
						<th>지하철역코드</th>
						<th>호선번호</th>
						<th>지하철역이름</th>
						<th>대표전화번호</th>
						<th>역 외부코드</th>
						<th>위도</th>
						<th>경도</th>
						<th>스트링형 역코드</th>
						<th>외부시설 시작번호</th>
						<th>지하철역ID</th>

					</tr>
				</thead>
					
				<tbody>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
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