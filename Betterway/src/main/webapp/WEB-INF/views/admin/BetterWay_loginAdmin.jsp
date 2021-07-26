<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>관리자 로그인</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Popup CSS -->
<link rel="stylesheet" type="text/css" href="resources/css/popup/popup.css?after" />
<style type="text/css">

/*-------------------- 공용 시작 ---------------------*/

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
	cursor:pointer

}

section{
width:100%;
height:800px;
background-image :url("resources/images/main.jpg");

/* background-image :url("resources/images/main.jpg"); */
}

	

article {/* 섹션 안 큰내용, 가운데정렬 */
    height: 100%;
  margin: 0px auto;
    width:1440px;

  
}

section:after { /* 뒷배경 */
  content: "";
  display: table;

  clear: both;
  background: orange;
}





.footer{
position: absolute;
top:93%;
background-color: #023459;
width :100%;
height : 80px;

}


/*------------------- 공용 끝 ------------------- */




/* 컨텐츠틀*/
.con_box {


	position:relative;
	top:150px;
	padding-top:20px;
	padding-left:20px;
	background-color: #FFFFFF;
	width: 400px;
	height:280px;
	margin: 0px auto;
	box-shadow: 1px 2px 3px grey;
}

/*-- 로그인안내틀--*/
.login_text_box{
font-weight:bold;
width: 90%;
height :30px; 
font-size: 20px;
padding: 5px 0px 5px 5px; 
}

/*--텍스트인풋 --*/
.login_text{
font-weight:bold;
width: 90%;
    height: 30px;
    padding: 10px 14px;
    border: 1px solid #E0E0E0;
    background: #fff;
    
    font-size: 20px;
    margin: 0px 0px 0px 5px;
    outline: none;
  
}


/*--로그인버튼--*/
.login_btn{
color:white;
font-weight:bold;
width:90%;
height: 30px;
margin: 20px 0px 20px 5px; 
background-color:#82b2da;
box-shadow: 1px 2px 3px grey;

font-size: 20px;
line-height: 1.5;
text-align: center;
cursor: pointer;

}

.con_logo{
font-weight:bold;
font-size: 50px;
text-align:center;
width :100%;
height :50px;
}



li{
cursor:pointer;
}




</style>


<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" 
		src="resources/script/popup/popup.js?after"></script>
<link rel="stylesheet" type="text/css" href="resources/css/popup/envinfoGuide.css?after" />
<script type="text/javascript" 
	src="resources/script/popup/envinfoGuide.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	//사이버스테이션
	$("#cyber").on("click",function(){
		location.href="BetterWay_subLineSearch"
	});
	
	//실내공기정보제공
	$("#air").on("click",function(){
		envinfoGuide();
	});
	
	
	//실시간열차정보
	$("#subinfo").on("click",function(){
		location.href="BetterWay_subLineRealtime2"
	});
	
	//역주변 버스정류장 연계
	$("#bus").on("click",function(){
		location.href="BetterWay_subLineBusstation"
	});
	
	//역내외 시설
	$("#esta").on("click",function(){
		location.href="BetterWay_esta_main"
	});
	

	
	//차량별 냉방상태
	$("#cool").on("click",function(){
		location.href="BetterWay_cooling"
	});
	
	//유실물조회
	$("#news").on("click",function(){
		location.href="BetterWay_subwayNews"
	});
	
	
	//유실물조회
	$("#lost").on("click",function(){
		location.href="BetterWay_lostAndFound"
	});
	
	//건의
	$("#sug").on("click",function(){
		location.href="BetterWay_suggestList"
	});
	
	//유실물조회
	$(".side_lost").on("click",function(){
		location.href="BetterWay_lostAndFound"
	});
	
	//건의
	$(".side_sug").on("click",function(){
		location.href="BetterWay_suggestList"
	});
	
	
	
	//메인
	$(".main").on("click",function(){
		location.href="BetterWay_main"
	});
	
	
	
	$(".login_btn").on("click",function(){
		if($.trim($("#id").val())==""){
			makePopup( "경고","아이디를입력하시오","");
		}else if($.trim($("#pw").val())==""){
			makePopup( "경고","비밀번호를입력하시오","");
		}else{
			//form의 data를문자열로 전환
			var params =$("#loginForm").serialize();
			//ajax
			$.ajax({
				url: "BetterWay_loginAdmins", //접속주소
				type: "post", //전송방식 : get, post
				dataType: "json", //받아올데이터형식
				data: params, //보낼 데이터 (문자열형태)
				success: function(res) { // 성공시 다음함수 실행
					if(res.resMsg =="success"){
						location.href="BetterWay_mainAdmin"
					} else{
						
						makePopup( "경고","아이디 또는 비밀번호가 일치하지 않습니다.","");
					}
				},
				error: function(request, status, error) { // 실패 시 다음 함수 실행
					console.log(error);
				}
			});//ajax end
		}//else end			
	}); //login btn end

	
	
	
	
}); //document end
</script>
</head>
<body>

<header>
  <span class="main">BetterWay</span>
<div id="menu">
	<ul>
		<li>교통안내
			<ul>
				<li id="cyber">노선 정보</li>
				<li id="subinfo">실시간 열차정보</li>
				<li id="bus">역주변 버스정류장 연계</li>
				<li id="esta">역 내외 시설</li>
			</ul>
		</li>
		<li>환경정보안내
			<ul>
				<li id="air">실내 공기질 정보 제공</li>
				<li id="cool">차량 별 냉방상태</li>
			</ul>
		</li>
		<li id="news">지하철 뉴스
			
		</li>
		<li>고객의 소리
			<ul>
				<li class="side_lost">유실물 조회</li>
				<li class="side_sug">건의 게시판</li>
			</ul>
		</li>

	</ul>
</div>
</header>
<body>

<section>
<article>

<div class="con_box">
<div class="con_logo">BetterWay</div>

<form action="#" id="loginForm" method="post">
<div class="login_text_box">아이디</div>
<input type="text" class="login_text" placeholder="아이디를입력하세요" id="id" name="id">
<div class="login_text_box">비밀번호</div>
<input type="password" class="login_text" placeholder="비밀번호를입력하세요" id="pw" name="pw">

<div class="login_btn">로그인</div>
</form>
</div>


</article>
 
</section>

<div class="footer"></div>
</body>
</html>