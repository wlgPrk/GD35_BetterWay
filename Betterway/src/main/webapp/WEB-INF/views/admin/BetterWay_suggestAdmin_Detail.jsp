<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���ǰԽ���</title>
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
margin-top:200px;
margin-left:50px;
display:inline-block;
vertical-align:top;
width:79%;
height:75%;

}

/*-----���볡 -----*/
/*���� ūƲ */
.title_box_1{
font-size:15px;
background-color:#e0e0eb;
padding : 0px 0px 0px 20px;
border :1px solid black;
margin-left:30px;
width: 800px;
height:40px;
line-height: 3;
}

/*���� ����Ʋ */
.title_box_2{
line-height:3;
display:inline-block;
width:180px;
height:100%;
font-size: 15px;
vertical-align: top;
}


/* ���� */
.sug_con{
display:inline-block;
margin-left:30px;
border :1px solid black;
width: 800px;
height : 200px;
padding : 20px 0px 0px 20px;
font-size:15px;
}

/* */

.btn_box{
display: inline-block;
width:850px;
height:100px;
text-align: right;


}



/*��ư*/
.post_btn{
margin-left:5px;                      
margin-top:30px;
vertical-align:bottom;
background-color:#e0e0eb;
font-size: 20px;
width :100px;
height :40px;
border : 0;
cursor: pointer;
border-radius: 10px;
}

/*��ۼ� Ʋ*/
.comm_count{

margin-left:30px;
padding-left:20px;
width:800px;
height:30px;
font-size: 15px;
}

/* ��� ūƲ*/
.comm_box_1{
margin-left:30px;
width:830px;
height:50px;
}

/* ��۾��̵� */
.comm_box_2_1{
padding-top:15px;
font-size:15px;
border :1px solid black;
display: inline-block;
width:20%;
height:35px;
vertical-align:top;
text-align: center;
}

/* ��۹ڽ� ���� */
.comm_box_2_2{
padding-left:10px;
padding-top:15px;
font-size:15px;
border :1px solid black;
vertical-align:top;
display: inline-block;
width:70%;
height:35px;
}

/* ��۹ڽ� ������ưƲ  */
.comm_box_2_3{
font-size:15px;
border :1px solid black;
display: inline-block;
width:8%;
height:50px;
}

/* ��ۻ�����ư*/
.comm_del_btn{

background-color: #82b2da;
border: none;
border-radius:5px;
width: 50px;
height:30px;
margin-top: 10px;
margin-left: 10px;
cursor: pointer;
}



</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
//�亯���Ͻ� �亯��ư������
if("${data.REQ_NO}" != "0"){
	$("#resBtn").css("display","none");
	
}
	
//����̵���ư
$("#listBtn").on("click",function(){
	$("#actionForm").attr("action","BetterWay_suggestAdmin");
	$("#actionForm").submit();
});

reloadList();
//�ۻ�����ư
$("#delBtn").on("click",function(){
	conDels();
});

//��ۻ�����ư
$(".reviewBox").on("click","div div:nth-child(3) input",function(){
	$("#comm_no").val($(this).parent().parent().attr("comm_no"));
	commDels();
});


//�亯��ư
$("#resBtn").on("click",function(){
	$("#actionForm").attr("action","BetterWay_suggestAdmin_Result");
	$("#actionForm").submit();
});



	
}); //document end


//��ۺ��̱�, ��ۼ�
function reloadList(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_suggestContents", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
			drawList(res.list);
			commCnt(res.commCnt);
			
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end


//��ۼ� ���̱�
function commCnt(cnt){
	var html="";
	html ="��� "+ cnt +""
	
	$(".comm_count").html(html);
};


//��۸�ϱ׸���
function drawList(list){
	var html ="";
	for(var d of list){ 
                                         
html +="<div class=\"comm_box_1\" id=\"comm"+d.COMM_NO+"\" comm_no=\""+ d.COMM_NO+"\">";
html +="<div class=\"comm_box_2_1\">" + d.USER_ID+ "</div>";
html +="<div class=\"comm_box_2_2\">"+d.CON+"</div>";
html +="<div class=\"comm_box_2_3\"><input type=\"button\" class=\"comm_del_btn\" value=\"����\"></div>";
html +="</div>"; 
	}
	$(".reviewBox").html(html);
	

}//drawlist end


//�Խù�����
function conDels(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_conDels", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) { 
		location.href="BetterWay_suggestAdmin";
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//reload List end

//��ۻ���
function commDels(){
	var params = $("#actionForm").serialize();

	//ajax
	$.ajax({
		url: "BetterWay_commDels", 
		type: "post", 
		dataType: "json",
		data: params, 
		success: function(res) {
			drawList(res.list);
			commCnt(res.commCnt);

		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//commModifys end


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
<div class="title_box_1">
���� : ${data.TITLE}
</div>

<div class="title_box_1">
<div class="title_box_2">�۹�ȣ : ${data.SUG_NO}</div>
<div class="title_box_2">ID : ${data.USER_ID}</div>
<div class="title_box_2">PW : ${data.USER_PW}</div>
<div class="title_box_2">�ۼ��� : ${data.WRITE_DATE}</div>
</div>

<div class="sug_con">${data.CON}</div>
<div class="btn_box">
<input type="button" class="post_btn" value="�亯" id="resBtn">
<input type="button" class="post_btn" value="���" id="listBtn">
<input type="button" class="post_btn" value="����" id="delBtn">
</div>
<div class="comm_count">��� �� : 2</div>
<div class="reviewBox">
<div class="comm_box_1">
<div class="comm_box_2_1">ȫ�浿</div>
<div class="comm_box_2_2">�����Դϴ�</div>
<div class="comm_box_2_3"><input type="button" class="comm_del_btn" value="����"></div>
</div> <!-- comm_box_1 end -->

<div class="comm_box_1">
<div class="comm_box_2_1">ȫ�浿</div>
<div class="comm_box_2_2">�����Դϴ�</div>
<div class="comm_box_2_3"><input type="button" class="comm_del_btn" value="����"></div>
</div> <!-- comm_box_1 end -->
</div>

</div><!-- con_box end -->
	
	<form action="#" id="actionForm" method="post">
	
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
	<input type="hidden" id="comm_no" name="comm_no" >
	</form>
		<div id ="right_sub"></div>
	</div>
</body>
</html>