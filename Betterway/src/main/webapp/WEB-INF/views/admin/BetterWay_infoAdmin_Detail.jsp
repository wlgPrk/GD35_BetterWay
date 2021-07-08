<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환경,운임 상세보기</title>
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
		$("#goForm").submit();
	});
	$("#updateBtn").on("click",function(){
		$("#goForm").attr("action","coolingUpdate");
		$("#goForm").submit();
	});
	$("#deleteBtn").on("click",function(){
		if(confirm("삭제하시겠습니까?")){
			var params = $("#goForm").serialize();
			
			$.ajax({
				url:"coolingDeletes",//접속 주소->testALogins파일 필요없음
				type:"post", //전송방식(get,post)
				dataType:"json",//받아올 데이터 형식
				data:params,//보낼 데이터(문자열 형태)
				success:function(res){//성공 시 다음 함수 실행
					if(res.msg=="success"){
						location.href="testABList";
					}else if(res.msg=="failed"){
						alert("작성에 실패하였습니다.");
					}else{
						alert("작성중 문제가 발생하였습니다.");
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
</head>
<body>
<form action="BetterWay_infoAdmin" id="goForm" method="post">
	<input type="hidden" name="weak_cooling_car_no" value="${param.WEAK_COOLING_CAR_NO}"/>
</form>
<div id="main">
<b>약냉방칸번호:</b> ${data.WEAK_COOLING_CAR_NO}<br/>
<b>호선번호:</b> ${data.SUBLINE_NO}<br/>
<b>칸번호 :</b> ${data.CAR_NO}<br/>

<div id="main_btn">
	<input type="button" value="수정" id="updateBtn"/>
	<input type="button" value="삭제" id="deleteBtn"/>
	<input type="button" value="목록으로" id="listBtn"/>
</div>
</div>

</body>
</html>