<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html ,body{
  font-family: Arial, Helvetica, sans-serif;
  width:100%;
  height:100%;
}

.con_box_1{
position:relative;
left:670px;
top:200px;
display:inline-block;
width :600px;
height:400px;
text-align: center;

}

.menu{
width: 100%;
height : 100px;
background-color: white;
border-radius: 40px;
border:1px solid black;
margin-top: 5px;
font-size: 40px;
line-height: 2.5;
cursor: pointer;
}

.menu:hover{
background-color: #ffcc00;
}

.top_side_box{
width:100%;
height:50px;
text-align: left;
font-size:30px;
}




</style>
</head>
<body>

<div class="top_side_box">홍길동님 어서오세요. </div>

<div class="con_box_1">
<div class="menu" id="esta">편의시설 관리</div>
<div class="menu" id="cooling">차량별 냉방상태 관리</div>
<div class="menu" id="sug">건의게시판 관리</div>
<div class="menu" id="station">역 정보 관리</div>
<div class="menu" id="line">호선 정보 관리</div>

</div>

</body>
</html>