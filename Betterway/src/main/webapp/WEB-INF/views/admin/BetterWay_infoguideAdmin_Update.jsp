
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
		
		if($.trim($("#category").val())==""){
			alert("구분을 입력해 주세요");
			$("#category").focus();
		}else if($.trim($("#traffic_card").val())==""){
			alert("교통카드 내용을 입력해 주세요");
			$("#traffic_card").focus();
		}else if($.trim($("#d_traffic_card").val())==""){
			alert("1회용 교통카드 내용을 입력해 주세요");
			$("#d_traffic_card").focus();
		}else{
			var params = $("#updateForm").serialize();			
			$.ajax({
				url:"BetterWay_infoguideAdmin_Updates",
				type:"post", //전송방식(get,post)
				dataType:"json",//받아올 데이터 형식
				data:params,//보낼 데이터(문자열 형태)
				success:function(res){//성공 시 다음 함수 실행
					if(res.msg=="success"){
						$("#updateForm").attr("action","BetterWay_infoguideAdmin_Detail");
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
	<input type="hidden" id="guide_no" name="guide_no" value="${data.GUIDE_NO}"/>
	<div id="main">
	<b>운임번호:</b>${data.GUIDE_NO}<br/>
	<b>구분:</b><input type="text" id="category" name="category" value="${data.CATEGORY}"/><br/>
	<b>교통카드 :</b> <input type="text" id="traffic_card" name="traffic_card" value="${data.TRAFFIC_CARD}"/><br/>
	<b>1회용 교통카드 :</b> <input type="text" id="d_traffic_card" name="d_traffic_card" value="${data.D_TRAFFIC_CARD}"/><br/>
		<div id="main_btn">
			<input type="button" value="저장" id="updateBtn"/>
			<input type="button" value="목록으로" id="listBtn"/>
		</div>
	</div>
</form>
</body>
</html>