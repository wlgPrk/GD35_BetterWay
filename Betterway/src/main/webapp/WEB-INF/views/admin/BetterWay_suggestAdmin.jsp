<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사물함형 자건거보관함 관리자</title>
<link rel="stylesheet" type="text/css" href="resources/css/popup/popup.css?after" />
<style type="text/css">
body{
	width:1440px;
	height:800px;
	margin: 0;
	display:inline-block;
}

#left{
	width: 20%;
	height : 100%;
	float: left;
}
#left_sub{
	margin-top: 200px;
	height:100%;
}
#left_sub > div{
	border-radius:15px;
	border :  1px solid;
	font-size:20pt;
	height: 55px;
	text-align: center;
	line-height: 2;
}
#left_sub div:nth-child(3){
	background-color: #ffcc00;
}
#right{
	width:80%;
	height : 100%;
	float: left;
}
#right_sub{
	height:15%;
	width:100%;
	margin-left: 120px;
	margin-top: 15px;
}
/*본문 메뉴 큰틀*/
.con_box{
margin-top:140px;
margin-left:100px;
display:inline-block;
vertical-align:top;
width:79%;
height:75%;
}
/*  푸터*/
.footer{
background-color: #023459;
width:100%;
height:5%;

}
/* -----공용끝 -----*/
/*선안겹치게*/
table{
display:inline-block;

font-size:15px;
border-collapse: collapse;

}


th{
text-align:center;
height: 30px;
background-color: #e0e0eb;
}
/* 테이블선 */
td,th{
text-align:center;
border: 2px solid black;
height: 30px;
}

/* 테이블선 */
td:nth-child(8){
text-align:center;
border: 2px solid white;
height: 30px;
text-align: left;
padding-left:5px;
}

/*삭제버튼*/
.del_btn{
width:50px;
height:25px;
background-color: #82b2da;
border: none;
border-radius: 5px;
cursor: pointer;
}


/*작성버튼*/
.btn{
position:absolute;
left:1130px;
background-color:#82b2da;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
border-radius: 5px;
}

/*작성버튼틀 */
.btn_box{
padding-top:10px;
height:50px;
width:100%;

}
/*화살표 */
.arrow{
display:inline-block;
width: 50px;
font-size: 20px;
height : 40px;
border : 2px solid black;
border-radius:10px;

background-color: #e0e0eb;
margin-left: 5px;
vertical-align: top;

}

/* 화살표틀 */
.arrow_box{

display: inline-block;
width : 100%;
height :50px;

text-align: center;
}

/*검색창 틀*/
.search_box{
margin-top:10px;
display: inline-block;
width : 900px;
height :50px;


text-align: center;
}

#user_on{
background-color: #ffcc00;
font-weight: bold;
}

#notice_on{
background-color: #ffcc00;
font-weight: bold;
}
</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" 
		src="resources/script/popup/popup.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){
	reloadList();

	
	//유저페이징
	$("#user_arrow_box").on("click","div",function(){
		console.log("작동");
		$("#userPage").val($(this).attr("userpage"));
		
		reloadList();
	});
	
	
	//----------유저검색-----------
	//게시물타입변경
	$("#userPostTypeGbn").on("change",function(){
		reloadList();
	});

	//날짜변경
	$("#userDate").on("change",function(){
		reloadList();
		
		
	});
	//날짜초기화
	$("#userResetDate").on("click",function(){
		$("#userDate").val("");
		reloadList();
	});
	//삭제여부
	$("#userDelete").on("change",function(){
		reloadList();
	});
	
	//검색
	$("#userSearchBtn").on("click",function(){
		reloadList();
	});
	
	//----------유저검색 끝-----------
	
	
	
	//----------공지검색 -----------
	//날짜변경
	$("#noticeDate").on("change",function(){
		reloadList();
		
		
	});
	//날짜초기화
	$("#noticeResetDate").on("click",function(){
		$("#noticeDate").val("");
		reloadList();
	});
	//삭제여부
	$("#noticeDelete").on("change",function(){
		reloadList();
	});
	
	//검색
	$("#noticeSearchBtn").on("click",function(){
		reloadList();
	});
	
	//----------공지검색끝 -----------
	
	
	//삭제 미니버튼
	$("tbody").on("click","td:nth-child(8)",function(){
		$("#sug_no").val($(this).parent().attr("sug_no"));
		miniDelete();
	});
	
	
	
	//최상단 체크박스 클릭
	$("#userCheckAll").click(function(){
	    if($("#userCheckAll").prop("checked")){
	        $(".userCheck").prop("checked",true);
	    }else{
	        $(".userCheck").prop("checked",false);
	    }
	});
	
	
	//최상단 체크박스 클릭
	$("#noticeCheckAll").click(function(){
	    if($("#noticeCheckAll").prop("checked")){
	        $(".noticeCheck").prop("checked",true);
	    }else{
	        $(".noticeCheck").prop("checked",false);
	    }
	});
	
	//유저게시물선택삭제버튼클릭
	$("#userDelCheck").click(function(){
		userCheckDel();
		
	});
	
	
	//공지게시물선택삭제버튼클릭
	$("#noticeDelCheck").click(function(){
		noticeCheckDel();
		
	});
	
	

	
}); //document end



//목록,페이징가져오기
function reloadList(){
	var params = $("#userForm, #noticeForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_suggestAdmins", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
				userList(res.userlist);
				userPaging(res.userpb);
			
				noticeList(res.noticelist);
				noticePaging(res.noticepb);
			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end


//목록그리기
function userList(list){
	var html ="";
	for(var d of list){       
		
		html += "<tr sug_no=\"" + d.SUG_NO + "\">";
		html += "<td><input type=\"checkbox\" class=\"userCheck\" name=\"userCheck\" value=\""+d.SUG_NO+"\"></td>";
		html+=	"<td>" +d.SUG_NO+ "</td>           "   ;
if(d.REQ_NO !=0){
	html+=	"<td>↳ re: " +d.TITLE + "</td>   "   ;
	html+=	"<td>" +d.ADMIN_ID + "</td>             "   ;
	}else{
	html+=	"<td>" +d.TITLE + "</td>   "   ;
	html+=	"<td>" +d.USER_ID + "</td>             "   ;
	}
	html+=	"<td>" +d.WRITE_DATE + "</td>         "   ;
	html+=	"<td>" +d.POST_TYPE_CODE + "</td>               "   ;
	html+=	"<td>" +d.DEL_STATUS + "</td>                "   ;
	html+=  "<td><input type=\"button\" class=\"del_btn\" value=\"삭제\"/></td>";
	html+=	"</tr>                     "   ;
		                               
		
		$("#user tbody").html(html);
	}
}
	
//공지가져오기
function noticeList(list){

		var html="";
		for(var d of list){
		html += "<tr sug_no=\"" + d.SUG_NO + "\">";
		html += "<td><input type=\"checkbox\" class=\"noticeCheck\" name=\"noticeCheck\" value=\""+d.SUG_NO+"\"></td>";
		html+=	"<td>"+ d.SUG_NO +"</td>";
		html+=	"<td>" +d.TITLE + "</td>   "   ;
		html+=	"<td>" +d.ADMIN_ID + "</td>             "   ;
		html+=	"<td>" +d.WRITE_DATE + "</td>         "   ;
		html+=	"<td>" +d.POST_TYPE_CODE + "</td>               "   ;
		html+=	"<td>" +d.DEL_STATUS + "</td>                "   ;
		html+=  "<td><input type=\"button\" class=\"del_btn\" value=\"삭제\"/></td>";
		html+=	"</tr>                     "   ;
		}
		$("#notice tbody").html(html);
		
	}
	


//페이징그리기
function userPaging(pb){
	var html="";
	
	
	
	html+= "<div userpage=\"1\" type=\"button\" class=\"arrow\">처음</div>";
	if($("page").val() =="1"){
	html+= "<div userpage=\"1\" type=\"button\" class=\"arrow\"><</div>";
	}else{
	html+= "<div userpage=\""+ ($("#userPage").val() -1) +"\" type=\"button\" class=\"arrow\"><</div>";
	}
	
	
	for(var i=pb.startPcount; i<=pb.endPcount; i++){
	if($("#page").val() ==i){
	html+="<div userpage=\""+ i +"\" type=\"button\" class=\"arrow\" id=\"user_on\"> "+i+"</div>";
	}else{
	html+="<div userpage=\""+ i + "\" type=\"button\"  class=\"arrow\"> "+i+"</div>";
	}
	}
	
	
	if($("#userPage").val() == pb.maxPcount){
	html+= "<div userpage=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">></div>";
	}else {
	html+= "<div userpage=\""+ ($("#userPage").val() * 1 + 1) +"\" type=\"button\" class=\"arrow\">></div>";
	}
	html+= "<div userpage=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">끝</div>";
	
	$("#user_arrow_box").html(html);
	
}//drawPaging end


//페이징그리기
function noticePaging(pb){
	var html="";
	
	
	
	html+= "<div noticepage=\"1\" type=\"button\" class=\"arrow\">처음</div>";
	if($("page").val() =="1"){
	html+= "<div noticepage=\"1\" type=\"button\" class=\"arrow\"><</div>";
	}else{
	html+= "<div noticepage=\""+ ($("#noticePage").val() -1) +"\" type=\"button\" class=\"arrow\"><</div>";
	}
	
	
	for(var i=pb.startPcount; i<=pb.endPcount; i++){
	if($("#page").val() ==i){
	html+="<div noticepage=\""+ i +"\" type=\"button\" class=\"arrow\" id=\"notice_on\"> "+i+"</div>";
	}else{
	html+="<div noticepage=\""+ i + "\" type=\"button\"  class=\"arrow\"> "+i+"</div>";
	}
	}
	
	
	if($("#userPage").val() == pb.maxPcount){
	html+= "<div noticepage=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">></div>";
	}else {
	html+= "<div noticepage=\""+ ($("#noticePage").val() * 1 + 1) +"\" type=\"button\" class=\"arrow\">></div>";
	}
	html+= "<div noticepage=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">끝</div>";
	
	$("#notice_arrow_box").html(html);
	
}//drawPaging end

//미니삭제버튼
function miniDelete(){
	var params = $("#userForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_suggestAdmin_Deletes", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
			makePopup("알림","삭제되었습니다.");
			reloadList();
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
	
}

//유저게시물 선택삭제
function userCheckDel(){
	var checkArray =[];
	
	$('input[name="userCheck"]:checked').each(function(i){
		checkArray.push($(this).val());
	});
	
	var params={
			"userCheck" : checkArray
	};
	console.log(params);
	//ajax
	$.ajax({
		url: "BetterWay_suggestCheckUserDeletes", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
			makePopup("알림","삭제되었습니다.");
			reloadList();
			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end


//공지게시물 선택삭제
function noticeCheckDel(){
	var checkArray =[];
	
	$('input[name="userCheck"]:checked').each(function(i){
		checkArray.push($(this).val());
	});
	
	var params={
			"noticeCheck" : checkArray
	};
	console.log(params);
	//ajax
	$.ajax({
		url: "BetterWay_suggestCheckNoticeDeletes", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
			makePopup("알림","삭제되었습니다.");
			reloadList();
			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end


</script>
</head>
<body>

	<div id="left">
		<div id="left_sub">
		<div>편의시설관리</div>
		<div>차량별냉방상태 관리</div>
		<div>건의게시판 관리</div>
		<div>역정보 관리</div>
		<div>호선 관리</div>
		</div>
	</div>
	<div id="right">
<div class="con_box">
<div class="btn_box"><input type="button" class="btn" value="글쓰기" id="writeBtn"/ ></div>
공지

<form id="noticeForm" action="#" method="post">
<table cellspacing="0px" id="notice">

<colgroup>
<col width="100px">
<col width="100px">
<col width="500px">
<col width="100px">
<col width="100px">
<col width="100px">
<col width="100px">
<col width="100px">
</colgroup>
<thead>
<tr>
<th><label for="check">선택</label><input type="checkbox"  id="noticeCheckAll"></th>
<th>번호</th>
<th>제목</th>
<th>글쓴이</th>
<th>작성일</th>
<th>분류코드</th>
<th>삭제여부</th>

</tr>
</thead>

<tbody>
<tr>
<td><input type="checkbox" id="check"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><input type="button" class="del_btn" value="삭제"/></td>
</tr>
<tr>
<td><input type="checkbox" id="check"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><input type="button" class="del_btn" value="삭제"/></td>
</tr>
</tbody>


</table>
<div class="btn_box">
<div class="arrow_box" id="notice_arrow_box">
<input type="button" class="arrow" value="처음"/>
<input type="button" class="arrow" value="<"/>
<input type="button" class="arrow" value="1"/>
<input type="button" class="arrow" value="2"/>
<input type="button" class="arrow" value="3"/>
<input type="button" class="arrow" value="4"/>
<input type="button" class="arrow" value="5"/>
<input type="button" class="arrow" value=">"/>
<input type="button" class="arrow" value="끝"/>

</div><input type="button" class="btn" value="선택삭제" name="noticeDelCheck"/>
</div>



<div class="search_box">

날짜<input type="date" id="noticeDate" name="noticeDate"> 
<input type="button" id="noticeResetDate" value="날짜초기화"> 
삭제여부<select id="noticeDelete" name="noticeDelete">
	<option value="0">전체</option>
	<option value="1">예</option>
	<option value="2">아니오</option>
</select>
<select class="search_type" name="noticeSearchGbn">
					<option value="0">번호</option>
					<option value="1">작성자</option>
					<option value="2">제목</option>
</select>
<input type="text" class="input" name="noticeSearchTxt" value="${param.noticeSearchTxt}"/>
<input type="button" value="검색" class="search_btn" id="noticeSearchBtn" />


</div>
<input type="hidden" id="noticePage" name="noticePage" value="${noticePage}"/>
</form>

<form action="#" id="userForm" method="post">
일반게시물
<table cellspacing="0px" id="user">

<colgroup>
<col width="100px">
<col width="100px">
<col width="500px">
<col width="100px">
<col width="120px">
<col width="100px">
<col width="100px">
<col width="100px">
</colgroup>
<thead>
<tr>
<th><label for="check">선택</label><input type="checkbox" id="userCheckAll"></th>
<th>번호</th>
<th>제목</th>
<th>글쓴이</th>
<th>작성일</th>
<th>분류코드</th>
<th>삭제여부</th>

</tr>
</thead>

<tbody>
<tr>
<td><input type="checkbox" id="check"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><input type="button" class="del_btn" value="삭제"/></td>
</tr>
<tr>
<td><input type="checkbox" id="check"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><input type="button" class="del_btn" value="삭제"/></td>
</tr>
</tbody>


</table>
<div class="btn_box">
<div class="arrow_box" id="user_arrow_box">
<input type="button" class="arrow" value="처음"/>
<input type="button" class="arrow" value="<"/>
<input type="button" class="arrow" value="1"/>
<input type="button" class="arrow" value="2"/>
<input type="button" class="arrow" value="3"/>
<input type="button" class="arrow" value="4"/>
<input type="button" class="arrow" value="5"/>
<input type="button" class="arrow" value=">"/>
<input type="button" class="arrow" value="끝"/>
</div>

<input type="button" class="btn" value="선택삭제" id="userDelCheck"/></div>


<div class="search_box">
게시물타입<select name="userPostTypeGbn" id="userPostTypeGbn">
	<option value="0">전체</option>
	<option value="1">건의</option>
	<option value="2">답변</option>
</select>
날짜<input type="date" name="userDate" id="userDate"> 
<input type="button" value="날짜초기화" id="userResetDate"/>
삭제여부<select name="userDelete" id="userDelete">
	<option value="0">전체</option>
	<option value="1">예</option>
	<option value="2">아니오</option>
</select>
<select class="search_type" name="userSearchGbn">
					<option value="0">번호</option>
					<option value="1">작성자</option>
					<option value="2">제목</option>
</select>
<input type="text" class="input" name="userSearchTxt" value="${param.userSearchTxt}"/>
<input type="button" value="검색" class="search_btn" id="userSearchBtn"/>
</div>


<input type="hidden" id="userPage" name="userPage" value="${userPage}"/>
<input type="hidden" id="sug_no" name="sug_no" value="${sug_no}"/>
</form>

</div><!-- con_box end -->
	
		<div id ="right_sub"></div>
	
</body>
</html>