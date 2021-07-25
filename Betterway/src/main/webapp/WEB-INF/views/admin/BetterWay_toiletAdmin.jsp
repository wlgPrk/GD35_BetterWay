<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ູ���� ������</title>
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
#left_sub div:nth-child(1){
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
#right_sub input:nth-child(5){
	background-color: #82b2da;
}
#right_sub > input{
	font-size: 15pt;
	border: none;
	padding : 6px;
	border-radius: 5pt;	
}
#right_sub2{
	height:15%;
	width:100%;
	margin-left: 480px;
}
#writeBtn{
	font-size: 15pt;
	border: none;
	border-radius: 5pt;	
	background-color: #82b2da;
	margin-left: 130px;
	margin-top:10px;
	padding: 10px;
}
#right_sub3{
	height: 55%;
	width:100%;
}

table{
	margin-left: 100px;
	border-spacing:0px;
	text-align: center;
	margin-top: -56px;
}
th,tr,td{
	border-collapse:collapse;
	border: 1px solid;
}

th{
	background-color: #e0e0eb;
}

.logoutBtn{
position: relative;
left:850px;
}

#right_sub span{
position: relative;
left:850px;
}

/*ȭ��ǥ */
.arrow{
cursor:pointer;
display:inline-block;
width: 50px;
font-size: 20px;
height : 40px;

border-radius:10px;
line-height:2;
background-color: #f0f0f5;
margin-left: 5px;
vertical-align: top;

}

.arrow:hover{background-color: #e0e0eb;
}

/* ȭ��ǥƲ */
.arrow_box{


display: inline-block;
width : 800px;
height :50px;
margin-top:20px;
text-align: center;
}
#on{
background-color: #82b2da;

}

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript" 
		src="resources/script/popup/per.js?after"></script>
<script type="text/javascript">
$(document).ready(function(){
	per();
	reloadList();
	
	//�α׾ƿ�
	$(".logoutBtn").on("click",function(){
		location.href = "BetterWay_logoutAdmin";
	});
	//��� ��ư �������̵�
	$("#happyAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_happyAdmin");
		$("#actionForm").submit();
	});
	
	$("#nursingRoomAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_nursingRoomAdmin");
		$("#actionForm").submit();
	});
	
	$("#cycleAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_cycleAdmin");
		$("#actionForm").submit();
	});
	
	$("#wheelchairAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_wheelchairAdmin");
		$("#actionForm").submit();
	});
	
	$("#toiletAdmin").on("click",function(){
		$("#actionForm").attr("action","BetterWay_toiletAdmin");
		$("#actionForm").submit();
	});
	//-----------------------------------------------------------------
	
	$("#writeBtn").on("click",function(){
		$("#actionForm").attr("action","BetterWay_toiletAdmin_Write");
		$("#actionForm").submit();
	});
	
	$(".list_wrap tbody").on("click","tr",function(){
		$("#toilet_no").val($(this).attr("toilet_no"));
		
		$("#actionForm").attr("action","BetterWay_toiletAdmin_Detail");
		$("#actionForm").submit();
	});
	
	
	//����¡ 
	$(".arrow_box").on("click","div",function(){
		$("#page").val($(this).attr("page"));
		reloadList();
	});//paging wrap end
	
});//document end
function drawList(list){
	   var html = "";
	   
	   for(var d of list){
		  html += "<tr toilet_no =\"" + d.TOILET_NO +"\">";
	      html += "<td>" + d.TOILET_NO + "</td>";
	      html += "<td>" + d.SUBWAY_STATION_INCODE + "</td>";
	      html += "<td>" + d.DEL_STATUS + "</td>";
	      html += "</tr>";
	   }
	   
	   $(".list_wrap tbody").html(html);
	}
	
	
//����¡�׸���
function drawPaging(pb){
	var html="";
	
	
	
	html+= "<div page=\"1\" type=\"button\" class=\"arrow\">ó��</div>";
	if($("page").val() =="1"){
	html+= "<div page=\"1\" type=\"button\" class=\"arrow\"><</div>";
	}else{
	html+= "<div page=\""+ ($("#page").val() -1) +"\" type=\"button\" class=\"arrow\"><</div>";
	}
	
	
	for(var i=pb.startPcount; i<=pb.endPcount; i++){
	if($("#page").val() ==i){
	html+="<div page=\""+ i +"\" type=\"button\" class=\"arrow\" id=\"on\"> "+i+"</div>";
	}else{
	html+="<div page=\""+ i + "\" type=\"button\"  class=\"arrow\"> "+i+"</div>";
	}
	}
	
	
	if($("#page").val() == pb.maxPcount){
	html+= "<div page=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">></div>";
	}else {
	html+= "<div page=\""+ ($("#page").val() * 1 + 1) +"\" type=\"button\" class=\"arrow\">></div>";
	}
	html+= "<div page=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">��</div>";
	
	$(".arrow_box").html(html);
	
}//drawPaging end
	
	
function reloadList(){
	var params = $("#actionForm").serialize();
	
	 $.ajax({
         url : "BetterWay_toiletAdmins",//stationEstaInfo��Ʈ�ѷ��� ����
         type : "post",  
         dataType :"json", 
         data : params,
         success : function(res){
             drawList(res.list); 
             drawPaging(res.pb);
         },
         error : function(request,status,error){
            console.log(error);
         }
      });
}

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
		<div id ="right_sub">
			<input type="button" id="happyAdmin" value="�ູ����" />
			<input type="button" id="nursingRoomAdmin" value="������" />
			<input type="button" id="cycleAdmin" value="�����ź�����" />
			<input type="button" id="wheelchairAdmin" value="���ܰ���" />
			<input type="button" id="toiletAdmin" value="ȭ���" />
			<span>${sID}</span>
				<input type="button" class="logoutBtn" value="�α׾ƿ�" />
		</div>
		<div id ="right_sub2">
			<form action="#" id="actionForm" method="post">
			<input type="hidden" id="page" name="page" value="${page}"/>
				<input type="hidden" id="toilet_no" name="toilet_no"/> 
				<input type="button" id="writeBtn"  value="���߰�" />
			</form>
		</div>
		<div class ="list_wrap">
			<table>
				<colgroup>
					<col width="200px">
					<col width="200px">
					<col width="200px">

				</colgroup>
				<thead>
					<tr>
						<th>ȭ��ǹ�ȣ</th>
						<th>����ö���ڵ�</th>
						<th>��������</th>
			
					</tr>
				</thead>
					
				<tbody>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
					</tr>
				</tbody>				
			</table>
		</div>
		<div class="arrow_box"></div>
		
		<div id ="right_sub"></div>
	</div>
</body>
</html>