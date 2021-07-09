<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자전거보관함 수정</title>
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
			$("#goForm").attr("action","BetterWay_cycleAdmin");
			$("#goForm").submit();
		});
		
		$("#updateBtn").on("click",function(){
			if($.trim($("#subline_no").val())==""){
				alert("호선을 입력해주세요.");
				$("#subline_no").focus();
			}else if($.trim($("#subway_station_incode").val())==""){
				alert("지하철역코드를 입력해주세요.");
				$("#subway_station_incode").focus();
			}else if($.trim($("#subway_station_line").val())==""){
				alert("역이름을 입력해주세요.");
				$("#subway_station_line").focus();
			}else{
				var params = $("#updateForm").serialize();
			
				$.ajax({
					url :"BetterWay_cycleAdmin_Updates",
					type : "post",
					dataType : "json",
					data : params,
					success : function(res){
						if(res.msg=="success"){
							$("#updateForm").attr("action","BetterWay_cycleAdmin");
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
<form action="#" id="goForm" method="post"></form>
<form action="#" id="updateForm" method="post">
	<input type="hidden" id="subway_station_incode" name="subway_station_incode" value="${data.SUBWAY_STATION_INCODE}"/>

<div id="main">
<b>호선번호 :</b> <input type="number" id="subline_no" name="subline_no" value="${data.SUBLINE_NO}"/><br/>
<b>지하철역코드 :</b> <input type="number" id="subway_station_incode" name="subway_station_incode" value="${data.SUBWAY_STATION_INCODE}"/><br/>
<b>역이름 :</b> <input type="text" id="phone_num" name="phone_num" value="${data.PHONE_NUM}"/><br/>

	<div id="main_btn">
		<input type="button" value="수정완료" id="updateBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>
</body>
</html>