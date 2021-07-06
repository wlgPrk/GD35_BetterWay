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

/*-----공용끝 -----*/
/*제목 큰틀 */
.title_box_1{

padding : 0px 0px 0px 20px;
border :2px solid #f0f0f5;
margin-left:30px;
width: 800px;
height:40px;
}

/*제목 작은틀 */
.title_box_2{
line-height:3;
display:inline-block;
width:200px;
height:100%;
font-size: 15px;
}


/* 내용 */
.sug_con{
display:inline-block;
margin-left:30px;
border-right :2px solid #f0f0f5;
border-left :2px solid #f0f0f5;
border-bottom :2px solid #f0f0f5;
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
box-shadow: 1px 2px 3px grey;
}

/*답변버튼*/
.post_btn{
margin-left:5px;
vertical-align:bottom;
background-color:#e0e0eb;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}

/*댓글수 틀*/
.comm_count{
margin-top:50px;
margin-left:30px;
padding-left:20px;
width:800px;
height:30px;
font-size: 15px;
}

/* 댓글 큰틀*/
.comm_box_1{
margin-left:30px;

width:834px;
height:50px;
}

/* 댓글아이디 */
.comm_box_2_1{
padding-top:15px;
font-size:15px;
border-left : 1px solid #e0e0eb;
border-top : 1px solid #e0e0eb;
border-bottom : 1px solid #e0e0eb;
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
border-left : 1px solid #e0e0eb;
border-top : 1px solid #e0e0eb;
border-bottom : 1px solid #e0e0eb;
vertical-align:top;
display: inline-block;
width:70%;
height:35px;
}

/* 댓글박스 삭제버튼틀  */
.comm_box_2_3{
font-size:15px;
border-right : 1px solid #e0e0eb;
border-top : 1px solid #e0e0eb;
border-bottom : 1px solid #e0e0eb;
display: inline-block;
width:8%;
height:50px;
}

/* 댓글삭제버튼*/
.comm_del_btn{

background-color: #82b2da;
border: none;
box-shadow: 1px 1px 3px grey;
width: 50px;
height:30px;
margin-top: 10px;
margin-left: 10px;
}


/* 댓글 */

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
<div class="title_box_1">
<div class="title_box_2">글번호 : 1</div>
<div class="title_box_2">ID : zxc</div>
<div class="title_box_2">PW : 1234</div>
<div class="title_box_2">작성일 : 2021/03/05 12:12:12</div>
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
</div><!-- con_box end -->
<div class="footer"></div>
</div><!-- box_end -->


</body>
</html>