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

/*삭제버튼*/
.del_btn{
vertical-align:bottom;
margin-left:5px;
background-color:#82b2da;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
border-radius: 10px;
}

/*답변버튼*/
.post_btn{
margin-left:650px;
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
제목 : 건의합니다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ
</div>

<div class="title_box_1">
<div class="title_box_2">글번호 : 1</div>
<div class="title_box_2">ID : zxc</div>
<div class="title_box_2">PW : 1234</div>
<div class="title_box_2">작성일 : 2021/03/05</div>
</div>

<div class="sug_con">내용</div>
<input type="button" class="post_btn" value="답변">
<input type="button" class="del_btn" value="삭제">
<div class="comm_count">댓글 수 : 2</div>

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
</div><!-- con_box end -->
	
		<div id ="right_sub"></div>
	</div>
</body>
</html>