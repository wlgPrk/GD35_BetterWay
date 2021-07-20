<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>역 별 시간표 안내</title>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.12.4.min.js"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
					
						$("#selstation").select2();

						// 역코드, 상행 주말
						var a = $("#selstation option:selected").val();
						console.log(a);

						$("#dateBtn1").on("click", function() {
							$("#dateBtn1").css("background-Color", "silver");
							$("#dateBtn2").css("background-Color", "white");
							$("#dateBtn3").css("background-Color", "white");
							b = "1/";
							console.log(b);

						});
						$("#dateBtn2").on("click", function() {
							$("#dateBtn1").css("background-Color", "white");
							$("#dateBtn2").css("background-Color", "silver");
							$("#dateBtn3").css("background-Color", "white");
							b = "2/";
							console.log(b);
						});

						$("#dateBtn3").on("click", function() {
							$("#dateBtn1").css("background-Color", "white");
							$("#dateBtn2").css("background-Color", "white");
							$("#dateBtn3").css("background-Color", "silver");
							b = "3/";
							console.log(b);
						});

						$("#test1").on("click",function() {
											var a = $("#selstation option:selected").val();
											$("#timetable").show();
											draw();

											$
													.ajax({
														// http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/5/0309/1/1/
														url : "http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/500/"
																+ a
																+ "/"
																+ b
																+ "1/", // 접속 주소
														type : "get", // 전송방식 : get, post
														dataType : "json",
														success : function(res) { // 성공 시 다음 함수 실행

															//var test =res.row[1];

															for (var i = 0; i < res.SearchSTNTimeTableByIDService.row.length; i++) {
																var time = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
																		.substring(
																				0,
																				2);
																var timem = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
																		.substring(
																				3,
																				5);
																var end = res.SearchSTNTimeTableByIDService.row[i].SUBWAYENAME

																if (time == "05") {
																	$(
																			'td[name="05상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "06") {
																	$(
																			'td[name="06상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "07") {
																	$(
																			'td[name="07상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "08") {
																	$(
																			'td[name="08상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "09") {
																	$(
																			'td[name="09상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "10") {
																	$(
																			'td[name="10상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "11") {
																	$(
																			'td[name="11상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "12") {
																	$(
																			'td[name="12상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "13") {
																	$(
																			'td[name="13상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "14") {
																	$(
																			'td[name="14상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "15") {
																	$(
																			'td[name="15상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "16") {
																	$(
																			'td[name="16상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "17") {
																	$(
																			'td[name="17상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "18") {
																	$(
																			'td[name="18상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "19") {
																	$(
																			'td[name="19상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "20") {
																	$(
																			'td[name="20상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "21") {
																	$(
																			'td[name="21상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "22") {
																	$(
																			'td[name="22상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "23") {
																	$(
																			'td[name="23상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "24") {
																	$(
																			'td[name="24상"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																}

															}

														},
														error : function(
																request,
																status, error) { // 실패 시 다음 함수 실행
															console
																	.log(request);
															console.log(status);
															console.log(error);
														}

													});

											$
													.ajax({
														// http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/5/0309/1/1/
														url : "http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/500/"
																+ a
																+ "/"
																+ b
																+ "2/", // 접속 주소
														type : "get", // 전송방식 : get, post
														dataType : "json",
														success : function(res) { // 성공 시 다음 함수 실행
															for (var i = 0; i < res.SearchSTNTimeTableByIDService.row.length; i++) {
																var time = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
																		.substring(
																				0,
																				2);
																var timem = res.SearchSTNTimeTableByIDService.row[i].LEFTTIME
																		.substring(
																				3,
																				5);
																var end = res.SearchSTNTimeTableByIDService.row[i].SUBWAYENAME

																if (time == "05") {
																	$(
																			'td[name="05하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "06") {
																	$(
																			'td[name="06하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "07") {
																	$(
																			'td[name="07하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "08") {
																	$(
																			'td[name="08하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "09") {
																	$(
																			'td[name="09하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "10") {
																	$(
																			'td[name="10하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "11") {
																	$(
																			'td[name="11하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "12") {
																	$(
																			'td[name="12하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "13") {
																	$(
																			'td[name="13하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "14") {
																	$(
																			'td[name="14하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "15") {
																	$(
																			'td[name="15하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "16") {
																	$(
																			'td[name="16하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "17") {
																	$(
																			'td[name="17하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "18") {
																	$(
																			'td[name="18하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "19") {
																	$(
																			'td[name="19하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "20") {
																	$(
																			'td[name="20하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "21") {
																	$(
																			'td[name="21하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "22") {
																	$(
																			'td[name="22하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																} else if (time == "23") {
																	$(
																			'td[name="23하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																}

																else if (time == "24") {
																	$(
																			'td[name="24하"]')
																			.prepend(
																					timem,
																					"("
																							+ end
																							+ ")</br>");

																}

															}
														},
														error : function(
																request,
																status, error) { // 실패 시 다음 함수 실행
															console
																	.log(request);
															console.log(status);
															console.log(error);
														}

													});

										});

					});

	function draw() {
		var html = "";
		html += "<tr><td name=\"05상\" id=\"05상\"></td><th>05</th><td name=\"05하\" id=\"05하\"></td></tr>";
		html += "<tr><td name=\"06상\" id=\"06상\"></td><th>06</th><td name=\"06하\" id=\"06하\"></td></tr>";
		html += "<tr><td name=\"07상\" id=\"07상\"></td><th>07</th><td name=\"07하\" id=\"07하\"></td></tr>";
		html += "<tr><td name=\"08상\" id=\"08상\"></td><th>08</th><td name=\"08하\" id=\"08하\"></td></tr>";
		html += "<tr><td name=\"09상\" id=\"09상\"></td><th>09</th><td name=\"09하\" id=\"09하\"></td></tr>";
		html += "<tr><td name=\"10상\" id=\"10상\"></td><th>10</th><td name=\"10하\" id=\"10하\"></td></tr>";
		html += "<tr><td name=\"11상\" id=\"11상\"></td><th>11</th><td name=\"11하\" id=\"11하\"></td></tr>";
		html += "<tr><td name=\"12상\" id=\"12상\"></td><th>12</th><td name=\"12하\" id=\"12하\"></td></tr>";
		html += "<tr><td name=\"13상\" id=\"13상\"></td><th>13</th><td name=\"13하\" id=\"13하\"></td></tr>";
		html += "<tr><td name=\"14상\" id=\"14상\"></td><th>14</th><td name=\"14하\" id=\"14하\"></td></tr>";
		html += "<tr><td name=\"15상\" id=\"15상\"></td><th>15</th><td name=\"15하\" id=\"15하\"></td></tr>";
		html += "<tr><td name=\"16상\" id=\"16상\"></td><th>16</th><td name=\"16하\" id=\"16하\"></td></tr>";
		html += "<tr><td name=\"17상\" id=\"17상\"></td><th>17</th><td name=\"17하\" id=\"17하\"></td></tr>";
		html += "<tr><td name=\"18상\" id=\"18상\"></td><th>18</th><td name=\"18하\" id=\"18하\"></td></tr>";
		html += "<tr><td name=\"19상\" id=\"19상\"></td><th>19</th><td name=\"19하\" id=\"19하\"></td></tr>";
		html += "<tr><td name=\"20상\" id=\"20상\"></td><th>20</th><td name=\"20하\" id=\"20하\"></td></tr>";
		html += "<tr><td name=\"21상\" id=\"21상\"></td><th>21</th><td name=\"21하\" id=\"21하\"></td></tr>";
		html += "<tr><td name=\"22상\" id=\"22상\"></td><th>22</th><td name=\"22하\" id=\"22하\"></td></tr>";
		html += "<tr><td name=\"23상\" id=\"23상\"></td><th>23</th><td name=\"23하\" id=\"23하\"></td></tr>";
		html += "<tr><td name=\"24상\" id=\"24상\"></td><th>24</th><td name=\"24하\" id=\"24하\"></td></tr>";

		$("#con_table").html(html);
	}
</script>
<style type="text/css">


header {
	top: 0;
	left: 0;
	right: 0;
	height: 75px;
	padding-left: 20px;
	color: white;
	background: #023459;
	font-weight: bold;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

footer {
	top: 0;
	left: 0;
	right: 0;
	height: 75px;
	padding-left: 20px;
	color: white;
	background: #023459;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.popup {
	width: 100%;
	height: 100%;
}

.wrap {
	width: 460px;
	margin: 0px auto;
	margin-top: 45px;
	margin-bottom: 50px;
	background-color: #fff;
}

.c_title {
	font-size: 14px;
	font-weight: bold;
	height: 26px;
	width: 20%;
	text-align: center;
	vertical-align: middle;
	padding: 17px 14px 8px;
}

.txt {
	width: 70%;;
	height: 29px;
	padding: 10px 14px;
	border: 1px solid #dadada;
	background: #fff;
	background-repeat: no-repeat;
	background-position: 415px 5px;
	background-size: 200px auto;
}

#bot_btn {
	border: 1px solid;
	font-size: 20px;
	border-radius: 5px 5px 5px 5px;
	border-color: #82B2DA;
	margin-left: 5px;
	float: right;
}

#bot_btn :hover {
	font-size: 20px;
	border-radius: 5px 5px 5px 5px;
	background: #B2A59F;
	float: right;
}

.sub_con {
	display: flex;
	margin-top: 20px;
	margin-bottom: 20px;
	width: 100%;
	height: 375px;;
}

.top_title {
	display: flex;
}

.box_tit {
	position: relative;
	background-image: url("resources/images/sub.png");
	background-size: cover;
	height: 88px;
}

.img_cov {
	backdrop-filter: blur(5px);
	padding-top: 60px;
	height: 28px;
}

.img_cov_con { /* 어디로 왔능가  */
	font-size: 15px;
	background: rgba(52, 75, 22, 0.63);
	color: #fff;
	text-align: right;
}

.con_side {
	width: 130px;
	text-align: center;
	padding-top: 20%;
}

.val_box {
	flex: 1;
	padding: 30px 5px 30px 5px;
}

#timetable {
	width: 300px;
	height: 30px;
	border-collapse: collapse;
	text-align: center;
	border-radius: 10px;
	font-weight: bold;
	font-size: 13px;
}

;
#val {
	width: 30px;
	height: 30px;
	background-color: #fff;
}

.contents_val {
	font-size: 13px;
	margin-top: 5px;
}

#val_tab {
	margin-top: 60px;
}



#timetable > thead {
	display: table-header-group;
	vertical-align: middle;
	background-color: #f0f0f5;
}

#timetable > th, td, tr {
	border: 2px solid #e0e0eb;
	border-collapse: collapse;
	padding: 10px;
	text-align: center;
	width: 400px;
}

#dateBtn1 {
	width: 100%;
	height: 100%;
	cursor: pointer;
}

#dateBtn2 {
	width: 100%;
	height: 100%;
	cursor: pointer;
}

#dateBtn3 {
	width: 100%;
	height: 100%;
	cursor: pointer;
}

#timetable button {
	background-color: blue;
}
</style>

</head>
<body>
<div class = popup>
	<header>
		<p>역별 시간표</p>
	</header>
	<div class="bg">
		<div class="popup">
			<div class="box_tit">
				<div class="img_cov">
					<div class="img_cov_con">홈>시간표 안내 &nbsp;</div>
				</div>
			</div>
			<div class="wrap">

				<div>
					<input type="button" id="test1" name="test1" value="검색"> <strong>요일과
						역을 선택후 버튼을 눌러주세요.</strong>
				</div>

				<div>

					<select id="selstation">
						<option selected="selected">역</option>
						<c:forEach items="${SubwayList}" var="t1">
							<option value="${t1.STR_INCODE}"><c:out
									value="${t1.SUBWAY_STATION_NAME}(${t1.SUBLINE_NO}호선)" />
							</option>
						</c:forEach>
					</select>
				</div>


				<table id="timetable" style="position: relative; left: 80px;">

					<thead>
						<tr>
							<th><input type="button" id="dateBtn1" value="평일">
							</th>
							<th><input type="button" id="dateBtn2" value="토요일">
							</th>
							<th><input type="button" id="dateBtn3" value="공휴일">
							</th>
						</tr>
						<tr>
							<th scope="col">상행</th>
							<th scope="col">시각</th>
							<th scope="col">하행</th>
						</tr>
					</thead>
					<tbody id="con_table">
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</body>

</html>