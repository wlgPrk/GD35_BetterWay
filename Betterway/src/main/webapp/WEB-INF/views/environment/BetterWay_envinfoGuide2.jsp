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
	text-align: center;
}


a {
		text-decoration: none;
		color: black;
	}

.box{
  font-size: 20pt;
  border-radius: 5px 5px 5px 5px;
  margin-left: 5px;
  }
  


.box_title{
	position: relative;
	background-image:url("resources/images/handleimg.png");             
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
table {
	border-collapse : collapse;
	text-align: center;
	font-size: 10pt;
	width: 460px;

}

th, td{
font-size: 8pt;
width:50px;
padding: 3px;
}
td{
border:1px solid #e0e0eb;
}
#tr_title{
background-color:#f0f0f5;
border-top:1px solid #82B2DA; 
border-left:1px solid #e0e0eb; 
border-right:1px solid #e0e0eb;
}
.con_wrap{
margin-top:20px;
}

#sub_con{
font-size: 13px;
text-align: left;
}
</style>
</head>
<body>
<header>
<a href="airQ.html" style="color:#fff;">실내 공기질 정보 안내</a>
</header>

		<div class="con">
			 <div class="box_title">
		        <div class="img_cover">
                  <div class="img_cover_con">
                  	홈>환경정보 안내>실내 공기질 유지기준 안내 &nbsp;
                  </div>
		        </div>
    		</div>
			<div class="wrap">
				<table>
				 <tr><th colspan="6"><h1>실내 공기질 유지기준</h1></th></tr>
				  <thead>
				 
				  </thead>
				  <tbody>
				  <tr id="tr_title" >
				   <th style=" border-right:1px solid #e0e0eb;">다중 이용시설</th>
				    <th style=" border-right:1px solid #e0e0eb;" >미세먼지(PM10)</th>
				    <th style=" border-right:1px solid #e0e0eb;">초미세먼지(PM2.5)</th>
				    <th style=" border-right:1px solid #e0e0eb;">이산화탄소(ppm)</th>
				    <th style=" border-right:1px solid #e0e0eb;">폼알데하이드(㎍/㎥)</th>
				    <th >일산화탄소(ppm)</th>
				  </tr>
				  <tr>
				   <td>지하역사,<br/> 지하도 상가,<br/> 역사의 대합실 등</td>
				    <td>100이하</td>
				    <td>50이하</td>
				    <td>1,000이하</td>
				    <td>100이하</td>
				    <td>10이하</td>
				  </tr>
				  <tr>
				    <td>의료기관,노인요양시설,어린이집 등</td>
				    <td>75이하</td>
				    <td>35이하</td>
				    <td>1,000이하</td>
				    <td>80이하</td>
				    <td>10이하</td>
				  </tr>
				  <tr>
				    <td>실내주차장</td>
				    <td>200이하</td>
				    <td>-</td>
				    <td>1,000이하</td>
				    <td>100이하</td>
				    <td>25이하</td>
				  </tr>
				  </tbody>
				</table>
				
					<div class="con_wrap">
					<span class="box" style="background:#1E646E;;color:#fff; font-weight: bold; ">실내 미세먼지 저감 노력-지하 역사</span>
					
					<div class="con_style"style="border:1px solid ; margin-top: 20px; ">
						<p id="sub_con">
						지하역사 승강장 내에서 초미세먼지의 상시 측정이 가능해짐에 따라 보다 체계적으로 지하역사의 초미세먼지 농도를 저감하는 조치를 시행할 수 있게 되었습니다.<br/>
						실내공기질 관리법의 개정(2020. 4. 3. 시행)에 따라 지하역사에 측정기기 설치와 전동차의
						실내공기질 측정이 의무화되고, 실내공기질 권고기준이 신설되었습니다.
					
						<br/>－ 지하역사 환기설비 내 필터규격 등 성능을 구체화하고, ‘지하역사 환기설비 운영･관리 규정’
						을 마련하는 등 환기설비 운영 효율성을 제고합니다.</p>
						
					</div>
					</div>
				
		
	
			</div>
				
		</div>
			

	
				

</body>

</html>