<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
* { 
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  height: 100%;
}

body {
  font-family: Arial, Helvetica, sans-serif;
  font-size: 0;
  height: 100%;
}	

/* Style the header */
header {
  height: 75px;
  padding: 1rem;
  color: white;
  background: #023459;
  font-weight: bold;
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: relative;
  z-index: 100;
}
.main{
	color:white;
	text-decoration : none;
	font-size: 30px;
}
	ul li{
		list-style: none;
	}
	a {
		text-decoration: none;
		color:#333;
	}

	#menu {
		font:bold 16px "malgun gothic";
		width:720px;
		height:50px;
		background: #fff	;
		color:black;
		line-height: 50px; 
		text-align: center;
	}


	#menu > ul > li {
		float:left;
		width:180px;
		position:relative;
	}
	#menu > ul > li > ul {
		width:180px;
		display:none;
		position: absolute;
		font-size:14px;
		background: #fff;
	}
	#menu > ul > li:hover > ul { /* li�� hover �����϶� ul�� display�� block���� ����  */
		display:block; 
	}
	#menu > ul > li > ul > li:hover {
		background: #B2A59F;
		transition: ease 1s;
		}

article {
	min-height: 100%;
	width: 1440px;
	margin: 0 auto;
	background-color: white;
}
#sidebar {
	width: 360px;
	height: 100%;
	display: inline-block;
	vertical-align: top;
}
#side-box1 {
	height: 216px;
	background-color: #82B2DA;
	color: white;
	font-size: 30pt;
	font-weight: bold;
	text-align: center;
	line-height: 200px;
}
#side-box2, #side-box3 {
	height: 100px;
    border-bottom: 1px solid #82B2DA;
    text-align: center;
    font-size: 20pt;
    font-weight: bold;
    line-height: 96px;
}
#right-box {
	width: 1080px;
	height: 100%;
	display: inline-block;
	vertical-align: top;
	/*padding: 0px 15px;*/
	font-size: 14pt;
}
#main-box1 {
	height: 216px;
	background-image: url("./Img/handle.png");
	backdrop-filter: blur(5px);	
	padding-top: 160px;
}
#site-route {
	font-size: 20pt;
	background:rgba(52, 75, 22, 0.63);
    color: #fff;
    text-align: right;	
}
#main-title {
	height: 50px;
    margin-bottom: 10px;
    text-align: left;
    font-size: 30pt;
    line-height: 64px;
    font-weight: bold;
}
#main-caution {
	height: 100px;
    border: 1px solid #ddd;
    margin-bottom: 20px;
    font-size: 11pt;
    text-align: center;
}
#main-caution > div { 
	display: table;
	width: 100%;
	height: 100%;
}
#main-caution p { 
	display: table-cell;
	vertical-align: middle;

}
#main-caution img {
	width: 17px;
}
[alt="����"], [alt="�̹���"], [alt="�̹�������"] {
	width: 30px;
}
#main-table {
	height: 527px;
    margin-bottom: 10px;
}
#main-table table {
    border-collapse: collapse;
    width: 100%;
    text-align: center;
    margin-top: 20px;
    font-size: 10pt;
}
#main-table th{
	height: 37px;
	border-top : 2px solid #29367c;
	border-bottom : 1px solid #29367c;
	padding: 10px 0px;
}
#main-table td{
	height: 30px;
	border-top : 1px solid #eee;
	padding: 5px 0px; 
}
#table-last {
	border-bottom: 1px solid #29367c;
}
#main-write {
	height: 50px;
	position: relative;
}	
#main-write input {
	position: absolute;
	right: 0;
	background-color: #29367c;
	color: white;
	padding: 10px 30px;
	font-size: 11pt;
	cursor: pointer;
	box-shadow: 1px 2px 3px gray;
}
#main-pagenation-search {
	height: 80px;
}
#main-pagenation-search [alt="����ȭ��ǥ"] {
	width: 43px;
	position: absolute;
	left: 28%;
	cursor: pointer;
}	
#main-pagenation-search [alt="������ȭ��ǥ"] {
	width: 43px;
	position: absolute;
	right: 28%;
	cursor: pointer;
}
#main-pagenation-search > div {
	height: 50%;
	text-align: center;
	position: relative;
}
#page-number {
	line-height: 43px;
}
#page-number a {
	margin: 10px;
	cursor: pointer;
}
#page-number a:link {
	border: 1px solid black;
	padding: 5px 10px;	
}
#main-pagenation-search span {
	vertical-align: top;
}
#search-box {
	margin: 10px auto;
	height: 100%;
}
#search-box select {
	width: 115px;
	height: 40px;
	-webkit-appearance: none;
	-moz-appearance: none; 
	appearance: none;
	background: url("./Img/arrow-bottom.png");
	background-repeat: no-repeat;
	background-position: 150% 67%;
	background-size: 77px;
	border: 3px solid  #29367c;
	text-indent: 15px;
	padding: 5px 5px;
}
#search-box [type="text"] {
	width: 300px;
	height: 40px;
	border: 3px solid  #29367c;
}
#search-box [type="button"] {
	width: 92px;
	height: 40px;
	border: 3px solid  #29367c;
	font-size: 10pt;
	background-color: white;
	cursor: pointer;
}





/* ����Ʋ*/
.con_box {
	position :relative;
	width: 900px;
	height: 400px;
	margin: 0px auto;
	top: 200px;
}






/*-- �α��ξȳ�Ʋ--*/
.login_text_box{
width: 90%;
height :30px; 
font-size: 20px;
padding: 5px 0px 5px 5px; 
}

/*--�ؽ�Ʈ��ǲ --*/
.login_text{
width: 90%;
    height: 30px;
    padding: 10px 14px;
    border: 1px solid #E0E0E0;
    background: #fff;
    font-size: 20px;
    margin: 0px 0px 0px 5px;
  
}


/*--�α��ι�ư--*/
.login_btn{
width:90%;
height: 30px;
margin: 20px 0px 20px 5px; 
background-color: #82b2da;
color: white;
font-size: 20px;
line-height: 1.5;
text-align: center;
cursor: pointer;

}







/* �̰� ���ξȿ� ������ ũ�� �������ְ� �Լ� ������ x�� �ٿ��� �÷ȴ� �ݺ��ص�  ���ξ��������� ��� �߾ӿ������ϴ� ����*/
.con_box {
	padding-left:20px;
	background-color: #FFFFFF;
	width: 400px;
	height:300px;
	margin: 0px auto;
	box-shadow: 1px 2px 3px grey;
}

.con_logo{
font-size: 50px;
text-align:center;
width :100%;
height :50px;
}
.footer{
position : absolute;
top :100%;
background-color: #023459;
width :100%;
height : 100px;
margin-top:20px;
}

</style>
</head>
<body>
<header>
  <a class="main" href="menu.html">BetterWay</a>
<div id="menu">
	<ul>
		<li><a href="#">����ȳ�</a>
			<ul>
				<li><a href="zoom.html">���̹������̼�</a></li>
				<li><a href="#">�ǽð� ��������</a></li>
				<li><a href="#">���ֺ� ���������� ����</a></li>
				<li><a href="#">�� ���� �ü�</a></li>
			</ul>
		</li>
		<li><a href="#">ȯ�������ȳ�</a>
			<ul>
				<li><a href="javascript:popup();">�ǳ� ������ ���� ����</a></li>
				<li><a href="conditionInfo.html">���� �� �ù����</a></li>
			</ul>
		</li>
		<li><a href="#">����ö ����</a>
			
		</li>
		<li><a href="#">���� �Ҹ�</a>
			<ul>
				<li><a href="#">���ǹ� ��ȸ</a></li>
				<li><a href="#">���� �Խ���</a></li>
			</ul>
		</li>
	</ul>
</div>
</header>
<article>
<div class="con_box">
<div class="con_logo">BetterWay</div>
<div class="login_text_box">���̵�</div>
<input type="text" class="login_text" placeholder="���̵��Է��ϼ���" id="id">
<div class="login_text_box">��й�ȣ</div>
<input type="password" class="login_text" placeholder="��й�ȣ���Է��ϼ���" id="pw">

<div class="login_btn">�α���</div>
</div>

<div class="footer"></div>
</article>
</body>
</html>