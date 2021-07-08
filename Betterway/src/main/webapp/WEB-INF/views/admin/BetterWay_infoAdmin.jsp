<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>환경/운임 관리자</title>
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
#left_sub div:nth-child(2){
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
#right_sub input:nth-child(3){
	background-color: #82b2da;
}
#right_sub > input{
	font-size: 15pt;
	border: none;
	padding : 6px;
	border-radius: 5pt;	
}
#right_sub2A{

	width:100%;

}
#right_sub2B{
	height:15%;
	width:100%;

}
#writeBtn{
	font-size: 15pt;
	border: none;
	border-radius: 5pt;	
	background-color: #82b2da;
	margin-left: 50px;
	margin-top:10px;
	padding: 10px;
}
#right_sub2A > input{
	font-size: 15pt;
	border: none;
	padding : 6px;
	border-radius: 5pt;	
	background-color: #82b2da;
	margin-left: 5px;
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
.list_wrapA{
width:50%;
float:left;
}
.list_wrapB{
width:50%;
float:left;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
	reloadList();
	$("#writeBtn").on("click",function(){
		$("#actionFormA").attr("action","BetterWay_infocoolingAdmin_Write");
		$("#actionFormA").submit();
	});
	
	$(".list_wrapA tbody").on("click","tr",function(){
		$("#weak_cooling_car_no").val($(this).attr("weak_cooling_car_no"));	
		$("#actionFormA").attr("action","BetterWay_infocoolingAdmin_Detail");
		$("#actionFormA").submit();
	});
	
	$(".list_wrapB tbody").on("click","tr",function(){
		$("#guide_no").val($(this).attr("guide_no"));			
		$("#actionFormB").attr("action","BetterWay_infoguideAdmin_Detail");
		$("#actionFormB").submit();
	});
});
function drawListA(list){
	   var html = "";
	   
	   for(var d of list){
		  html += "<tr weak_cooling_car_no =\"" + d.WEAK_COOLING_CAR_NO + "\">";
	      html += "<td>" + d.WEAK_COOLING_CAR_NO + "</td>";
	      html += "<td>" + d.SUBLINE_NO + "</td>";
	      html += "<td>" + d.CAR_NO + "</td>";	 
	      html += "</tr>";
	   }
	   
	   $(".list_wrapA tbody").html(html);

		  
	}
	
	
function drawListB(list){
	   var html = "";
	   
	for(var g of list){
			  html += "<tr category =\"" + g.CATEGORY + "\">";
		      html += "<td>" + g.CATEGORY + "</td>";
		      html += "<td>" + g.TRAFFIC_CARD + "</td>";
		      html += "<td>" + g.D_TRAFFIC_CARD + "</td>";	 
		      html += "</tr>";
		   }
	$(".list_wrapB tbody").html(html);
}

function reloadList(){
	var params = $("#actionFormA").serialize();
	var params = $("#actionFormB").serialize();
	
	 $.ajax({
         url : "infoAdmin_List",
         type : "post",  
         dataType :"json", 
         data : params,
         success : function(res){
             drawListA(res.list); 
         },
         error : function(request,status,error){
            console.log(error);
         }
      });
	 
	 $.ajax({
         url : "infoAdminguide_List",
         type : "post",  
         dataType :"json", 
         data : params,
         success : function(res){
             drawListB(res.list); 
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
		<div>환경,지하철 정보 관리</div>
		<div>건의게시판 관리</div>
		<div>역정보 관리</div>
		<div>호선 관리</div>
		</div>
	</div>
	<div id="right">
	
		<div id ="right_sub2A">
			<form action="#" id="actionFormA" method="post">
			<input type="hidden" id="weak_cooling_car_no" name="weak_cooling_car_no"/>
			<input type="button" id="writeBtn" value="약냉방칸행추가" />
			</form>		
		</div>
		
		<div id ="right_sub2B">
			<form action="#" id="actionFormB" method="post">
			<input type="hidden" id="guide_no" name="guide_no"/>
			<input type="button" id="writeBtn" value="운임행추가" />
		</form>			
		</div>
		<div class ="list">
		<div class ="list_wrapA">
			<table>
				<colgroup>
					<col width="40%">
					<col width="30%">
					<col width="30%">
					
				</colgroup>
				<thead>
					<tr>
						<th>약냉방칸번호</th>
						<th>호선번호</th>
						<th>칸번호</th>
						
					</tr>
				</thead>
					
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
				</tbody>				
			</table>
		</div>
		
		<div class ="list_wrapB">
			<table>
				<colgroup>
					<col width="20%">
					<col width="50%">
					<col width="30%">				
				</colgroup>
				<thead>
					<tr>
						<th>구분</th>
						<th>교통카드</th>
						<th>1회용교통카드</th>
						
					</tr>
				</thead>
					
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>				
					</tr>
				</tbody>				
			</table>
		</div>
		</div>
		
	</div>
</body>
</html>