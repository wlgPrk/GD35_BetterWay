<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사물함형 자건거보관함 관리자</title>
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
background-color: #ffcc00;
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


</style>
<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	reloadList();

	
}); //document end



//목록,페이징가져오기
function reloadList(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_suggestAdmins", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 

			userList(res.userlist);

			noticeList(res.noticelist);
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
		html += "<td><input type=\"checkbox\" id=\"check\"></td>";
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
	console.log("작동");
		var html="";
		for(var d of list){
		html += "<tr sug_no=\"" + d.SUG_NO + "\">";
		html += "<td><input type=\"checkbox\" id=\"check\"></td>";
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
	html+="<div userpage=\""+ i +"\" type=\"button\" class=\"arrow\" id=\"on\"> "+i+"</div>";
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
<div class="btn_box"><input type="button" class="btn" value="글쓰기"/></div>
공지
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
<th><label for="check">선택</label><input type="checkbox" id="check"></th>
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
</div>

<div class="search_box">

날짜<input type="date"> 
삭제여부<select>
	<option value="0">전체</option>
	<option value="1">예</option>
	<option value="2">아니오</option>
</select>
<select class="search_type" name="searchGbn">
					<option value="0">번호</option>
					<option value="1">작성자</option>
					<option value="2">내용</option>
</select>
<input type="text" class="input" name="searchTxt" value="${param.searchTxt}"/>
<input type="button" value="검색" class="search_btn" />

</div>



일반게시물
<table cellspacing="0px" id="user">

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
<th><label for="check">선택</label><input type="checkbox" id="check"></th>
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

<input type="button" class="btn" value="선택삭제"/></div>
<div class="search_box">
날짜<input type="date"> 
삭제여부<select>
	<option value="0">전체</option>
	<option value="1">예</option>
	<option value="2">아니오</option>
</select>
게시물타입<select>
	<option value="0">전체</option>
	<option value="1">건의</option>
	<option value="2">답변</option>
</select>

<select class="search_type" name="searchGbn">
					<option value="0">번호</option>
					<option value="1">작성자</option>
					<option value="2">내용</option>
</select>
<input type="text" class="input" name="searchTxt" value="${param.searchTxt}"/>
<input type="button" value="검색" class="search_btn" />

</div>
</div><!-- con_box end -->

<form action="#" id="actionForm" method="post">

<input type="hidden" id="userPage" name="userPage" value="${userPage}"/>
<input type="hidden" id="noticePage" name="noticePage" value="${noticePage}"/>
</form>
	
		<div id ="right_sub"></div>
	</div>
</body>
</html>