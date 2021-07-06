<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
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
a {
	text-decoration: none;
	 color:#333;
	width:250px;
}
ul li{
		list-style: none;
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




/* 사이드랑 박스  가로*/
#side {
	float: left;
background:#fff;
	width: 25%;
	/* 임의 지정 */
}
#side_top{
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

  .box_title{
    position: relative;
 	background-image:url("resources/images/handleimg.png");       
    background-size:cover;       
    height:216px;

  }


.img_cover{
 backdrop-filter: blur(5px);
   height:216px;
   padding-top: 160px;
 
}
.img_cover_con{/* 어디로 왔능가  */

font-size: 20pt;

background:rgba(52, 75, 22, 0.63);
    color: #fff;
    text-align: right;
   

}
.img_cover_contxt{
font-weight: bold;
background: #1E646E;
color:#fff;
width:170px;
text-align:center;
border-radius: 15px 15px 15px 15px;


}

#box_con_txt{
margin-top: 30px;

font-size: 30pt;

}
#box_con_cir{
padding:5px;
font-size: 25pt;
float: left;
}
.cooling_line_search{
border-bottom:2px solid #E0E0EB;
margin-top: 50px;
height:30px;
}
.cooling_line_search>.scroll:hover{
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
margin-top: 30px;
margin-bottom:30px;
text-align: center;
font-weight: bold;
}
#footer{
font:bold 16px "malgun gothic";
		width: 100vw;
		height:75px;
	  background: #023459;
		color:black;
		line-height: 50px; 
		text-align: center;
 margin-top:850px;
}
#cooling_Icon{
width:60px;
height:60px;
margin-right:5px;
}

.Lineimg{
width:20px;

}
#DoIt{
background-color: #82b2da;
width:50px;
height:30px;
border: #82b2da;
color:white;
margin-left:15px;
}
</style>
<script type="text/javascript"
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){ 
	$("#DoIt").on("click",function(){
		var params = $("#actionForm").serialize();
		$.ajax({
			url:"cooling",
			type:"post",
			dataType:"json",
			data:params,
			success:function(res){
				var html = "";
				var checkLine = document.getElementsByName("sName");
				
				for(var i=0;i<checkLine.length;i++){
					if(checkLine[i].checked==true){	
						for(j=1;j<=res.CAR_COUNT;j++){
							if(j!=res.CAR_NO){
								
								html+="<img alt=\"냉방칸\" src=\"resources/images/train.png/>"
							}else{
								html+="<img alt=\"약냉방칸\" src=\"resources/images/cooltrain.png/>"
							}
						}
					}
				} 
				$("#img").html(html);
			},
			error:function(requet,status,error){
				console.log(error);
			}
		});
		
	
	});
});


function popup(){
	window.open('BetterWay_envinfoGuide.html','팝업창',"width=700,height=1000,top="+(screen.availHeight/2-500)+",left="+(screen.availWidth/2-350)+"");

}
function sublinieInfo(){
	window.open('BetterWay_subLineSearch.html');

}
function cooling(){
	window.open('BetterWay_cooling.html');

}




</script>
</head>
<body>
<form action="#" id="actionForm" method="post">

</form>

<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>


<header>
  <a class="main" href="BetterWay_main">BetterWay</a>
	<div id="menu">
	<ul>
		<li><a href="#">교통정보안내</a>
			<ul>
				<li><a href="BetterWay_subLineSearch">노선도</a></li>
				<li><a href="BetterWay_subLineRealtime">실시간 열차정보</a></li>
				<li><a href="BetterWay_subLineBusstation">역주변 버스정류장 연계</a></li>
				<li><a href="BetterWay_esta_main">역 내외 시설</a></li>
			</ul>
		</li>
		<li><a href="#">환경정보안내</a>
			<ul>
				<li><a href="javascript:popup();">실내 공기질 정보 제공</a></li>
				<li><a href="BetterWay_cooling">차량 별 냉방상태</a></li>
			</ul>
		</li>
		<li><a href="BetterWay_subwayNews">지하철 뉴스</a>
			
		</li>
		<li><a href="BetterWay_suggestList">고객의 소리</a>
			<ul>
				<li><a href="BetterWay_lostAndFound">유실물 조회</a></li>
				<li><a href="BetterWay_suggestList">건의 게시판</a></li>
			</ul>
		</li>

	</ul>
</div>
</header>

<section>

  
  <article>
		<div id="side">
			<div id="side_top">
			환경정보 안내
			</div>
			<div id="side_menu">
			<div id="side_sub_menu"><a href="javascript:popup();">실내 공기질 정보안내</a></div>
			<div id="side_sub_menu"><a href="#">차량별 냉방상태</a></div>
			</div>
		</div>
		<div id="box_top">
		
		 <div class="box_title">
        
		        <div class="img_cover">
		      
		                  <div class="img_cover_con">
		                  	홈>환경정보 안내>차량별 냉방상태 &nbsp;
		                  	</div>
		            </div>
    	</div>
		<div id="box_con">
			<div id="box_con_cir"><img id="cooling_Icon"src="resources/images/airconditioner.png"/></div>
			
			<div id="box_con_txt">
				차량별 냉방상태
			</div>	
			
			<div class="cooling_line_search">				
			<input type="radio" name="sName" id="chkLine1" class="chkLine"><img class="Lineimg" alt="Line1" src="resources/images/line/line1.png">1호선
			<input type="radio" name="sName" id="chkLine2" class="chkLine"><img class="Lineimg" alt="Line2" src="resources/images/line/line2.png">2호선
			<input type="radio" name="sName" id="chkLine3" class="chkLine"><img class="Lineimg" alt="Line3" src="resources/images/line/line3.png">3호선
			<input type="radio" name="sName" id="chkLine4" class="chkLine"><img class="Lineimg" alt="Line4" src="resources/images/line/line4.png">4호선
			<input type="radio" name="sName" id="chkLine5" class="chkLine"><img class="Lineimg" alt="Line5" src="resources/images/line/line5.png">5호선
			<input type="radio" name="sName" id="chkLine6" class="chkLine"><img class="Lineimg" alt="Line6" src="resources/images/line/line6.png">6호선
			<input type="radio" name="sName" id="chkLine7" class="chkLine"><img class="Lineimg" alt="Line7" src="resources/images/line/line7.png">7호선
			<input type="radio" name="sName" id="chkLine8" class="chkLine"><img class="Lineimg" alt="Line8" src="resources/images/line/line8.png">8호선
			<input type="radio" name="sName" id="chkLine9" class="chkLine"><img class="Lineimg" alt="Line9" src="resources/images/line/line9.png">9호선
		
			<input type="button" id="DoIt" value="검색" >
			</div>
								
						   
						
						     
						
						  
			<p>사람마다 춥고 더움의 기준이 다르다 보니, 지하철이 춥다는 민원이 들어오기도 합니다. <br/>이러한 민원을 받아들여 만들어진 칸이 바로 ‘약냉방칸’입니다.<br/>
			더위를 잘 타는 사람들은 피해야 하고, 추위를 잘 타는 사람들에게는 필요한 약냉방칸.<br/>
			상황에 맞게 적절히 지하철에 탑승할 수 있도록 주요 지하철 노선마다 배치된 약냉방칸을 알려드릴게요.</p>
			<div class="line_con">
					
					 
				    <div >
						<div id="img">그림띄울거임</div>
						
					</div>	
				    	
  			</div>
	   </div>
  </div>

  </article>
   
</section>

	   <div id="footer">

		</div>
		

</body>

</html>