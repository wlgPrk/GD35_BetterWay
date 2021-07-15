<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>건의게시판</title>
<style type="text/css">
body{
	font-size:0px;
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
margin-top:200px;
margin-left:50px;
display:inline-block;
vertical-align:top;
width:79%;
height:75%;

}

/*-----공용끝 -----*/
/*제목 큰틀 */
.title_box_1{
font-size:15px;
background-color:#e0e0eb;
padding : 0px 0px 0px 20px;
border :1px solid black;
margin-left:30px;
width: 800px;
height:40px;
line-height: 3;
}

/*제목 작은틀 */
.title_box_2{
line-height:3;
display:inline-block;
width:180px;
height:100%;
font-size: 15px;
vertical-align: top;
}


/* 내용 */
.sug_con{
display:inline-block;
margin-left:30px;
border :1px solid black;
width: 800px;
height : 200px;
padding : 20px 0px 0px 20px;
font-size:15px;
}

/* */

.btn_box{
display: inline-block;
width:850px;
height:100px;
text-align: right;


}



/*버튼*/
.post_btn{
margin-left:5px;                      
margin-top:30px;
vertical-align:bottom;
background-color:#e0e0eb;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
border-radius: 10px;
}

/*댓글수 틀*/
.comm_count{

margin-left:30px;
padding-left:20px;
width:800px;
height:30px;
font-size: 15px;
}

/* 댓글 큰틀*/
.comm_box_1{
margin-left:30px;
width:830px;
height:50px;
}

/* 댓글아이디 */
.comm_box_2_1{
padding-top:15px;
font-size:15px;
border :1px solid black;
display: inline-block;
width:20%;
height:35px;
vertical-align:top;
text-align: center;
}

/* 댓글박스 내용 */
.comm_box_2_2{
padding-left:10px;
padding-top:15px;
font-size:15px;
border :1px solid black;
vertical-align:top;
display: inline-block;
width:70%;
height:35px;
}

/* 댓글박스 삭제버튼틀  */
.comm_box_2_3{
font-size:15px;
border :1px solid black;
display: inline-block;
width:8%;
height:50px;
}

/* 댓글삭제버튼*/
.comm_del_btn{

background-color: #82b2da;
border: none;
border-radius:5px;
width: 50px;
height:30px;
margin-top: 10px;
margin-left: 10px;
cursor: pointer;
}



</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
//답변글일시 답변버튼없에기
if("${data.REQ_NO}" != "0"){
	$("#resBtn").css("display","none");
	
}
	
//목록이동버튼
$("#listBtn").on("click",function(){
	$("#actionForm").attr("action","BetterWay_suggestAdmin");
	$("#actionForm").submit();
});

reloadList();
//글삭제버튼
$("#delBtn").on("click",function(){
	conDels();
});

//댓글삭제버튼
$(".reviewBox").on("click","div div:nth-child(3) input",function(){
	$("#comm_no").val($(this).parent().parent().attr("comm_no"));
	commDels();
});


//답변버튼
$("#resBtn").on("click",function(){
	$("#actionForm").attr("action","BetterWay_suggestAdmin_Result");
	$("#actionForm").submit();
});



	
}); //document end


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
	
	$(".comm_count").html(html);
};


//댓글목록그리기
function drawList(list){
	var html ="";
	for(var d of list){ 
                                         
html +="<div class=\"comm_box_1\" id=\"comm"+d.COMM_NO+"\" comm_no=\""+ d.COMM_NO+"\">";
html +="<div class=\"comm_box_2_1\">" + d.USER_ID+ "</div>";
html +="<div class=\"comm_box_2_2\">"+d.CON+"</div>";
html +="<div class=\"comm_box_2_3\"><input type=\"button\" class=\"comm_del_btn\" value=\"삭제\"></div>";
html +="</div>"; 
	}
	$(".reviewBox").html(html);
	

}//drawlist end


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
		location.href="BetterWay_suggestAdmin";
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end

//댓글삭제
function commDels(){
	var params = $("#actionForm").serialize();

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
<div class="title_box_1">
제목 : ${data.TITLE}
</div>

<div class="title_box_1">
<div class="title_box_2">글번호 : ${data.SUG_NO}</div>
<div class="title_box_2">ID : ${data.USER_ID}</div>
<div class="title_box_2">PW : ${data.USER_PW}</div>
<div class="title_box_2">작성일 : ${data.WRITE_DATE}</div>
</div>

<div class="sug_con">${data.CON}</div>
<div class="btn_box">
<input type="button" class="post_btn" value="답변" id="resBtn">
<input type="button" class="post_btn" value="목록" id="listBtn">
<input type="button" class="post_btn" value="삭제" id="delBtn">
</div>
<div class="comm_count">댓글 수 : 2</div>
<div class="reviewBox">
<div class="comm_box_1">
<div class="comm_box_2_1">홍길동</div>
<div class="comm_box_2_2">내용입니다</div>
<div class="comm_box_2_3"><input type="button" class="comm_del_btn" value="삭제"></div>
</div> <!-- comm_box_1 end -->

<div class="comm_box_1">
<div class="comm_box_2_1">홍길동</div>
<div class="comm_box_2_2">내용입니다</div>
<div class="comm_box_2_3"><input type="button" class="comm_del_btn" value="삭제"></div>
</div> <!-- comm_box_1 end -->
</div>

</div><!-- con_box end -->
	
	<form action="#" id="actionForm" method="post">
	
	<input type="hidden" id="searchOldTxt" name="userSearchOldTxt" value="${param.userSearchOldTxt}" />
<input type="hidden" name="noticeDate" value="${param.noticeDate}"/>
<input type="hidden" name="noticeDelete" value="${param.noticeDelete}"/>
<input type="hidden" name="noticeSearchGbn" value="${param.noticeSearchGbn}"/>
<input type="hidden" id="noticePage" name="noticePage" value="${param.noticePage}"/>
	
	<input type="hidden" id="sug_no" name="sug_no" value="${param.sug_no}">
	<input type="hidden" id="searchOldTxt" name="userSearchOldTxt" value="${param.userSearchOldTxt}" />
	<input type="hidden" name="userPostTypeGbn" value="${param.userPostTypeGbn}"/>
	<input type="hidden" name="userDate" value="${param.userDate}"/>
	<input type="hidden" name="userDelete" value="${param.userDelete}"/>
	<input type="hidden" name="userSearchGbn" value="${param.userSearchGbn}"/>
	<input type="hidden" id="userPage" name="userPage" value="${param.userPage}"/>
	<input type="hidden" id="comm_no" name="comm_no" >
	</form>
		<div id ="right_sub"></div>
	</div>
</body>
</html>