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
			$("#goForm").attr("action","BetterWay_sublineAdmin");
			$("#goForm").submit();
		});
		
		$("#updateBtn").on("click",function(){
			if($.trim($("#subline_name").val())==""){
				alert("호선명을 입력해주세요.");
				$("#subline_name").focus();
			}else if($.trim($("#color_code").val())==""){
				alert("차량색상을 입력해주세요.");
				$("#color_code").focus();
			}else if($.trim($("#car_count").val())==""){
				alert("차량대수를 입력해주세요.");
				$("#car_count").focus();
			}else{
				var params = $("#updateForm").serialize();
			
				$.ajax({
					url :"BetterWay_sublineAdmin_Updates",
					type : "post",
					dataType : "json",
					data : params,
					success : function(res){
						if(res.msg=="success"){
							$("#updateForm").attr("action","BetterWay_sublineAdmin");
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
	<input type="hidden" id="subline_no" name="subline_no" value="${data.SUBLINE_NO}"/>
<div id="main">

<b>호선명 :</b> <input type="text" id="subline_name" name="subline_name" value="${data.SUBLINE_NAME}"/><br/>
<b>차량색상 :</b> <input type="text"id="color_code" name="color_code" value="${data.COLOR_CODE}"/><br/>
<b>차량대수 :</b> <input type="text" id="car_count" name="car_count" value="${data.CAR_COUNT}"/><br/>

	<div id="main_btn">
		<input type="button" value="수정완료" id="updateBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>
</body>
</html>