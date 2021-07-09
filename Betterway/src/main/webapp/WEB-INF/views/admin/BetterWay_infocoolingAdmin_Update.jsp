<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환경,운임 수정</title>
</head>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#listBtn").on("click",function(){
			$("#goForm").attr("action","BetterWay_infoAdmin");
			$("#goForm").submit();
		});

	$("#updateBtn").on("click",function(){
		
		if($.trim($("#car_no").val())==""){
			alert("칸번호를 입력해 주세요");
			$("#car_no").focus();
		}else{
			var params = $("#updateForm").serialize();			
			$.ajax({
				url:"BetterWay_infocoolingAdmin_Updates",
				type:"post", //전송방식(get,post)
				dataType:"json",//받아올 데이터 형식
				data:params,//보낼 데이터(문자열 형태)
				success:function(res){//성공 시 다음 함수 실행
					if(res.msg=="success"){
						$("#updateForm").attr("action","BetterWay_infocoolingAdmin_Detail");
						$("#updateForm").submit();
					}else if(res.msg=="failed"){
						alert("수정에 실패하였습니다.");
					}else{
						alert("수정중 문제가 발생하였습니다.");
					}
				},
				error:function(request,status,error){//실패시 다음 함수 실행
					console.log(error);
				}
			});
		}
	});
	});
</script>
<body>
<form action="#" id="goForm" method="post"></form>
<form action="#" id="updateForm" method="post">
	<input type="hidden" id="weak_cooling_car_no" name="weak_cooling_car_no" value="${data.WEAK_COOLING_CAR_NO}"/>
	<input type="hidden" id="subline_no" name="subline_no" value="${data.SUBLINE_NO}"/>
	<input type="hidden" id="car_no" name="car_no" value="${data.CAR_NO}"/>
	<div id="main">

	<b>약냉방칸번호:</b> ${data.WEAK_COOLING_CAR_NO}<br/>
	<b>호선번호 :</b> ${data.SUBLINE_NO}<br/>
	<b>칸번호 :</b> <input type="text" id="car_no" name="car_no" value="${data.CAR_NO}"/><br/>
		<div id="main_btn">
			<input type="button" value="저장" id="updateBtn"/>
			<input type="button" value="목록으로" id="listBtn"/>
		</div>
	</div>
</form>
</body>
</html>