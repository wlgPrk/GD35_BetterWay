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
 background-image:url("resources/images/서브타이틀_배경.png");       
                       
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
display:inline-block;
vertical-align:top;
margin-left:5px;
width: 50px;
font-size: 20px;
height : 40px;
border : 0;
box-shadow: 1px 2px 3px grey;
background-color: #f0f0f5;
cursor: pointer;
line-height:2;

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

vertical-align:top;
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
li{
cursor: pointer;
}
/* 현재페이지 짙어짐 */
#on{
background-color: #e0e0eb;
}

tr{
cursor:pointer;
}





</style>

<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" 
src="resources/script/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	


	
	
	
	//사이버스테이션
	$("#cyber").on("click",function(){
		location.href="BetterWay_subLineSearch"
	});
	
	//실시간열차정보
	$("#subinfo").on("click",function(){
		location.href="BetterWay_subLineRealtime"
	});
	
	//역주변 버스정류장 연계
	$("#bus").on("click",function(){
		location.href="BetterWay_subLineBusstation"
	});
	
	//역내외 시설
	$("#esta").on("click",function(){
		location.href="BetterWay_esta_main"
	});
	
	//역내외 시설
	$("#esta").on("click",function(){
		location.href="BetterWay_esta_main"
	});
	
	//실내공기정보제공
	$("#air").on("click",function(){
		location.href="BetterWay_envinfoGuide"
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
	
	//구분
	if("${param.searchGbn}" != ""){
		$(".search_type").val("${param.searchGbn}");
	}//if end
	
	reloadList();
	
	
	//검색
	$(".search_btn").on("click", function(){
		$("#page").val(1);
		reloadList();
	});
	
	//페이징 
	$(".arrow_box").on("click","div",function(){
		$("#page").val($(this).attr("page"));
		
		reloadList();
	});//paging wrap end
	
	
	//작성
	$(".arrow_box").on("click","input",function(){
		$("#actionForm").attr("action","BetterWay_suggestWrite"); 
		$("#actionForm").submit();
	});// write btn end
	
	
	//상세보기
	$("tbody").on("click","tr",function(){
		$("#sug_no").val($(this).attr("sug_no"));
		console.log($("#sug_no").val());
		
		$("#actionForm").attr("action","BetterWay_suggestContent");
		$("#actionForm").submit();
	});// tbody tr click end
	
	
	
}); // document end

function reloadList(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_suggestLists", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
			drawList(res.list);
			drawPaging(res.pb);
			drawNotice(res.data);
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end

//목록그리기
function drawList(list){
	var html ="";
	for(var d of list){       
		
		html += "<tr sug_no=\"" + d.SUG_NO + "\">";
		html+=	"<td>" +d.SUG_NO+ "</td>           "   ;
if(d.REQ_NO !=0){
	html+=	"<td>↳ re: " +d.TITLE + "</td>   "   ;
	html+=	"<td>" +d.ADMIN_ID + "</td>             "   ;
	}else{
	html+=	"<td>" +d.TITLE + "</td>   "   ;
	html+=	"<td>" +d.USER_ID + "</td>             "   ;
	}
	html+=	"<td>" +d.WRITE_DATE + "</td>         "   ;
	html+=	"<td>" +d.INQ_COUNT + "</td>               "   ;
	html+=	"<td>" +d.PUSH_COUNT + "</td>                "   ;
	html+=	"</tr>                     "   ;
		                               
		
		$("tbody").html(html);
	}
	
}//drawlist end


function drawNotice(data){
	var html="";
	for(var d of data){
	html += "<tr sug_no=\"" + d.SUG_NO + "\">";
	html+=	"<td><img alt=\"공지\" src=\"resources/images/notice.png\" class=\"img\"></td>";
	html+=	"<td>" +d.TITLE + "</td>   "   ;
	html+=	"<td>" +d.ADMIN_ID + "</td>             "   ;
	html+=	"<td>" +d.WRITE_DATE + "</td>         "   ;
	html+=	"<td>" +d.INQ_COUNT + "</td>               "   ;
	html+=	"<td>" +d.PUSH_COUNT + "</td>                "   ;
	html+=	"</tr>                     "   ;
	}
	$("tbody").prepend(html);
	
}

//페이징그리기
function drawPaging(pb){
	var html="";
	
	
	
	html+= "<div page=\"1\" type=\"button\" class=\"arrow\">처음</div>";
	if($("page").val() =="1"){
	html+= "<div page=\"1\" type=\"button\" class=\"arrow\"><</div>";
	}else{
	html+= "<div page=\""+ ($("#page").val() -1) +"\" type=\"button\" class=\"arrow\"><</div>";
	}
	
	
	for(var i=pb.startPcount; i<=pb.endPcount; i++){
	if($("#page").val() ==i){
	html+="<div page=\""+ i +"\" type=\"button\" class=\"arrow\" id=\"on\"> "+i+"</div>";
	}else{
	html+="<div page=\""+ i + "\" type=\"button\"  class=\"arrow\"> "+i+"</div>";
	}
	}
	
	
	if($("#page").val() == pb.maxPcount){
	html+= "<div page=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">></div>";
	}else {
	html+= "<div page=\""+ ($("#page").val() * 1 + 1) +"\" type=\"button\" class=\"arrow\">></div>";
	}
	html+= "<div page=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">끝</div>";
	html+= "<input type=\"button\" value=\"글쓰기\" class=\"write_btn\">";
	
	$(".arrow_box").html(html);
	
}//drawPaging end

</script>
</head>
<body>

<header>
  <a class="main" href="menu.html">BetterWay</a>
<div id="menu">
	<ul>
		<li><a href="#">교통안내</a>
			<ul>
				<li id="cyber">사이버스테이션</li>
				<li id="subinfo">실시간 열차정보</li>
				<li id="bus">역주변 버스정류장 연계</li>
				<li id="esta">역 내외 시설</li>
			</ul>
		</li>
		<li><a href="#">환경정보안내</a>
			<ul>
				<li id="air">실내 공기질 정보 제공</li>
				<li id="cool">차량 별 냉방상태</li>
			</ul>
		</li>
		<li id="news">지하철 뉴스</li>
		<li><a href="#">고객의 소리</a>
			<ul>
			
				<li id="lost">유실물 조회</li>
				<li id="sug">건의 게시판</li>
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
			<div id="side_sub_menu" class="side_sug">건의 게시판</div>
			<div id="side_sub_menu" class="side_lost">유실물 조회</div>
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
		<col width="90px"/>
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


	
<div class="search_box">

<!-- 폼 -->

<div class="arrow_box">






	</div>
<form action="#" id="actionForm" method="post">
<select class="search_type" name="searchGbn">
					<option value="0">제목</option>
					<option value="1">작성자</option>
					<option value="2">내용</option>
</select>
<input type="text" class="input" name="searchTxt" value="${param.searchTxt}"/>
<input type="hidden" id="searchOldTxt" name="searchOldTxt" value="${param.searchOldTxt}" />
<input type="hidden" name="searchGbn" value="${param.searchGbn}"/>
<input type="hidden" id="sug_no" name="sug_no"/>

<input type="hidden" id="page" name="page" value="${page}"/>
<input type="button" value="검색" class="search_btn" />


</form>
<!-- 폼 끝-->




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