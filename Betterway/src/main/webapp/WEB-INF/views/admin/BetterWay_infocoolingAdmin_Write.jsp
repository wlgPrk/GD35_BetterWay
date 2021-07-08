<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환경,운임행 추가</title>
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
		$("#goForm").submit();
	});
	
	$("#addBtn").on("click",function(){
		 if($.trim($("#subline_no").val())==""){
			alert("호선번호를 입력해주세요.");
			$("#subline_no").focus();
		}else if($.trim($("#car_no").val())==""){
			alert("칸번호를 입력해주세요.");
			$("#car_no").focus();
		}else{
			var params = $("#addForm").serialize();
			
			 $.ajax({
		         url : "BetterWay_infocoolingAdmin_Writes",
		         type : "post",  
		         dataType :"json", 
		         data : params,
		         success : function(res){
					if(res.msg == "success"){
						location.href = "BetterWay_infoAdmin";
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
<form action="BetterWay_infoAdmin" id="goForm" method="post">
	<input type="hidden" name="weak_cooling_car_no" value="${param.WEAK_COOLING_CAR_NO}"/>
</form>

<form action="#" id="addForm" method="post">
<div id="main">
<b>호선번호 :</b> <input type="text"id="subline_no" name="subline_no" /><br/>
<b>칸번호 :</b> <input type="text" id="car_no" name="car_no"/><br/>
	<div id="main_btn">
		<input type="button" value="작성" id="addBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>

</body>
</html>