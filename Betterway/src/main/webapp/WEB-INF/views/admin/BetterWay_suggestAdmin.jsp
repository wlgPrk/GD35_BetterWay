<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�繰���� �ڰǰź����� ������</title>
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
/*���� �޴� ūƲ*/
.con_box{
margin-top:140px;
margin-left:100px;
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
/* -----���볡 -----*/
/*���Ȱ�ġ��*/
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
/* ���̺� */
td,th{
text-align:center;
border: 2px solid black;
height: 30px;
}

/* ���̺� */
td:nth-child(8){
text-align:center;
border: 2px solid white;
height: 30px;
text-align: left;
padding-left:5px;
}

/*������ư*/
.del_btn{
width:50px;
height:25px;
background-color: #82b2da;
border: none;
border-radius: 5px;
cursor: pointer;
}


/*�ۼ���ư*/
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

/*�ۼ���ưƲ */
.btn_box{
padding-top:10px;
height:50px;
width:100%;

}
/*ȭ��ǥ */
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

/* ȭ��ǥƲ */
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
		<div>���ǽü�����</div>
		<div>�������ù���� ����</div>
		<div>���ǰԽ��� ����</div>
		<div>������ ����</div>
		<div>ȣ�� ����</div>
		</div>
	</div>
	<div id="right">
<div class="con_box">
<div class="btn_box"><input type="button" class="btn" value="�۾���"/></div>

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
<th><label for="check">����</label><input type="checkbox" id="check"></th>
<th>��ȣ</th>
<th>����</th>
<th>�۾���</th>
<th>�ۼ���</th>
<th>�з��ڵ�</th>
<th>��������</th>

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
<td><input type="button" class="del_btn" value="����"/></td>
</tr>
<tr>
<td><input type="checkbox" id="check"></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><input type="button" class="del_btn" value="����"/></td>
</tr>
</tbody>


</table>
<div class="btn_box">
<div class="arrow_box">
<input type="button" class="arrow" value="ó��"/>
<input type="button" class="arrow" value="<"/>
<input type="button" class="arrow" value="1"/>
<input type="button" class="arrow" value="2"/>
<input type="button" class="arrow" value="3"/>
<input type="button" class="arrow" value="4"/>
<input type="button" class="arrow" value="5"/>
<input type="button" class="arrow" value=">"/>
<input type="button" class="arrow" value="��"/>
</div>

<input type="button" class="btn" value="���û���"/></div>

</div><!-- con_box end -->
	
		<div id ="right_sub"></div>
	</div>
</body>
</html>