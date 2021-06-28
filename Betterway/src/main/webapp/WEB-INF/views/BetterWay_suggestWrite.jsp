<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>고객의 소리</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
</script>

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
 background-image:url("re/images/서브타이틀_배경.png");       
                       
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
margin-bottom:45px;
font-weight: bold;
}

.footer{
position: absolute;
top:240%;
background-color: #023459;
width :100%;
height : 60px;

}


.con_box{

	width: 900px;
}




/* 내부에 absolute 속성쓰려고 만듬 */
.con_box_2{

	position: relative;
	width: 100%;
}



.hr{
margin-top:15px;
}
/*------------------- 공용 끝 ------------------- */




/*아이디비밀번호속성 */
.id_pw{
outline: none;
border : 1px solid #e0e0eb;
	width: 250px;
    height: 40px;
    font-size: 20px;
    margin-right:10px;

}




/*제목속성 */
.con_title{
outline: none;
	border : 1px solid #e0e0eb;
	width: 900px;
    height: 40px;
    font-size: 20px;
	margin:20px 0 20px 0;
}
/*내용속성 */
.con{
outline: none;

border : 1px solid #e0e0eb;
  font-size: 20px;
}


/* 버튼틀 */
.btn_box{
margin-top :10px;
text-align: right;
}

/*취소버튼 */
.cancel_btn{
background-color:#e0e0eb;
font-size: 20px;
margin-right:10px;
width :100px;
height :50px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}
/*등록버튼*/
.con_add{
background-color:#82b2da;
font-size: 20px;
width :100px;
height :50px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;

}







</style>
</head>
<body>

<header>
  <a class="main" href="menu.html">BetterWay</a>
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
			고객의 소리
			</div>
			<div id="side_menu">
			<div id="side_sub_menu"><a href="#">건의 게시판</a></div>
			<div id="side_sub_menu"><a href="#">유실물 조회</a></div>
			</div>
		</div>
		<div id="box_top">
		
		 <div class="box_tit">
        
		        <div class="img_cov">
		      
		                  <div class="img_cov_con">
		                  	홈 > 건의게시판&nbsp;
		                  	</div>
		            </div>
    	</div>
    	
    	
    	<div id="box_con">
			<div id="box_con_cir"><img alt="건의사항" src="resources/images/suggest.png" width="50px" height="50px"> </div>
			<div id="box_con_txt">
			건의 게시판
			</div>
			
			<hr class="hr">
		<p>사이트 이용에 있어서 불편한 점을 건의하는 게시판입니다. <br/>
				서비스와 무관한 광고글, 욕설, 비방 등은 관리자가 임의 삭제하겠습니다.</p>
			<div class="con_box">
			
					<div class="con_box_2">

		 		<input type="text" class="id_pw" placeholder="아이디를 입력해주세요.">
 		<input type="password" class="id_pw" placeholder="패스워드를 입력해주세요."><br/>
 		※쉬운 비밀번호를 입력하면 타인의 수정, 삭제가 쉽습니다.<br/>
 		<input type="text" class="con_title" placeholder="제목을 입력해주세요."><br/>
 		
 		
 		
 		<textarea rows="15" cols="88" placeholder="내용을 입력해주세요." class="con"></textarea>
 	<div class="btn_box">
	<input type="button" value="취소" class="cancel_btn">
	<input type="button" value="등록" class="con_add">
	</div>
 		

	
	
	
				</div><!-- con_box_2 end -->
			
			
			
			
			
    	</div>
    	
    	
    	
    	</div>
		
    	</div>
    	
    	
 </article>
</section>

<div class="footer"></div>
</body>
</html>