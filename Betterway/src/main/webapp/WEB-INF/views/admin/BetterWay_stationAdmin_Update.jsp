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
	margin-left: 260px;
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
			$("#goForm").attr("action","BetterWay_stationAdmin");
			$("#goForm").submit();
		});
		
		$("#updateBtn").on("click",function(){
			if($.trim($("#subway_station_incode").val())==""){
				alert("지하철역코드를 입력해주세요.");
				$("#subway_station_incode").focus();
			}else if($.trim($("#subline_no").val())==""){
				alert("호선번호를 입력해주세요.");
				$("#subline_no").focus();
			}else if($.trim($("#subway_station_name").val())==""){
				alert("지하철역명을 입력해주세요.");
				$("#subway_station_name").focus();
			}else if($.trim($("#main_phone_num").val())==""){
				alert("대표전화번호를 입력해주세요.");
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
			}else if($.trim($("#start_no").val())==""){
				alert("외부시설시작번호를 입력해주세요.");
				$("#start_no").focus();
			}else if($.trim($("#subwaystationid").val())==""){
				alert("지하철역ID를 입력해주세요.");
				$("#subwaystationid").focus();
			}else{
				var params = $("#updateForm").serialize();
			
				$.ajax({
					url :"BetterWay_stationAdmin_Updates",
					type : "post",
					dataType : "json",
					data : params,
					success : function(res){
						if(res.msg=="success"){
							$("#updateForm").attr("action","BetterWay_stationAdmin");
							$("#updateForm").submit();
						}else if(res.msg == "failed"){
							alert("수정 실패")
						}else{
							alert("수정 중 문제 발생")
						}
					},
					error : function(request, status,error){
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
<input type="hidden" name="select_no" value="${param.select_no}"/>

</form>
<form action="#" id="updateForm" method="post">
<input type="hidden" name="select_no" value="${param.select_no}"/>
	<input type="hidden" id="subway_station_incode" name="subway_station_incode" value="${data.SUBWAY_STATION_INCODE}"/>
<div id="main">

<b>지하철역코드 :</b> <input type="text" id="subway_station_incode" name="subway_station_incode" value="${data.SUBWAY_STATION_INCODE}"/><br/>
<b>호선번호 :</b> <input type="text" id="subline_no" name="subline_no" value="${data.SUBLINE_NO}"/><br/>
<b>지하철역명 :</b> <input type="text" id="subway_station_name" name="subway_station_name" value="${data.SUBWAY_STATION_NAME}"/><br/>
<b>대표전화번호 :</b> <input type="text" id="main_phone_num" name="main_phone_num" value="${data.MAIN_PHONE_NUM}"/><br/>
<b>역 외부코드:</b> <input type="text" id="subway_station_ocode" name="subway_station_ocode" value="${data.SUBWAY_STATION_OCODE}"/><br/>
<b>위도 :</b> <input type="text" id="lat" name="lat" value="${data.LAT}"/><br/>
<b>경도 :</b> <input type="text" id="lng" name="lng" value="${data.LNG}"/><br/>
<b>스트링형내부코드 :</b> <input type="text" id="str_incode" name="str_incode" value="${data.STR_INCODE}"/><br/>
<b>외부시설시작번호 :</b> <input type="text" id="start_no" name="start_no" value="${data.START_NO}"/><br/>
<b>지하철역ID :</b> <input type="text" id="subwaystationid" name="subwaystationid" value="${data.SUBWAYSTATIONID}"/><br/>


	<div id="main_btn">
		<input type="button" value="수정완료" id="updateBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>
</body>
</html>