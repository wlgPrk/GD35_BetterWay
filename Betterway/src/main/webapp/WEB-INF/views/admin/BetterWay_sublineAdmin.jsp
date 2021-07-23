<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>호선 관리자</title>
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
#right_sub > input{
	font-size: 15pt;
	border: none;
	padding : 6px;
	border-radius: 5pt;	
}
#right_sub2{
	height:15%;
	width:100%;
	margin-left: 700px;
}
#writeBtn{
	font-size: 15pt;
	border: none;
	border-radius: 5pt;	
	background-color: #82b2da;

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
left:1340px;
}

#right_sub span{
position: relative;
left:1340px;
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
	
	//로그아웃
	$(".logoutBtn").on("click",function(){
		location.href = "BetterWay_logoutAdmin";
	});

	
	$("#writeBtn").on("click",function(){
		$("#actionForm").attr("action","BetterWay_sublineAdmin_Write");
		$("#actionForm").submit();
	});
	
	$(".list_wrap tbody").on("click","tr",function(){
		$("#subline_no").val($(this).attr("subline_no"));
		
		$("#actionForm").attr("action","BetterWay_sublineAdmin_Detail");
		$("#actionForm").submit();
	});
});
function drawList(list){
	   var html = "";
	   
	   for(var d of list){
		  html += "<tr subline_no =\"" + d.SUBLINE_NO +"\">";
	      html += "<td>" + d.SUBLINE_NO + "</td>";
	      html += "<td>" + d.SUBLINE_NAME + "</td>";
	      html += "<td>" + d.COLOR_CODE + "</td>";
	      html += "<td>" + d.CAR_COUNT + "</td>";
	      html += "</tr>";
	   }
	   
	   $(".list_wrap tbody").html(html);
	}
	
function reloadList(){
	var params = $("#actionForm").serialize();
	
	 $.ajax({
         url : "BetterWay_sublineAdmins",//stationEstaInfo컨트롤러에 있음
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
				<span>${sID}</span>
				<input type="button" class="logoutBtn" value="로그아웃" />
		</div>
		<div id ="right_sub2">
			<form action="#" id="actionForm" method="post">
				<input type="hidden" id="subline_no" name="subline_no"/> 
				<input type="button" id="writeBtn"  value="행추가" />
			</form>
		</div>
		<div class ="list_wrap">
			<table>
				<colgroup>
					<col width="30%">
					<col width="30%">
					<col width="30%">
					<col width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>호선번호</th>
						<th>호선명</th>
						<th>색상코드</th>
						<th>차량대수</th>

					</tr>
				</thead>
					
				<tbody>
					<tr>
						<td>1</td>
						<td>1</td>
						<td>1</td>
						<td>1</td>
				
					</tr>
				</tbody>				
			</table>
		</div>
		<div id ="right_sub"></div>
	</div>
</body>
</html>