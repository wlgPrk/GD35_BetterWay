<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행복지대 수정</title>
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
			$("#goForm").attr("action","BetterWay_happyAdmin");
			$("#goForm").submit();
		});
		
		$("#updateBtn").on("click",function(){
			if($.trim($("#subway_station_incode").val())==""){
				alert("지하철역코드를 입력해주세요.");
				$("#subway_station_incode").focus();
			}else if($.trim($("#location").val())==""){
				alert("위치를 입력해주세요.");
				$("#location").focus();
			}else if($.trim($("#area").val())==""){
				alert("면적을 입력해주세요.");
				$("#area").focus();
			}else if($.trim($("#operating_agency").val())==""){
				alert("운영기관을 입력해주세요.");
				$("#operating_agency").focus();
			}else if($.trim($("#phone_num").val())==""){
				alert("전화번호를 입력해주세요.");
				$("#phone_num").focus();
			}else{
				var params = $("#updateForm").serialize();
			
				$.ajax({
					url :"BetterWay_happyAdmin_Updates",
					type : "post",
					dataType : "json",
					data : params,
					success : function(res){
						if(res.msg=="success"){
							$("#updateForm").attr("action","BetterWay_happyAdmin");
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
	<input type="hidden" id="happy_no" name="happy_no" value="${data.HAPPY_NO}"/>
<div id="main">
<<<<<<< HEAD
<b>지하철역코드 :</b> <input type="number" id="subway_station_incode" name="subway_station_incode" value="${data.SUBWAY_STATION_INCODE}"/><br/>
<b>위치 :</b> <input type="text"id="location" name="location" value="${data.LOCATION}"/><br/>
<b>면적 :</b> <input type="text" id="area" name="area" value="${data.AREA}"/>㎡<br/>
<b>운영기관 :</b> <input type="text" id="operating_agency" name="operating_agency" value="${data.OPERATING_AGENCY}"/><br/>
<b>전화번호 :</b> <input type="text" id="phone_num" name="phone_num" value="${data.PHONE_NUM}"/><br/>
<b>면적 :</b> <input type="text" id="area" name="area" value="${data.AREA}"/>㎡<br/>
=======
<b>행복지대 번호 :</b>${param.HAPPY_NO}<br/>
<b>지하철역코드 :</b> <input type="number" id="subway_station_incode" name="subway_station_incode" value="${param.SUBWAY_STATION_INCODE}"/><br/>
<b>위치 :</b> <input type="text"id="location" name="location" value="${param.LOCATION}"/><br/>
<b>면적 :</b> <input type="text" id="area" name="area" value="${param.AREA}"/>㎡<br/>
<b>운영기관 :</b> <input type="text" id="operating_agency" name="operating_agency" value="${param.OPERATING_AGENCY}"/><br/>
<b>전화번호 :</b> <input type="text" id="phone_num" name="phone_num" value="${param.PHONE_NUM}"/><br/>
>>>>>>> refs/remotes/origin/main
	<div id="main_btn">
		<input type="button" value="수정완료" id="updateBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>
</body>
</html>