<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>역 별 시간표 안내</title>
<script type="text/javascript">

var xhr = new XMLHttpRequest();
var url = 'http://openapi.tago.go.kr/openapi/service/SubwayInfoService/getKwrdFndSubwaySttnList'; /*URL*/
var queryParams = '?' + encodeURIComponent('ServiceKey') + '='+'서비스키'; /*Service Key*/
queryParams += '&' + encodeURIComponent('subwayStationName') + '=' + encodeURIComponent('서울역'); /**/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
    }
};

xhr.send('');


</script>
</head>
<body>
<div id="weatherWrap">
<span id="temp"></span>
<table id="weatherHistory">
	<tbody></tbody>
</table>
</div>
<input type="button" value="가져오기" id="getBtn" />
<div id="box"></div>
</body>

</html>