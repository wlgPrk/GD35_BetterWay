<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운임행 추가</title>
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
		 if($.trim($("#category").val())==""){
			alert("구분을 입력해주세요.");
			$("#category").focus();
		}else if($.trim($("#traffic_card").val())==""){
			alert("교통카드 상세 내용을 입력해주세요.");
			$("#traffic_card").focus();
		}else if($.trim($("#d_traffic_card").val())==""){
			alert("1회용 교통카드 상세 내용을 입력해주세요.");
			$("#d_traffic_card").focus();
		}else{
			var params = $("#addForm").serialize();
			
			 $.ajax({
		         url : "BetterWay_infoguideAdmin_Writes",
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
	<input type="hidden" name="guide_no" value="${param.GUIDE_NO}"/>
</form>

<form action="#" id="addForm" method="post">
<div id="main">
<b>구분 :</b> <input type="text"id="category" name="category" /><br/>
<b>교통카드 :</b> <input type="text"id="traffic_card" name="traffic_card" /><br/>
<b>1회용 교통카드 :</b> <input type="text" id="d_traffic_card" name="d_traffic_card"/><br/>
	<div id="main_btn">
		<input type="button" value="작성" id="addBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>

</body>
</html>