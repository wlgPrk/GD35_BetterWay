<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�繰���� �ڰǰź����� ������</title>
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

/*���� �޴� ūƲ*/
.con_box{
margin-top:180px;
margin-left:10px;
display:inline-block;
vertical-align:top;
width:79%;
height:75%;
}
/*  Ǫ��*/
.footer{
background-color: #023459;
width:100%;
height:5%;
}
/*����Ӽ� */
.con_title{
	outline: none;
	border : 1px solid black;
	width: 897px;
    height: 40px;
    font-size: 20px;
	margin:20px 0 20px 30px;
}
/*����Ӽ� */
.con{
margin-left:30px;
outline: none;
border : 1px solid black;
  font-size: 20px;
}

/*��ҹ�ư */
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
/*��Ϲ�ư*/
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

/* ��ưƲ */
.btn_box{

width:930px;
margin-top :10px;
text-align: right;
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
		<div>���ǽü�����</div>
		<div>�������ù���� ����</div>
		<div>���ǰԽ��� ����</div>
		<div>������ ����</div>
		<div>ȣ�� ����</div>
		</div>
	</div>
	<div id="right">
<div class="con_box">
	<input type="text" class="con_title" placeholder="������ �Է����ּ���."><br/>
<textarea rows="15" cols="88" placeholder="������ �Է����ּ���." class="con"></textarea>
<div class="btn_box"> <input type="button" class="con_add" value="���"/><input type="button" class="cancel_btn" value="����"/></div>
</div><!-- con_box end -->
	
		<div id ="right_sub"></div>
	</div>
</body>
</html>