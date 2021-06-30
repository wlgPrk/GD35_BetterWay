<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>건의게시판</title>
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

	width: 1100px;
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




/* 테이블 */
.table{

border-top: 2px solid #82b2da;
	border-collapse:collapse
}


/* 테이블 세로길이 */
.table tr{

 height : 50px;

}
/* 테이블 헤드 */
.table th{
background-color: #f0f0f5;
}


/* 테이블 칸속성 */
.table td, th{
text-align:center;

 border: 1px solid #e0e0eb;
}



/* 이미지속성 */
.img{

width:25px;
}



/*작성버튼*/
.write_btn{
position:relative;
left: 250px;
background-color:#82b2da;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}

/* 화살표틀 */
.arrow_box{
margin-top:20px;
display: inline-block;
width : 1200px;
height :50px;

text-align: center;
}


/*화살표 */
.arrow{
width: 50px;
font-size: 20px;
height : 40px;
border : 0;
box-shadow: 1px 2px 3px grey;
background-color: #e0e0eb;

}

/*검색창 틀*/
.search_box{
margin-top:10px;
display: inline-block;
width : 1100px;
height :50px;

text-align: center;
}
/*검색창*/
.input{
width: 300px;
height:40px;
outline: none;
font-size: 20px;
}

/*검색버튼*/
.search_btn{


background-color:#e0e0eb;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}


/*검색분류*/
.search_type{
outline: none;
width :100px;
height:40px;
font-size: 20px;
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
		                  	홈 > 건의게시판 &nbsp;
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

<table class="table" cellspacing="0px">
<colgroup>
		<col width="80px"/>

		<col width="700px"/>
		<col width="80px"/>
		<col width="80px"/>
		<col width="80px"/>
		<col width="80px"/>
</colgroup>
<thead>
<tr>
						<th>번호</th>
				
						<th>제목</th>
						<th>글쓴이</th>
						<th>작성일</th>
						<th>조회</th>
						<th>추천</th>
</tr>
</thead>
<tbody>
						<tr>
						<td><img alt="공지" src="resources/images/notice.png" class="img"></td>
					
						<td>	게시판 이용안내</td>
						<td>관리자</td>
						<td>21/05/13</td>
						<td>530</td>
						<td>22</td>
					</tr>
					
							<tr>
						<td>210513</td>
				
						<td><a href="Bboard2.html">건의합니다[2]</a></td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
			
						<td>건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
			
						<td>↳re:건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>
					<tr>
						<td>210513</td>
				
						<td>↳re:건의합니다[2]</td>
						<td>익명</td>
						<td>21/12/12</td>
						<td>25</td>
						<td>3</td>
					</tr>

</tbody>


</table>

<div class="arrow_box">
<input type="button" class="arrow" value="<">
<input type="button" class="arrow" value="1">
<input type="button" class="arrow" value="2">
<input type="button" class="arrow" value="3">
<input type="button" class="arrow" value="4">
<input type="button" class="arrow" value="5">
<input type="button" class="arrow" value=">">



<input type="button" value="글쓰기" class="write_btn">

	</div>
<div class="search_box">
<select class="search_type">
					<option>제목</option>
					<option>작성자</option>
					<option>내용</option>
</select>
<input type="text" class="input"/>
<input type="button" value="검색" class="search_btn" />
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