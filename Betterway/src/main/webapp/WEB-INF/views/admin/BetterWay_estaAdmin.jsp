<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ǽü� ������</title>
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
		<div>���ǽü�����</div>
		<div>�������ù���� ����</div>
		<div>���ǰԽ��� ����</div>
		<div>������ ����</div>
		<div>ȣ�� ����</div>
		</div>
	</div>
	<div id="right">
		<div id ="right_sub">
			<input type="button" value="�ູ����" />
			<input type="button" value="�����ź�����" />
			<input type="button" value="���ܰ���" />
			<input type="button" value="ȭ���" />
		</div>
		<div id ="right_sub2">
			<select name="">
    			<option value="ȣ������">ȣ������</option>
    			<option value="1">1ȣ��</option>
    			<option value="2">2ȣ��</option>
   				<option value="3">3ȣ��</option>
   				<option value="4">4ȣ��</option>
   				<option value="5">5ȣ��</option>
   				<option value="6">6ȣ��</option>
   				<option value="7">7ȣ��</option>
   				<option value="8">8ȣ��</option>
   				<option value="9">9ȣ��</option>
			</select>
			<input type="button" value="���߰�"/>
		</div>
		<div id ="right_sub3"></div>
		<div id ="right_sub"></div>
	</div>
</body>
</html>