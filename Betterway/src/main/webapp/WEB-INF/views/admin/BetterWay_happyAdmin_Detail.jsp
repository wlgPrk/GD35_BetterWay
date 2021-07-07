<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>행복지대 상세보기</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript"></script>
</head>
<body>
<form action="#" id="goForm" method="post">
	<input type="hidden" name="happy_no" value="${param.HAPPY_NO}"/>

</form>
행복지대번호 : ${data.HAPPY_NO}<br/>
지하철역코드 : ${data.SUBWAY_STATION_INCODE}<br/>
역이름 : ${data.SUBWAY_STATION_NAME}<br/>
위치 : ${data.LOCATION}<br/>
면적 : ${data.AREA}<br/>
운영기관 : ${data.OPERATING_AGENCY}<br/>
전화번호 : ${data.PHONE_NUM}<br/>
삭제여부 : ${data.DEL_STATUS}<br/>
<input type="button" value="수정" id="updateBtn"/>
<input type="button" value="삭제" id="deleteBtn"/>
<input type="button" value="목록으로" id="listBtn"/>
</body>
</html>