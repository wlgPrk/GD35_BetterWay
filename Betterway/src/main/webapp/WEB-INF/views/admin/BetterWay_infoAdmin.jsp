<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȯ��/���� ������</title>
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
#right_sub input:nth-child(3){
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
	margin-left: 900px;
}
#right_sub2 > input{
	font-size: 15pt;
	border: none;
	padding : 6px;
	border-radius: 5pt;	
	background-color: #82b2da;
	margin-left: 5px;
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

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	
	reloadList();
});
function drawList(list){
	   var html = "";
	   
	   for(var d of list){
		  html += "<tr>";
	      html += "<td>" + d.WEAK_COOLING_CAR_NO + "</td>";
	      html += "<td>" + d.SUBLINE_NO + "</td>";
	      html += "<td>" + d.CAR_NO + "</td>";
	 
	      html += "</tr>";
	   }
	   
	   $(".list_wrap tbody").html(html);
	}
	
function reloadList(){
	var params = $("#actionForm").serialize();
	
	 $.ajax({
         url : "infoAdmin_List",
         type : "post",  
         dataType :"json", 
         data : params,
         success : function(res){
             drawList(res.list); 
         },
         error : function(request,status,error){
            console.log(error);
         }
      });
}
</script>
</head>
<body>
	<form action="#" id="actionForm" method="post"></form>

	<div id="left">
		<div id="left_sub">
		<div>���ǽü�����</div>
		<div>ȯ��,����ö ���� ����</div>
		<div>���ǰԽ��� ����</div>
		<div>������ ����</div>
		<div>ȣ�� ����</div>
		</div>
	</div>
	<div id="right">
	
		<div id ="right_sub2">
			<input type="button" value="���߰�" />
		</div>
		<div class ="list_wrap">
			<table>
				<colgroup>
					<col width="15%">
					<col width="15%">
					<col width="30%">
					
				</colgroup>
				<thead>
					<tr>
						<th>��ù�ĭ��ȣ</th>
						<th>ȣ����ȣ</th>
						<th>ĭ��ȣ</th>
						
					</tr>
				</thead>
					
				<tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
					
					</tr>
				</tbody>				
			</table>
		</div>
		<div id ="right_sub"></div>
	</div>
</body>
</html>