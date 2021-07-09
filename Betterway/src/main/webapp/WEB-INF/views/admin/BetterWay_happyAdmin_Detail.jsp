<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행복지대 상세보기</title>
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
		$("#goForm").attr("action", "BetterWay_happyAdmin");
	    $("#goForm").submit();
	});

	$("#updateBtn").on("click",function(){
		$("#goForm").attr("action", "BetterWay_happyAdmin_Update");
		$("#goForm").submit();
	});
	
	   $("#deleteBtn").on("click", function(){
		      if(confirm("삭제하시겠습니까?")){
		    	  var params = $("#goForm").serialize();
					
					 $.ajax({
				         url : "BetterWay_happyAdmin_Deletes",
				         type : "post",  
				         dataType :"json", 
				         data : params,
				         success : function(res){
							if(res.msg == "success"){
								location.href = "BetterWay_happyAdmin";
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
	<input type="hidden" id="happy_no" name="happy_no" value="${data.HAPPY_NO}"/>
</form>
<div id="main">
<b>행복지대번호 :</b> ${data.HAPPY_NO}<br/>
<b>지하철역코드 :</b> ${data.SUBWAY_STATION_INCODE}<br/>
<b>역이름 :</b> ${data.SUBWAY_STATION_NAME}<br/>
<b>위치 :</b> ${data.LOCATION}<br/>
<b>면적 :</b> ${data.AREA}㎡<br/>
<b>운영기관 :</b> ${data.OPERATING_AGENCY}<br/>
<b>전화번호 :</b> ${data.PHONE_NUM}<br/>
<b>삭제여부 :</b> ${data.DEL_STATUS}<br/>
	<div id="main_btn">
		<input type="button" value="수정" id="updateBtn"/>
		<input type="button" value="삭제" id="deleteBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>

</body>
</html>