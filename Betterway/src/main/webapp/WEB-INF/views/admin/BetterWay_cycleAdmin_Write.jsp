<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자전거보관함 행추가</title>
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
		$("#goForm").attr("action", "BetterWay_cycleAdmin");
	    $("#goForm").submit();
	});
	
	$("#addBtn").on("click",function(){
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
			//serialize() // 폼 태그 안 에러 구성요소를 쿼리 문자열 형식으로 자동으로 만들어 줌.
			var params = $("#addForm").serialize();
			
			 $.ajax({
		         url : "BetterWay_cycleAdmin_Writes",
		         type : "post",  
		         dataType :"json", 
		         data : params,
		         success : function(res){
					if(res.msg == "success"){
						location.href = "BetterWay_cycleAdmin";
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
	<input type="hidden" name="subway_station_incode" value="${param.SUBWAY_STATION_INCODE}"/>
</form>

<form action="#" id="addForm" method="post">
<div id="main">
<b>호선번호 :</b> <input type="number" id="subline_no" name="subline_no"/><br/>
<b>지하철역코드 :</b> <input type="number" id="subway_station_incode" name="subway_station_incode"/><br/>
<b>역이름 :</b> <input type="text" id="phone_num" name="phone_num"/><br/>
	<div id="main_btn">
		<input type="button" value="작성" id="addBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>

</body>
</html>