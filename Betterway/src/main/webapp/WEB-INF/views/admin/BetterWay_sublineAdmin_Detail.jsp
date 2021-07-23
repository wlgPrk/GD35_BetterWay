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
		$("#goForm").attr("action", "BetterWay_sublineAdmin");
	    $("#goForm").submit();
	});

	$("#updateBtn").on("click",function(){
		$("#goForm").attr("action", "BetterWay_sublineAdmin_Update");
		$("#goForm").submit();
	});
	
	   $("#deleteBtn").on("click", function(){
		      if(confirm("삭제하시겠습니까?")){
		    	  var params = $("#goForm").serialize();
					
					 $.ajax({
				         url : "BetterWay_sublineAdmin_Deletes",
				         type : "post",  
				         dataType :"json", 
				         data : params,
				         success : function(res){
							if(res.msg == "success"){
								console.log("동작");
								location.href = "BetterWay_sublineAdmin";
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
	<input type="hidden" id="subline_no" name="subline_no" value="${data.SUBLINE_NO}"/>
</form>
<div id="main">
<b>호선번호 :</b> ${data.SUBLINE_NO}<br/>
<b>호선명 :</b> ${data.SUBLINE_NAME}<br/>
<b>차량색상 :</b> ${data.COLOR_CODE}<br/>
<b>차량대수 :</b> ${data.CAR_COUNT}<br/>

	<div id="main_btn">
		<input type="button" value="수정" id="updateBtn"/>
		<input type="button" value="삭제" id="deleteBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>

</body>
</html>