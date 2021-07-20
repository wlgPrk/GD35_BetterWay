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
margin-left:50px;
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
	margin:20px 0 20px 0px;
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
margin-left:px;
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

width:900px;
margin-top :10px;
text-align: right;
}
/* ����޴���ũcss */
a{
color:black;
text-decoration: none;}

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript" 
src="resources/script/ckeditor/ckeditor.js"></script>
<script type="text/javascript" 
		src="resources/script/popup/per.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	CKEDITOR.replace("con",{ //���̵� ã�� 
		resize_enabled : false,
		language :"ko",
		enterMode: "2",
		width : "900",
		height : "300"
	});// CKEDITOR end

	
	//�ۼ���ư
	$(".con_add").on("click",function(){
		$("#con").val(CKEDITOR.instances['con'].getData());
		
		if($.trim($(".con_title").val()) == ""){
		alert("������ �Է��ϼ���")	
		$(".con_title").focus();
		}else if($.trim($(".con").val()) == ""){
		alert("������ �Է��ϼ���")	
		$(".con").focus();
		}else{
			//������
			var params = $("#addForm").serialize();
			//ajax
			$.ajax({
				url: "BetterWay_suggestAdmin_Writes", 
				type: "post", 
				dataType: "json",
				data: params, 
				success: function(res) {
					if(res.msg =="success"){
						location.href = "BetterWay_suggestAdmin";
					}else if(res.msg =="failed"){
						alert("�ۼ��� �����Ͽ����ϴ�.");
					}else{
						alert("�ۼ��� ������ �߻��Ͽ����ϴ�");
					}
					
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});//ajax end
			
			
		}
		});
	//��ҹ�ư
	$(".cancel_btn").on("click",function(){
		location.href="BetterWay_suggestAdmin";
	});
	
	per();
	
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
	<form action="#" id="addForm" method="post">
<div class="con_box">

	<input type="text" class="con_title" placeholder="������ �Է����ּ���." name="title"><br/>
<textarea rows="15" cols="88" id="con"  placeholder="������ �Է����ּ���." class="con" name="con"></textarea>
<div class="btn_box"> <input type="button" class="con_add" value="���"/><input type="button" class="cancel_btn" value="���"/></div>
</div><!-- con_box end -->

<input type="hidden" id="searchOldTxt" name="userSearchOldTxt" value="${param.userSearchOldTxt}" />
<input type="hidden" name="noticeDate" value="${param.noticeDate}"/>
<input type="hidden" name="noticeDelete" value="${param.noticeDelete}"/>
<input type="hidden" name="noticeSearchGbn" value="${param.noticeSearchGbn}"/>
<input type="hidden" id="noticePage" name="noticePage" value="${param.noticePage}"/>
	
	<input type="hidden" id="sug_no" name="sug_no" value="${param.sug_no}">
	<input type="hidden" id="searchOldTxt" name="userSearchOldTxt" value="${param.userSearchOldTxt}" />
	<input type="hidden" name="userPostTypeGbn" value="${param.userPostTypeGbn}"/>
	<input type="hidden" name="userDate" value="${param.userDate}"/>
	<input type="hidden" name="userDelete" value="${param.userDelete}"/>
	<input type="hidden" name="userSearchGbn" value="${param.userSearchGbn}"/>
	<input type="hidden" id="userPage" name="userPage" value="${param.userPage}"/>

	</form>
		<div id ="right_sub"></div>
	</div>
</body>
</html>