<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

html,body {
  font-family: Arial, Helvetica, sans-serif;
  
  width:100%;
  height:100%;
}
/*큰틀*/
.box{
font-size :0px;
width :100%;
height:100%;
}
/* 상단틀 */
.top_box{
width :100%;
height:20%;
}
/* 상단 제목*/
.top_title{
line-height:1.8;
font-size:90px;
text-align:center;
display: inline-block;
vertical-align:top;
width: 30%;
height:100%;
}

/* 상단메뉴 */
.top_sub_menu{
display: inline-block;
width: 70%;
height:100%;
}

/*측면 메뉴큰틀*/
.side_menu_box_1{

display:inline-block;
width: 20%;
height:75%;
}
/*측면 작은틀*/
.side_menu_box_2{
padding-left:10px;
line-height:2.5;
background-color:#f0f0f5;
font-size:30px;
width: 100%;
height:10%;
box-shadow: -3px 2px 3px 2px grey;
cursor: pointer;
}
.side_menu_box_2:hover {
  background-color:#e0e0eb;
}
/*본문 메뉴 큰틀*/
.con_box{
margin-left:10px;
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
	border : 1px solid #e0e0eb;
	width: 900px;
    height: 40px;
    font-size: 20px;
	margin:20px 0 20px 30px;
}
/*내용속성 */
.con{
margin-left:30px;
outline: none;
border : 1px solid #e0e0eb;
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
box-shadow: 1px 2px 3px grey;
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
box-shadow: 1px 2px 3px grey;

}

/* 버튼틀 */
.btn_box{

width:930px;
margin-top :10px;
text-align: right;
}
</style>
</head>
<body>
<div class="box">
<div class="top_box">
<div class="top_title">BetterWay</div><div class="top_sub_menu"></div>
</div><!-- top_box end -->
<div class="side_menu_box_1">
<div class="side_menu_box_2">편의시설 관리</div>
<div class="side_menu_box_2">차량별 냉방상태 관리</div>
<div class="side_menu_box_2">건의게시판 관리</div>
<div class="side_menu_box_2">역 정보 관리</div>
<div class="side_menu_box_2">호선 정보 관리</div>
</div>
<div class="con_box">
	<input type="text" class="con_title" placeholder="제목을 입력해주세요."><br/>
<textarea rows="15" cols="88" placeholder="내용을 입력해주세요." class="con"></textarea>
<div class="btn_box"> <input type="button" class="con_add" value="등록"/><input type="button" class="cancel_btn" value="삭제"/></div>
</div><!-- con_box end -->
<div class="footer"></div>
</div><!-- box_end -->


</body>
</html>