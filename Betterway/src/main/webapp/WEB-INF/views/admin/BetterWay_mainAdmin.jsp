<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html ,body{
  font-family: Arial, Helvetica, sans-serif;
  width:100%;
  height:100%;
}

.con_box_1{
position:relative;
left:670px;
top:200px;
display:inline-block;
width :600px;
height:400px;
text-align: center;

}

.menu{
width: 100%;
height : 100px;
background-color: white;
border-radius: 40px;
border:1px solid black;
margin-top: 5px;
font-size: 40px;
line-height: 2.5;
cursor: pointer;

}



.menu:hover{
background-color: #ffcc00;
}

.top_side_box{
width:100%;
height:50px;
text-align: left;
font-size:30px;
}
/*--삭제버튼 --*/
.logoutBtn{
vertical-align: top;
background-color: #f0f0f5;
border:none;
width :80px;
height :40px;
font-size: 15px;
border-radius: 5px;
cursor:pointer;
}

.logoutBtn:hover{
background-color: #e0e0eb;

}

.logoutBtn:active{
background-color: #82b2da;
}
a{
color:black;
text-decoration: none;}

</style>

<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	
	

	//로그아웃
	$(".logoutBtn").on("click",function(){
		console.log("작동");
		location.href = "BetterWay_LogoutAdmin";
	});//logout btn end
	
	
//편의시설관리
$("#esta").on("click",function(){
	location.href="BetterWay_happyAdmin"
});
	
//차량별냉방상태관리
$("#cooling").on("click",function(){
	location.href="BetterWay_infoAdmin"
});
	
//건의게시판관리	
$("#sug").on("click",function(){
	location.href="BetterWay_suggestAdmin"
});

//역정보 관리
$("#station").on("click",function(){
	location.href="BetterWay_stationAdmin"
});

//호선정보 관리	
$("#line").on("click",function(){
	location.href="BetterWay_sublineAdmin"
});

	
	per();
	
});//document end

function per(){
	//ajax
	$.ajax({
		url: "BetterWay_menuPerAdmin", 
		type: "post", 
		dataType: "json",
		success: function(res) {
			menuList(res.per);
		},
		error: function(request, status, error) {
			console.log(error);
		}
	});//ajax end
}//perList end


function menuList(per){
	html="";
	for(var d of per){
		html +="<div class=\"menu\"><a href=\""+d.ADDR+"\">"+d.MENU_NAME +"</a></div>";
	}
	$(".con_box_1").html(html);
}



</script>
</head>
<body>

<div class="top_side_box">${sID}님 반갑습니다.   </div>
<input type="button" value="로그아웃" class="logoutBtn"/>

<div class="con_box_1">
<div class="menu" id="esta">편의시설 관리</div>
<div class="menu" id="cooling">차량별 냉방상태 관리</div>
<div class="menu" id="sug">건의게시판 관리</div>
<div class="menu" id="station">역 정보 관리</div>
<div class="menu" id="line">호선 정보 관리</div>

</div>

</body>
</html>