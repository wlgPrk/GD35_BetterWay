<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	   
	font-size: 18px;

}
.header {
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
 background-image:url("resources/images/handleimg.png");       
  background-size:1100px;                 
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

.val_box{
    flex: 1;
    padding:30px 30px 30px 30px;
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
margin-left:50px;
}
#air_guide_btn:hover{
text-decoration: underline;
}
#select_station,#sName{
width:165px;
 height: 30px;
}
#val,#vals{
font-size: 15px;

}
#vals{
height:140px;
font-size:15px;
}
#air_search{
background-color: #82b2da;
color:white;
    width: 50px;
    height: 30px;
    border: #fff;
    color: white;

}
label{
font-size:15px;
font-weight: bold;
}
</style><script type="text/javascript"
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<!-- 실내공기질 팝업 스크립트 -->
<link rel="stylesheet" type="text/css" href="resources/css/popup/envinfoGuide.css?after" />
<script type="text/javascript" 
		src="resources/script/popup/envinfoGuide.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){

	
	$("#sName").on("change", function() {
		var html="";
		var params = $("#SearchForm").serialize();	

		$.ajax({
			url:"envinfoGuide",
			type:"post", //전송방식(get,post)
			dataType:"json",//받아올 데이터 형식
			data:params,//보낼 데이터(문자열 형태)
			success:function(res){//성공 시 다음 함수 실행				
		
				console.log(res);			
				for(var d of res.data) {
					//html += "<option id=\"select_station\"  name=\"subway_station_name\">"+d.SUBWAY_STATION_NAME+"</option>";

					html += "<option id=\"select_station\">"+d.SUBWAY_STATION_NAME+"</option>";
					
				}
		
				$("#select_station").html(html);//두번째셀렉트옵션에 걸러진 값인 역들을 넣어줌
			
	
				},
			error:function(request,status,error){//실패시 다음 함수 실행
				console.log(error);
			}
		});
	});//첫번째 셀렉트값이 바뀌었을 때
	

	//검색버튼
	$("#air_search").on("click", function() {
		var html="";
		$("#sn").val($("#sName").val());
		$("#st").val($("#select_station").val());
		$.ajax({
			/* http://openapi.seoul.go.kr:8088/48766550483131313131334b6d6e6666/xml/airPolutionInfo/요청시작/요청종료 ->(259개 데이터 불러오기) */
			url:"http://openapi.seoul.go.kr:8088/48766550483131313131334b6d6e6666/xml/airPolutionInfo/1/259",
			type:"get",
			dataType:"xml",
			success:function(res){
				console.log(res);
				//LINE AREA_NM CHECKDATE PMq		
							
				$(res).find("row").each(function(){
					var LINE =$(this).find("LINE").text();
					var AREA_NM =$(this).find("AREA_NM").text()
					var CHECKDATE =$(this).find("CHECKDATE").text();
					var PMq =$(this).find("PMq").text();
					
					var VIEW_TEXT = LINE +"호선"+" " +AREA_NM +" "+CHECKDATE +" "+PMq + "<br/>";
					//$("#val").append(VIEW_TEXT);
					
					
					var html = "";
					//$("#api_data").append(VIEW_TEXT);//데이터보려고 둠
					if($("#sn").val()==LINE&&$("#st").val()==AREA_NM){
						console.log("aaaa");
				
						html += "<div id=\"val\"><b>호선:</b>"+sn.value+"호선 </br></br>";
						html += "<b>역:</b>"+st.value+"역 </br></br>";
						html += "<b>초미세먼지 농도:</b>"+PMq +" ㎍/㎥</br></br>";
						html += "<b>측정시간:</b>"+CHECKDATE+"</div>";	
						$("#val").html(html);
					}
				//	$("#vals").hide(html);
					  document.getElementById("vals").style.display ='none';
				});
			
			},
			error:function(requet,status,error){
				console.log(error);
				
			}
		});//ajax로 데이터 불러옴
		

	});
});
</script>

</head>
<body>
<header class="header">
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
				<form action="#" id="SearchForm" method="post" >
				 <label>호선</label>
			        <select id="sName" name="sName">
			            <option>--호선을 선택하세요--</option>
			            <option value="1">1호선</option>
			            <option value="2">2호선</option>
			            <option value="3">3호선</option>
			            <option value="4">4호선</option>
			            <option value="5">5호선</option>
			            <option value="6">6호선</option>
			            <option value="7">7호선</option>
			            <option value="8">8호선</option>
			  
			        </select>
			     <!--쿼리 받아 뿌려줄거임 -->
			        <label>역</label>
			        <select id="select_station" name="station">
			        <option>--역을 선택하세요--</option>
			        </select>
				<input type="button" id="air_search"value="검색">
					<input type="hidden" id="sn" name="sName" />
					<input type="hidden" id="st" name="select_station" />

				</form>
			</div>
		
		
			<div class="sub_con" >
			    <div class="val_box" style="border:1px solid #B2A59F;">
					
					<div id="val" >
					
					</div>
					<div id="vals">

					**실내공기질 측정기가 설치되어 있는 역사의<br/> 실내공기질 측정 정보를 매시간 단위로 제공합니다.
					</div>
					
					<table id="val_table">
						<tr>
							<td style="background: #4641D9; color:#fff;">좋음</td>
							<td style="background: #47C83E; color:#fff;">보통</td>
							<td style="background: #CCA63D; color:#fff;">나쁨</td>
							<td style="background: #CC3D3D; color:#fff;">매우나쁨</td>
						</tr>
						<tr><th colspan="4" style="font-weight:normal; font-size:8px; padding-top:5px;">	
						*0~30㎍/m³'좋음' 31~80㎍/m³'보통'<br/> 81~150㎍/m³'나쁨' 151㎍/㎥ 초과 '매우 나쁨'<br/><br/><a id="air_guide_btn"href="BetterWaynfoGuide2" style="font-size: 15px; color:#000;">
						▷ 실내 공기질 유지 기준 안내 보러가기</a></th></tr>
					</table>			
			    </div>
			</div><!-- sub_con end -->
			
			<div id="api_data"></div>
		</div><!--wrap end  -->

		
	</div>
</body>
</html>