<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호선 관리자</title>
<style type="text/css">
#main{
	background-color: white;
    margin-left: 750px;
    border: 1px solid;
    border-radius : 10px;
    width: 500px;
    font-size: 15pt;
}
#main_btn{
	margin-left: 218px;
    margin-bottom: 3px;
}
#main_btn > input{
    font-size: 15pt;
    border: none;
    border-radius: 5pt;
    background-color: #82b2da;
    margin-left: 5px;
    margin-top: 15px;
    padding: 10px;
    padding-left: 15px;
    padding-right: 15px;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	

	
	$("#listBtn").on("click",function(){
		$("#goForm").attr("action", "BetterWay_stationAdmin");
	    $("#goForm").submit();
	});

	$("#updateBtn").on("click",function(){
		$("#goForm").attr("action", "BetterWay_stationAdmin_Update");
		$("#goForm").submit();
	});
	
	   $("#deleteBtn").on("click", function(){
		      if(confirm("삭제하시겠습니까?")){
		    	  var params = $("#goForm").serialize();
					
					 $.ajax({
				         url : "BetterWay_stationAdmin_Deletes",
				         type : "post",  
				         dataType :"json", 
				         data : params,
				         success : function(res){
							if(res.msg == "success"){
								$("#goForm").attr("action", "BetterWay_stationAdmin");
								$("#goForm").submit();
							}else if(res.msg =="failed"){
								alert("작성에 실패하였습니다.");
							}else{
								alert("작성중 문제가 발생했습니다.");
							}
				         },
				         error : function(request,status,error){
				            console.log(error);
				         }
				      });
		      }
		   });
});
</script>
</head>
<body>
<form action="#" id="goForm" method="post">
	<input type="hidden" id="subway_station_incode" name="subway_station_incode" value="${data.SUBWAY_STATION_INCODE}"/>
	<input type="hidden" name="select_no" value="${param.select_no}"/>
</form>
<div id="main">
<b>지하철역코드 :</b> ${data.SUBWAY_STATION_INCODE}<br/>
<b>호선번호 :</b> ${data.SUBWAY_STATION_INCODE}<br/>
<b>지하철역명 :</b> ${data.SUBWAY_STATION_NAME}<br/>
<b>대표전화번호 :</b> ${data.MAIN_PHONE_NUM}<br/>
<b>역외부코드 :</b> ${data.SUBWAY_STATION_OCODE}<br/>
<b>위도 :</b> ${data.LAT}<br/>
<b>경도 :</b> ${data.LNG}<br/>
<b>스트링형내부코드 :</b> ${data.STR_INCODE}<br/>
<b>외부시설시작번호 :</b> ${data.START_NO}<br/>
<b>지하철역ID :</b> ${data.SUBWAYSTATIONID}<br/>

	<div id="main_btn">
		<input type="button" value="수정" id="updateBtn"/>
		<input type="button" value="삭제" id="deleteBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>

</body>
</html>