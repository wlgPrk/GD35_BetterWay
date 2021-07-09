<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행복지대 수정</title>
</head>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#listBtn").on("click",function(){
			$("#goForm").attr("action","BetterWay_happyAdmin");
			$("#goForm").submit();
		});
	});

</script>
<body>
<form action="#" id="goForm" method="post"></form>
<form action="#" id="updateForm" method="post">
	<input type="hidden" id="happy_no" name="happy_no" value="${data.HAPPY_NO}"/>
	<input type = "hidden" name = "page" value = "${param.page}"/>
<div id="main">
<b>지하철역코드 :</b> <input type="number" id="subway_station_incode" name="subway_station_incode" value="${data.SUBWAY_STATION_INCODE}"/><br/>
<b>위치 :</b> <input type="text"id="location" name="location" value="${data.LOCATION}"/><br/>
<b>면적 :</b> <input type="text" id="area" name="area" value="${data.AREA}"/>㎡<br/>
<b>운영기관 :</b> <input type="text" id="operating_agency" name="operating_agency" value="${data.OPERATING_AGENCY}"/><br/>
<b>전화번호 :</b> <input type="text" id="phone_num" name="phone_num" value="${data.PHONE_NUM}"/><br/>
	<div id="main_btn">
		<input type="button" value="수정완료" id="updateBtn"/>
		<input type="button" value="목록으로" id="listBtn"/>
	</div>
</div>
</form>
</body>
</html>