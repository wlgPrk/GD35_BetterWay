<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사물함형 자건거보관함 관리자</title>
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
margin-top:180px;
margin-left:50px;
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
/*제목속성 */
.con_title{
	outline: none;
	border : 1px solid black;
	width: 897px;
    height: 40px;
    font-size: 20px;
	margin:20px 0 20px 0px;
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
margin-left:px;
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

width:900px;
margin-top :10px;
text-align: right;
}
/* 서브메뉴링크css */
a{
color:black;
text-decoration: none;}

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript" 
src="resources/script/ckeditor/ckeditor.js"></script>
<script type="text/javascript" 
		src="resources/script/popup/per.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	CKEDITOR.replace("con",{ //아이디 찾음 
		resize_enabled : false,
		language :"ko",
		enterMode: "2",
		width : "900",
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
				url: "BetterWay_suggestAdmin_Writes", 
				type: "post", 
				dataType: "json",
				data: params, 
				success: function(res) {
					if(res.msg =="success"){
						location.href = "BetterWay_suggestAdmin";
					}else if(res.msg =="failed"){
						alert("작성에 실패하였습니다.");
					}else{
						alert("작성중 문제가 발생하였습니다");
					}
					
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});//ajax end
			
			
		}
		});
	//취소버튼
	$(".cancel_btn").on("click",function(){
		location.href="BetterWay_suggestAdmin";
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
	<form action="#" id="addForm" method="post">
<div class="con_box">

	<input type="text" class="con_title" placeholder="제목을 입력해주세요." name="title"><br/>
<textarea rows="15" cols="88" id="con"  placeholder="내용을 입력해주세요." class="con" name="con"></textarea>
<div class="btn_box"> <input type="button" class="con_add" value="등록"/><input type="button" class="cancel_btn" value="취소"/></div>
</div><!-- con_box end -->

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
		<div id ="right_sub"></div>
	</div>
</body>
</html>