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
background-color: #f0f0f5;
}
/* 테이블선 */
td,th{
text-align:center;
border: 2px solid #e0e0eb;
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
box-shadow: 1px 1px 3px grey;
}


/*작성버튼*/
.btn{
position:absolute;
left:1400px;
background-color:#82b2da;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
box-shadow: 1px 2px 3px grey;
}

/*작성버튼틀 */
.btn_box{
padding-top:10px;
height:50px;
width:100%;

}
/*화살표 */
.arrow{
width: 50px;
font-size: 20px;
height : 40px;
border : 0;
box-shadow: 1px 2px 3px grey;
background-color: #e0e0eb;
margin-left: 5px;
vertical-align: top;

}

/* 화살표틀 */
.arrow_box{
margin-top:20px;
display: inline-block;
width : 1100px;
height :50px;

text-align: center;
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
<div class="btn_box"><input type="button" class="btn" value="글쓰기"/></div>

<table cellspacing="0px">

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
<div class="arrow_box">
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

</div><!-- con_box end -->
<div class="footer"></div>
</div><!-- box_end -->


</body>
</html>