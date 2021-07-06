<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>편의시설 관리자</title>
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
#right_sub2{
	height:15%;
	width:100%;
	margin-left: 900px;
}
#right_sub3{
	height: 55%;
	width:100%;
}
#right_sub > input{
	font-size: 15pt;
	border: none;
}

</style>
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
		<div id ="right_sub">
			<input type="button" value="행복지대" />
			<input type="button" value="자전거보관함" />
			<input type="button" value="연단간격" />
			<input type="button" value="화장실" />
		</div>
		<div id ="right_sub2">
			<select name="">
    			<option value="호선선택">호선선택</option>
    			<option value="1">1호선</option>
    			<option value="2">2호선</option>
   				<option value="3">3호선</option>
   				<option value="4">4호선</option>
   				<option value="5">5호선</option>
   				<option value="6">6호선</option>
   				<option value="7">7호선</option>
   				<option value="8">8호선</option>
   				<option value="9">9호선</option>
			</select>
			<input type="button" value="행추가"/>
		</div>
		<div id ="right_sub3"></div>
		<div id ="right_sub"></div>
	</div>
</body>
</html>