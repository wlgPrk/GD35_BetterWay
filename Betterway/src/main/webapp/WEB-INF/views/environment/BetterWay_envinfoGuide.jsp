<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	   
	font-size: 18px;

}
header {
    top: 0;
    left: 0;
    right: 0;
    height: 75px;
	padding-left:20px;
    color: white;
    background: #023459;
    font-weight: bold;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
footer{
   top: 0;
    left: 0;
    right: 0;
    height: 75px;
	padding-left:20px;
    color: white;
    background: #023459;

    display: flex;
    justify-content: space-between;
    align-items: center;
}

.con {
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

.station_title {
	font-size: 14px;
	font-weight:bold;
    height: 26px;
    width: 20%;
    text-align: center;
    vertical-align: middle;
    padding: 17px 14px 8px;

}

a {
		text-decoration: none;
		color: #fff;
	}

 .box{
  font-size: 20px;
  border-radius: 5px 5px 5px 5px;
  margin-left: 5px;
  }

  
.sub_con {
	display: flex;
	margin-top: 20px;
	margin-bottom: 20px;
	width: 100%; height: 375px;;
}
.top_title {
	display: flex;
	width: 100%;
  
}
  .box_title{
    position: relative;
 background-image:url("./handleimg.png");       
                       
  height:88px;

  }


.img_cover{
	backdrop-filter: blur(5px);
	padding-top:60px;
	height: 28px;

 
}
.img_cover_con{/* 어디로 왔능가  */
	font-size: 15px;
	background:rgba(52, 75, 22, 0.63);
	color: #fff;
	text-align: right;
}
.con_side{
	width:130px;
	text-align: center;
	padding-top: 20%;
}
.val_box{
    flex: 1;
	padding:30px 5px 30px 5px;
}
table, td {
  width:300px;
  height:30px;
  border-collapse : collapse;
  text-align: center;
  border-radius: 10px;
  font-weight: bold;
  font-size:13px;

};

#val{
width:30px;
  height:30px;
  background-color: #fff;
}

.con_val{
font-size:13px;
margin-top: 5px;
}
#val_table{
margin-top: 60px;
}
#air_guide_btn:hover{
text-decoration: underline;
}
</style>
<script type="text/javascript"
		src="resources/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
function getWeather() {
	$.ajax({
		url: "http://api.openweathermap.org/data/2.5/weather", // 접속 주소
		type: "get", // 전송방식 : get, post
		dataType: "json", // 받아올 데이터 형식
		data: "q=seoul&appid=44c6ec52a93219e25d17ecf7fed82606&lang=kr&units=metric", //보낼 데이터(문자열형태)
		success: function(res) { // 성공 시 다음 함수 실행 res->받아오는 데이터를 인자로 받음 
			console.log(res);
			
		
		},
		error: function(request, status, error) { // 실패 시 다음 함수 실행
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});
}
</script>

</head>
<body>
<header>
<a>실내 공기질 정보 안내</a>
</header>

		<div class="con">
			 <div class="box_title">
        
		        <div class="img_cover">
		      
		                  <div class="img_cover_con">
		                  	홈>환경정보 안내>실내 공기질 정보 &nbsp;
		                  </div>
		         </div>
    		</div>
    		
    		
    		
			<div class="wrap">

			<div class="top_title" >
				<div class="station_title">역명</div>
				<select name="station_search">
					<option>역 검색 </option>
				</select>
				<select name="subline">
					<option>호선 검색</option>
				</select>
				<input type="button" id="air_search" value="검색"/>
			</div>
		
		
			<div class="sub_con" >
			    <div class="con_side" style="border:1px solid #B2A59F; border-right: #fff;">
							<img src="resources/images/
							underground.png" style="width:100px;"/>
							<div class="station" id="result_val">
							역이름
							</div>
			    </div>
			    <div class="val_box" style="border:1px solid #B2A59F; border-left: #fff;">
					<div class="con_val">역명"역의 미세먼지(PM10) 수치는?</div>
					<div id="val" >
					PM10
					</div>
					<table id="weatherHistory">
						<tbody></tbody>
					</table>
					<table id="val_table">
						<tr>
							<td style="background: #4641D9; color:#fff;">좋음</td>
							<td style="background: #47C83E; color:#fff;">보통</td>
							<td style="background: #CCA63D; color:#fff;">나쁨</td>
							<td style="background: #CC3D3D; color:#fff;">매우나쁨</td>
						</tr>
						<tr><th colspan="4" style="font-weight:normal; font-size:8px; padding-top:5px;">	
						*0~30㎍/m³'좋음' 31~80㎍/m³'보통'<br/> 81~150㎍/m³'나쁨' 151㎍/㎥ 초과 '매우 나쁨'<br/><br/><a id="air_guide_btn"href="BetterWay_envinfoGuide2" style="font-size: 15px; color:#000;">▷ 실내 공기질 유지 기준 안내 보러가기</a></th></tr>
					</table>			
			    </div>
			</div><!-- sub_con end -->
		</div><!--wrap end  -->			
	</div>
</body>
</html>