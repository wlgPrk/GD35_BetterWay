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
/*내용 */
.con_box_2{
display:inline-block;
margin-left:30px;

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




/*제목속성 */
.con_title{
	outline: none;
	border : 1px solid black;
	width: 816px;
    height: 40px;
    font-size: 20px;
	margin:20px 0 20px 30px;
}
/*내용속성 */
.con{
margin-left:30px;
outline: none;
border : 1px solid black;
  font-size: 20px;
}

/*취소버튼 */
.cancel_btn{
margin-left:10px;
background-color:#e0e0eb;
font-size: 20px;
margin-right:10px;
width :100px;
height :50px;
border : 0;
cursor: pointer;
border-radius: 10px;
}
/*등록버튼*/
.con_add{
margin-left:10px;
background-color:#82b2da;
font-size: 20px;
width :100px;
height :50px;
border : 0;
cursor: pointer;
border-radius: 10px;

}

/* 버튼틀 */
.btn_box{

width:850px;
margin-top :10px;
text-align: right;
}
/* 서브메뉴링크css */
a{
color:black;
text-decoration: none;
}


</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/script/ckeditor/ckeditor.js"></script>
<script type="text/javascript" 
		src="resources/script/popup/per.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	
	
	CKEDITOR.replace("con",{ //아이디 찾음 
		resize_enabled : false,
		language :"ko",
		enterMode: "2",
		width : "820",
		height : "300"
	});// CKEDITOR end

	//작성버튼
	$(".con_add").on("click",function(){
		$("#con").val(CKEDITOR.instances['con'].getData());
		
		if($.trim($(".con_title").val()) == ""){
		alert("제목을 입력하세요")	
		$(".con_title").focus();
		}else if($.trim($(".con").val()) == ""){
		alert("내용을 입력하세요")	
		$(".con").focus();
		}else{
			//글저장
			var params = $("#addForm").serialize();
			//ajax
			$.ajax({
				url: "BetterWay_suggestAdmin_Results", 
				type: "post", 
				dataType: "json",
				data: params, 
				success: function(res) {
					
						location.href = "BetterWay_suggestAdmin";
					
				
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});//ajax end
			
			
		}
		});
	
	
	//목록이동버튼
	$("#cancel_btn").on("click",function(){
		$("#addForm").attr("action","BetterWay_suggestAdmin_Detail");
		$("#addForm").submit();
	});
	
	
	per();
}); //document end



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


<form action="#" id="addForm" method="post">
	<input type="text" class="con_title" placeholder="제목을 입력해주세요." name="title"><br/>
	
	<div class="con_box_2">
<textarea rows="15" cols="80" placeholder="내용을 입력해주세요." class="con" id="con" name="con"></textarea></div>
<div class="btn_box"> <input type="button" class="con_add" value="등록"/><input type="button" id="cancel_btn" class="cancel_btn" value="취소"/></div>
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





</form>
</div><!-- con_box end -->

	
	
	
		<div id ="right_sub"></div>
	</div>
</body>
</html>