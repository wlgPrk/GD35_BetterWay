<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>편의시설 메인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
</script>

<style type="text/css">
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header { /* 상단 큰메뉴바 */
  top: 0;
  left: 0;
  right: 0;
  height: 75px;
  padding: 1rem;
  color: white;
  background: #023459;
  font-weight: bold;
  display: flex;
  justify-content: space-between;
  align-items: center;
   
}
ul li{
		list-style: none;
	}
	a {
		text-decoration: none;
		color:#333;
	}

	#menu {
		font:bold 16px "malgun gothic";
		width:720px;
		height:50px;
		background: #fff	;
		color:black;
		line-height: 50px; 
		text-align: center;
		z-index: 300;
	}


	#menu > ul > li {
		float:left;
		width:180px;
		position:relative;
	}
	#menu > ul > li > ul {
		width:180px;
		display:none;
		position: absolute;
		font-size:14px;
		background: #fff;
	}
	#menu > ul > li:hover > ul {
		display:block;
	}
	#menu > ul > li > ul > li:hover {
		background: #B2A59F;
		transition: ease 1s;
		}
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

nav ul {
  list-style-type: none;
  padding: 0;
}
.main{/* 상단 큰 메뉴바 아래 제일 큰 영역 */
	color:white;
	text-decoration : none;
	font-size: 30px;

}

	

article {/* 섹션 안 큰내용, 가운데정렬 */
  background-color: #fff;
    height: 100%;
  margin: 0px auto;
    width:1440px;
    background: orange;
  
}

section:after { /* 뒷배경 */
  content: "";
  display: table;

  clear: both;
  background: orange;
}


/* 
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
} */

/* 사이드랑 박스  가로*/
#sidebar {
	float: left;
background:#fff;
	width: 25%;
	/* 임의 지정 */
}
#sidebar_top{
height:216px;
background:#82B2DA;
padding-top: 80px;
font-size: 30pt;
font-weight:bold;
text-align: center;
color: #fff;
}
#box_top {
	float: right;
	
	width:75%;
	height: 645px; /* 임의 지정 */
}

  .box_tit{
    position: relative;
 background-image:url("./images/서브타이틀_배경.png");       
                       
  height:216px;

  }


.img_cov{
 backdrop-filter: blur(5px);
 background-image: url("resources/images/sub.png");
 background-size:cover;
   height:216px;
   padding-top: 160px;
 
}
.img_cov_con{/* 어디로 왔능가  */

font-size: 20pt;

background:rgba(52, 75, 22, 0.63);
    color: #fff;
    text-align: right;
   

}
.img_cov_contxt{
font-weight: bold;
background: #1E646E;
color:#fff;
width:170px;
text-align:center;
border-radius: 15px 15px 15px 15px;


}

#box_con_txt{
margin-top: 30px;
font-weight :bold;
font-size: 30pt;

}
#box_con_cir{
padding:5px;


float: left;
}
.line_sel_bar{
border-bottom:2px solid #E0E0EB;
margin-top: 50px;
height:30px;
}
.line_sel_bar>.scroll:hover{
text-decoration:underline;
}



.scroll {
text-align:center;
margin-left: 10px;

}

#side_sub_menu{
text-align: center;
font-size: 20pt;
font-weight:bold;
border-bottom:1px solid #82B2DA;
height:100px;
padding-top: 30px;
}
#side_sub_menu:hover{
background: #B2A59F;

}

p{
margin-top: 10px;
margin-bottom:30px;
font-weight: bold;
}
#hr{
	margin-top :15px;
}

#sub_tit{
	font-size: 15pt;
}
.con_box{
	width : 1080px;
	margin : auto;
}
.tab_box{
	width:100%;
	border-top:2px solid #82b2da;
}
#con_tab{
	width : 100%;
	border-collapse:collapse;
	border-spacing:0px;
}
thead{
	display: table-header-group;
	vertical-align: middle;
	background-color:#f0f0f5;
}
th,td{
	border : 1px solid #e0e0eb;
	border-collapse: collapse;
	padding : 10px;
	text-align: center;
}

#under_box{
	width:1080px;
	height:150px;
}

</style>
</head>
<body>

<header>
  <a class="main" href="BetterWay_main">BetterWay</a>
<div id="menu">
	<ul>
		<li><a href="#">교통안내</a>
			<ul>
				<li><a href="zoom.html">사이버스테이션</a></li>
				<li><a href="#">실시간 열차정보</a></li>
				<li><a href="#">역주변 버스정류장 연계</a></li>
				<li><a href="#">역 내외 시설</a></li>
			</ul>
		</li>
		<li><a href="#">환경정보안내</a>
			<ul>
				<li><a href="javascript:popup();">실내 공기질 정보 제공</a></li>
				<li><a href="conditionInfo.html">차량 별 냉방상태</a></li>
			</ul>
		</li>
		<li><a href="#">지하철 뉴스</a>
			
		</li>
		<li><a href="#">고객의 소리</a>
			<ul>
				<li><a href="#">유실물 조회</a></li>
				<li><a href="#">건의 게시판</a></li>
			</ul>
		</li>

	</ul>
</div>
</header>
<body>

<section>
  <article>
		<div id="sidebar">
			<div id="sidebar_top">
			역 내외 시설
			</div>
			<div id="side_menu">
			<div id="side_sub_menu"><a href="#">내부 편의시설</a></div>
			<div id="side_sub_menu"><a href="#">외부 시설</a></div>
			</div>
		</div>
		<div id="box_top">
		
		 <div class="box_tit">
        
		        <div class="img_cov">
		      
		                  <div class="img_cov_con">
		                  	홈>역 내외 시설 &nbsp;
		                  	</div>
		            </div>
    	</div>
    	
    	
    	<div id="box_con">
			<div id="box_con_cir"><img alt="편의시설" src="eleva.png" width="50px" height="50px"> </div>
			<div id="box_con_txt">
			역 내부 편의시설 현황
			</div>
			
			<div class="con_box">
			<hr id = "hr"/>
			<p>편의 시설에 대한 자세한 정보는 좌측 메뉴에서 확인 할 수있습니다.</p> 
			<div style="float: right;">
			원하시는 역의 이름을 검색하세요&nbsp;
			<input type="text" value="역 검색">
			</div>
			<br/>
				
			<div id = "sub_tit"><strong>서울 역</strong></div>
			<div class = "tab_box">
				<table id="con_tab">
					
					<thead>
						<tr>
							  <th>엘리베이터</th>
			 <th>에스컬레이터</th> <th>수평보행기</th>
			  <th>휠체어리프트</th> <th>이동식안전발판</th>
			   <th>휠체어충전기</th> <th>장애인 화장실</th>
			    <th>음성 유도기</th></tr>
											
					</thead>
					<tbody>
						<tr>
							<tr>
			    <td>4</td><td>5</td>
			    <td>x</td><td>1</td><td>1</td>
			    <td>x</td><td>1</td><td>33</td>
			    </tr>
						</tr>
					</tbody>				
				</table>
			</div><br/>
			
			
			<div class = "tab_box">
				<table id="con_tab">
					
					<thead>
						<tr>
			     <th>물품보관함</th>
			 <th>무인민원 발급기</th> <th>현금 지급기</th>
			  <th>위생용품 자판기</th> <th>자동 사진기</th>
			   <th>무인환전<br/>키오스크</th> <th>수유실</th>
			    <th>자전거 보관함</th></tr>
			   			
					</thead>
					<tbody>
			<tr>
			 <td>5</td><td>x</td>
			    <td>1</td><td>1</td><td>1</td>
			    <td>x</td><td>1</td><td>x</td>
			    </tr>
					</tbody>				
				</table>
    	
    	</div>
    	<br/>
    	</div>
    	
    	
    	
    	</div>
		
    	</div>
    	
    	
 </article>
</section>


</body>
</html>