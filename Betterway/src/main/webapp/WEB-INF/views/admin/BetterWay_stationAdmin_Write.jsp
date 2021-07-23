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
	margin-left: 300px;
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
	
	$("#addBtn").on("click",function(){
		if($.trim($("#subway_station_incode").val())==""){
			alert("지하철역코드를 입력해주세요.");
			$("#subway_station_incode").focus();
		}else if($.trim($("#subline_no").val())==""){
			alert("호선번호를 입력해주새요.");
			$("#subline_no").focus();
		}else if($.trim($("#subway_station_name").val())==""){
			alert("지하철를 입력해주세요.");
			$("#subway_station_name").focus();
		}else if($.trim($("#main_phone_num").val())==""){
			alert("전화번호를 입력해주세요.");
			$("#main_phone_num").focus();
		}else if($.trim($("#subway_station_ocode").val())==""){
			alert("역외부코드를 입력해주세요.");
			$("#subway_station_ocode").focus();
		}else if($.trim($("#lat").val())==""){
			alert("위도를 입력해주세요.");
			$("#lat").focus();
		}else if($.trim($("#lng").val())==""){
			alert("경도를 입력해주세요.");
			$("#lng").focus();
		}else if($.trim($("#str_incode").val())==""){
			alert("스트링형코드 입력해주세요.");
			$("#str_incode").focus();
		}else if($.trim($("#start_no").val())==""){
			alert("외부시설시작번호 를 입력해주세요.");
			$("#start_no").focus();
		}else if($.trim($("#subwaystationid").val())==""){
			alert("지하철역ID를입력해주세요.");
			$("#subwaystationid").focus();
		}else{	
			var params = $("#addForm").serialize();
			 $.ajax({
				 
		         url : "BetterWay_stationAdmin_Writes",
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
	<input type="hidden" id="subline_no" name="select_no" value="${param.select_no}"/>
</form>

<form action="#" id="addForm" method="post">
<div id="main">
<b>지하철역코드</b> <input type="text" id="subway_station_incode" name="subway_station_incode" /><br/>
<b>호선번호 :</b> <input type="text" id="subline_no" name="subline_no" value="${param.select_no}"/><br/>
<b>지하철역명 :</b> <input type="text" id="subway_station_name" name="subway_station_name"/><br/>
<b>전화번호 :</b> <input type="text" id="main_phone_num" name="main_phone_num"/><br/>
<b>역 외부코드 :</b> <input type="text" id="subway_station_ocode" name="subway_station_ocode"/><br/>
<b>위도 :</b> <input type="text" id="lat" name="lat"/><br/>
<b>경도 :</b> <input type="text" id="lng" name="lng"/><br/>
<b>스트링형 코드 :</b> <input type="text" id="str_incode" name="str_incode"/><br/>
<b>외부시설시작번호 :</b> <input type="text" id="start_no" name="start_no"/><br/>
<b>지하철역ID :</b> <input type="text" id="subwaystationid" name="subwaystationid"/><br/>
	<div id="main_btn">
		<input type="button" value="작성" id="addBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>

</body>
</html>