<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
width: 50px;
font-size: 20px;
height : 40px;
border : 2px solid black;
border-radius:10px;
background-color: #ffcc00;;
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
	
		<div id ="right_sub"></div>
	</div>
</body>
</html>