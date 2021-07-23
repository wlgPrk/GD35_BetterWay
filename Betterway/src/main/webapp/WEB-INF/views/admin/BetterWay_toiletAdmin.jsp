<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>행복지대 관리자</title>
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

/*화살표 */
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

/* 화살표틀 */
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
	
	//로그아웃
	$(".logoutBtn").on("click",function(){
		location.href = "BetterWay_logoutAdmin";
	});
	//상단 버튼 페이지이동
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
	
	
	//페이징 
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
	
	
//페이징그리기
function drawPaging(pb){
	var html="";
	
	
	
	html+= "<div page=\"1\" type=\"button\" class=\"arrow\">처음</div>";
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
	html+= "<div page=\""+pb.maxPcount+"\" type=\"button\" class=\"arrow\">끝</div>";
	
	$(".arrow_box").html(html);
	
}//drawPaging end
	
	
function reloadList(){
	var params = $("#actionForm").serialize();
	
	 $.ajax({
         url : "BetterWay_toiletAdmins",//stationEstaInfo컨트롤러에 있음
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
		<div>편의시설관리</div>
		<div>차량별냉방상태 관리</div>
		<div>건의게시판 관리</div>
		<div>역정보 관리</div>
		<div>호선 관리</div>
		</div>
	</div>
	<div id="right">
		<div id ="right_sub">
			<input type="button" id="happyAdmin" value="행복지대" />
			<input type="button" id="nursingRoomAdmin" value="수유실" />
			<input type="button" id="cycleAdmin" value="자전거보관함" />
			<input type="button" id="wheelchairAdmin" value="연단간격" />
			<input type="button" id="toiletAdmin" value="화장실" />
			<span>${sID}</span>
				<input type="button" class="logoutBtn" value="로그아웃" />
		</div>
		<div id ="right_sub2">
			<form action="#" id="actionForm" method="post">
			<input type="hidden" id="page" name="page" value="${page}"/>
				<input type="hidden" id="toilet_no" name="toilet_no"/> 
				<input type="button" id="writeBtn"  value="행추가" />
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
						<th>화장실번호</th>
						<th>지하철역코드</th>
						<th>삭제여부</th>
			
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