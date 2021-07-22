<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>건의게시판 - 작성</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="resources/css/popup/popup.css?after" />
<link rel="stylesheet" type="text/css" href="resources/css/popup/popupPw.css?after" />
<link rel="stylesheet" type="text/css" href="resources/css/popup/popupPwDel.css?after" />
<link rel="stylesheet" type="text/css" href="resources/css/popup/popupCommPw.css?after" />
<link rel="stylesheet" type="text/css" href="resources/css/popup/popupCommPwDel.css?after" />




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
/*------------------- 공용 끝 ------------------- */


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




/*제목 틀*/
.sug_tit_box{

width:100%;
height:50px;
border-top:1px solid #e0e0eb;
border-bottom:1px solid #e0e0eb;

border-left:1px solid #e0e0eb;
border-right:1px solid #e0e0eb;
line-height:2.5;
}
/*제목,작성자*/
.sug_tit_writer{
margin-right:10px;
display:inline-block;
text-align:center;
line-height:2.5;
width:10%;
height:100%;
border-right:1px solid #e0e0eb;
}
/*날짜, 추천,조회수,댓글*/
.sug_tit_sub{
display:inline-block;
width: 20%;
height:50px;
position: absolute;
left : 720px;
}
/* 내용*/
.sug_con{
padding : 20px 0px 0px 20px;
width:100%;
height:600px;
border-right: 1px solid #e0e0eb;
border-left: 1px solid #e0e0eb;
border-bottom:1px solid #e0e0eb;
margin-bottom:10px;
}
/*댓글 추천*/
.comm_push{

width:100%;
height:50px;
}


/*댓글 이미지*/
.comm_img{
display:inline-block;
background: url("resources/images/comment.png");
background-size: 25px;
width:25px;
height:25px;
margin-right: 10px;
margin-left: 10px;
}


/*추천 버튼 */
.push_img{
display:inline-block;
background: url("resources/images/good.png");
background-size: 25px;
width:25px;
height:25px;
margin-right: 10px;
margin-left: 10px;
}

/*목록버튼 */
.list_btn{
position:absolute;
left:800px;
background-color:#e0e0eb;
font-size: 20px;
margin-right:10px;
width :80px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}


/*삭제버튼 */
.del_btn{
position:absolute;
left:700px;
background-color:#e0e0eb;
font-size: 20px;
margin-right:10px;
width :80px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}
/*수정버튼*/
.update_btn{
position:absolute;
left:600px;
background-color:#82b2da;
font-size: 20px;
width :80px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}



/*테이블*/
.comm_table{
text-align:center;
width:100%;
}

/*댓글 세로길이*/
.comm_table tr{
height:80px;
}



/*댓글 라인*/
.comm_table td{
border: 1px solid #e0e0eb;

}


/*댓글내용 왼쪽정렬*/
.comm_table tr td:nth-child(2){
padding-left:10px;
text-align: left;
}

/* 댓글날짜*/
.comm_date{
position: absolute;
left:700px;
}


/* 댓글수정*/
.comm_update{
position: absolute;
left:800px;
cursor: pointer;
}
/* 댓글삭제*/
.comm_del{
position: absolute;
left:850px;
cursor: pointer;
}
/* 댓글입력틀*/
.comm_box{
font-size: 0;
margin-top: 20px;

}

/* 아이디비밀번호입력틀*/
.id_pw_box{
display: inline-block;
height :100px;
width: 20%;

margin-right: 2%;
}

/* 내용입력틀*/
.comm_box_2{
height :100px;
display: inline-block;
vertical-align: top;
width: 78%;
}

/*아이디비밀번호입력*/
.id_pw{
	margin-bottom :18px;
	outline: none;
	width: 180px;
	height:30px;
	font-size: 20px;
	border : 1px solid #e0e0eb;
}


/*댓글 내용입력*/

.comm_{
	font-size:20px;
	outline: none;
	padding : 10px 0 0 5px;
	border : 1px solid #e0e0eb;
}

/*댓글 내용입력*/

.comm_m{
	font-size:20px;
	outline: none;
	padding : 10px 0 0 5px;
	border : 1px solid #e0e0eb;
}

/*등록*/

.comm_add{

background-color:#82b2da;
font-size: 20px;
width :70px;
height :83px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
vertical-align: top;

}

.footer{
position: absolute;
top:240%;
background-color: #023459;
width :100%;
height : 60px;

}



li{
cursor: pointer;
}


/*취소 */
.cel_btn{
display:inline-block;
position:absolute;
left:800px;
background-color:#e0e0eb;
font-size: 20px;
margin-right:10px;
width :80px;
padding-top:5px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
line-height: -1;
text-align:center;
}
/*수정버튼*/
.updates_btn{
display:inline-block;
position:absolute;
left:700px;
background-color:#82b2da;
font-size: 20px;
width :80px;
padding-top:5px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
text-align:center;
}

/*제목수정틀 */
#title_input{
outline: none;
margin-top:5px;
border:1px solid #e0e0eb;
width:500px;
height:40px;
font-size: 20px;

}

/*추천버튼 커서*/
.comm_push span:nth-child(3){
cursor:pointer;
}


</style>



<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" 
		src="resources/script/popup/popupPw.js?after"></script>
		<script type="text/javascript" 
		src="resources/script/popup/popupPwDel.js?after"></script>
<script type="text/javascript" 
		src="resources/script/popup/popupCommPw.js?after"></script>
		<script type="text/javascript" 
		src="resources/script/popup/popupCommPwDel.js?after"></script>
<script type="text/javascript" 
		src="resources/script/popup/popup.js?after"></script>
<script type="text/javascript" 
src="resources/script/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/popup/envinfoGuide.css?after" />
<script type="text/javascript" 
	src="resources/script/popup/envinfoGuide.js?after"></script>	
<script type="text/javascript">

$(document).ready(function(){
	
	//실내공기정보제공
	$("#air").on("click",function(){
		envinfoGuide();
	});
	reloadList();
	
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
	//검색텍스트유지
	$("#searchTxt").val($("#searchOldTxt").val());
	
	//구분 유지
	if("${param.searchGbn}" != ""){
		$("#searchGbn").val("${param.searchGbn}");
	}//if end
	
	reloadList();
	
	//목록버튼클릭시
	$(".btn_box").on("click","input:nth-child(1)",function(){
		$("#actionForm").attr("action","BetterWay_suggestList");
		$("#actionForm").submit();	
	});
	
	
	//수정버튼클릭시
	$(".btn_box").on("click","input:nth-child(2)",function(){
			pwPopup("비밀번호를 입력하시오" ,"","닫기");
			
	});
	
	//삭제버튼클릭시
	$(".btn_box").on("click","input:nth-child(3)",function(){
		pwDelPopup("비밀번호를 입력하시오" ,"","닫기");
			
	});
	//수정클릭시
	$(".btn_box").on("click","div:nth-child(1)",function(){
		$("#title").val($("#title_input").val());
		$("#con").val(CKEDITOR.instances['con_input'].getData());
		conModifys();
	});
	
	//수정완료클릭시
	$(".btn_box").on("click","div:nth-child(2)",function(){
		conModifyCel();
	});
	
	//댓글등록클릭시
	$("#comm_add").on("click",function(){
		if($.trim($("#comm_id").val()) =="" || $.trim($("#comm_pw").val()) =="" ){
			makePopup("경고","아이디와 비밀번호를 입력해주세요")
		}else if($.trim($("#comm_con").val())==""){
			makePopup("경고","내용을 입력해주세요")
		}else{
			reviewWrites();
		}
	});
	
	//댓글수정버튼클릭시 비밀번호체크
	$(".comm_table").on("click","tr td:nth-child(2) span:nth-child(2)",function(){
		$("#comm_no").val($(this).attr("comm_no"));
	
		commPwPopup("비밀번호를 입력하시오" ,"","닫기");
	});
	//댓글 수정 클릭시 수정완료 
	$("table").on("click","input",function(){
		$("#comm_con").val($(".comm_m").val());
		$("#comm_no").val($(this).parent().parent().attr("comm_no"));
		commModifys();
	});
	
	//댓글삭제버튼클릭시 비밀번호체크
	$(".comm_table").on("click","tr td:nth-child(2) span:nth-child(3)",function(){
		$("#comm_no").val($(this).attr("comm_no"));
		
		commPwDelPopup("비밀번호를 입력하시오" ,"","닫기");
		
	});
	
	
	//추천버튼클릭시 추천증가
	$(".comm_push").on("click","span:nth-child(3)",function(){
		pushUpdates();
	});
	
	//작성자가 관리자일시 수정,삭제 숨김
	if("${data.POST_TYPE_CODE}" =="0" || "${data.POST_TYPE_CODE}" =="2"){
		console.log("${data.POST_TYPE_CODE}");
		var html ="<input type=\"button\" value=\"목록\" class=\"list_btn\">";
		$(".btn_box").html(html);
	}
	
	
	
}); // document end



//댓글보이기, 댓글수
function reloadList(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_suggestContents", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
			
			
			drawList(res.list);
			commCnt(res.commCnt);
			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end


//댓글수 보이기
function commCnt(cnt){
	var html="";
	html ="댓글 "+ cnt +""
	
	$(".sug_tit_sub span:nth-child(2)").html(html);
	$(".comm_push span:nth-child(2)").html(html);
};




//댓글목록그리기
function drawList(list){
	var html ="";

	
	
	
	for(var d of list){ 
                                         
html+=" 	 <tr id=\"comm"+d.COMM_NO+"\" comm_no=\""+ d.COMM_NO+"\">";
html+=" 	<td>" + d.USER_ID+ " ";
html+=" 	</td>";
html+=" 	 	<td>";
html+=" 	 	<span>"+d.CON+"</span>";
html+="     <span class=\"comm_date\">"+ d.WRITE_DATE +" </span>"
html+=" 	<span class=\"comm_update\" comm_no=\""+ d.COMM_NO +"\">수정</span>";
html+=" 	<span class=\"comm_del\" comm_no=\""+ d.COMM_NO +"\">삭제</span>";
html+=" 	</td>";
html+=" 	</tr>	";
		
	}
	$(".comm_table").html(html);
	
	
	var attr="";
	
	attr+="	<colgroup>";
	attr+="	<col width=\"20%\"/>";
	attr+="	<col width=\"80%\"/>";
	attr+="	</colgroup>";
	
	$(".comm_table").prepend(attr);
	
}//drawlist end

// 수정화면나오기
function conModify(){
	var params = $("#actionForm").serialize();
	//ajax
	$.ajax({
		url: "BetterWay_suggestModify", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) {
			var html ="";
			html += "<div  class=\"updates_btn\">수정완료</div>";
 			html += "<div  class=\"cel_btn\">취소</div>";
 			$(".btn_box").html(html);
 			
 			
 			var title= $("#title_box").text();			
 			html ="<input type=\"text\" id=\"title_input\">";
 			$("#title_box").html(html);
 			$("#title_input").val(title);
 			
 			
 			
 			
			var con =$(".sug_con").text();
			html ="<textarea rows=\"15\" cols=\"88\"id=\"con_input\"></textarea>";	
			$(".sug_con_box").html(html);
			CKEDITOR.replace("con_input",{ //아이디 찾음 
			 	resize_enabled : false,
			 	language :"ko",
			 	enterMode: "2",
			 	width : "900",
			 	height : "300"
			});// CKEDITOR end
		$("#con_input").val(con);
			
	
 			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//conModify end


//수정화면완료
function conModifys(){
	var params = $("#actionForm").serialize();
	//ajax
	$.ajax({
		url: "BetterWay_suggestModifys", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) {
			var html="";
			
			html = res.data.TITLE+"";
			$("#title_box").html(html);
			html = "<div class=\"sug_con\">"+res.data.CON+"</div>";
			$(".sug_con_box").html(html);
			
			html="";
			
			html +="<input type=\"button\" value=\"목록\" class=\"list_btn\">";
 			html +="<input type=\"button\" value=\"수정\" class=\"update_btn\">";
 			html +="<input type=\"button\" value=\"삭제\" class=\"del_btn\">";
			
			
			
			
			$(".btn_box").html(html);
 			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//conModifys end


//취소버튼누를시
function conModifyCel(){
	var params = $("#actionForm").serialize();
	//ajax
	$.ajax({
		url: "BetterWay_suggestModifyCel", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) {
			var html="";
			
			html = res.data.TITLE+"";
			$("#title_box").html(html);
			html = "<div class=\"sug_con\">"+res.data.CON+"</div>";
			$(".sug_con_box").html(html);
			
			html="";
			
			html +="<input type=\"button\" value=\"목록\" class=\"list_btn\">";
 			html +="<input type=\"button\" value=\"수정\" class=\"update_btn\">";
 			html +="<input type=\"button\" value=\"삭제\" class=\"del_btn\">";
			
			
			
			
			$(".btn_box").html(html);
 			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//conModifys end


//게시물삭제
function conDels(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_conDels", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
		location.href="BetterWay_suggestList";
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end


//댓글등록
function reviewWrites(){
	var params = $("#reviewForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_reviewWrites", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
			drawList(res.list);
			commCnt(res.commCnt);
			$("#comm_con").val("");
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end



//댓글 수정화면띄우기
function commModify(data){
	var html ="";
	var text =$("#comm"+data.COMM_NO+" td:nth-child(2) span:nth-child(1)").text();
	html+="<textarea rows=\"3\" cols=\"61\" class=\"comm_m\" name=\"comm_modifyCon\" id=\"comm_modify_con"+data.COMM_NO+"\"></textarea>";
	html+="<input type=\"button\" value=\"수정\" class=\"comm_add\" id=\"comm_modify\">";
	
	
	$("#comm"+data.COMM_NO+" td:nth-child(2)").html(html);
	$("#comm_modify_con"+data.COMM_NO).text(text);
	
	
}; //commModify end

//댓글수정완료
function commModifys(){
	var params = $("#reviewForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_commModifys", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) {
			drawList(res.list);
			commCnt(res.commCnt);

		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//commModifys end


//댓글삭제완료
function commDels(){
	var params = $("#reviewForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_commDels", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) {
			drawList(res.list);
			commCnt(res.commCnt);

		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//commModifys end


function pushUpdates(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_pushUpdates", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) {
			
		html="추천"+res.pushCount.PUSH_COUNT;
		$(".sug_tit_sub span:first").html(html);
		makePopup("알림","추천되었습니다.")
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//commModifys end


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

		
 		<div class="sug_tit_box">
 		<div class="sug_tit_writer">
 		
 		제목 </div> <span id="title_box">${data.TITLE}</span>
 		
 		 <div class="sug_tit_sub">${data.WRITE_DATE}</div>
 		</div>
 		<div class="sug_tit_box">
 		<div class="sug_tit_writer">
 		작성자</div>${data.USER_ID}
 		<div class="sug_tit_sub">조회 ${data.INQ_COUNT} <span>추천 ${data.PUSH_COUNT}</span> <span>댓글2</span></div>
 		</div>
 		
 		<div class="sug_con_box">
 		<div class="sug_con">
 		${data.CON}
 		</div>
 		</div>
 		
 		<div class="comm_push">
 		<div class="comm_img"></div><span>댓글</span>  <span><div class="push_img"></div>추천하기</span>
 		 		
 	<span class="btn_box">

	
 			<input type="button" value="목록" class="list_btn">
 			<input type="button" value="수정" class="update_btn">
 			<input type="button" value="삭제" class="del_btn">
</span>
 		</div>
 	<table class="comm_table" cellspacing="0">

 	
 	<review>
 	
 	</review>
 	

 	</table>	
 		
 		

<form action="#" id="reviewForm" method="post">	
	<div class="comm_box">
	<div class="id_pw_box">
	<input type="text" placeholder="아이디" class="id_pw" name="comm_id" id="comm_id"><br/>
	<input type="password" placeholder="비밀번호" class="id_pw" name="comm_pw" id="comm_pw">
	</div>
	<div class="comm_box_2">
	<textarea rows="3" cols="60" class="comm_" name="comm_con" id="comm_con"></textarea>
	
	<input type="button" value="등록" class="comm_add" id="comm_add"></div>
	<input type="hidden" id="sug_no" name="sug_no" value="${param.sug_no}"/>
	<input type="hidden" id="comm_no" name="comm_no"/>
	</div>
</form>
<form  action="#" id="actionForm"  method="post">
<input type="hidden" name="searchGbn" value="${param.searchGbn}"/>  
<input type="hidden" id="searchOldTxt" name="searchOldTxt" value="${param.searchOldTxt}" />
<input type="hidden" class="input" name="searchTxt" value="${param.searchTxt}"/>
<input type="hidden" id="sug_no" name="sug_no" value="${param.sug_no}"/>
<input type="hidden" id="page" name="page" value="${param.page}"/>
<input type="hidden" id="title" name="title"/>
<input type="hidden" id="con" name="con"/>
<input type="hidden" id="pw" name="pw"/>

	</form>
				</div><!-- con_box_2 end -->
			
			
			
			
			
    	</div>
    	
    	
    	
    	</div>
		
    	</div>
    	
    	
 </article>
</section>


</body>
</html>