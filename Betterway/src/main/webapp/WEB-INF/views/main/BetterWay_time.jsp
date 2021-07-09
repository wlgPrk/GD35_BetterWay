<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>역 별 시간표 안내</title>
<script type="text/javascript" 
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var a = "0330/";// api 역코드
	var db = 150 ; // 현재 db 코드
	var b ="2/"
	var c="1/"
	// 역코드, 상행 주말
	
	$.ajax({
		// http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/5/0309/1/1/
			url: "http://openAPI.seoul.go.kr:8088/72717a744e70626237346774787358/json/SearchSTNTimeTableByIDService/1/5/"+a+b+c, // 접속 주소
			type: "get", // 전송방식 : get, post
			dataType: "json",
			success: function(resa) { // 성공 시 다음 함수 실행
				
			//var test =resa.row[1];

				for(var i=0; i<resa.SearchSTNTimeTableByIDService.row.length; i++){
				console.log(resa.SearchSTNTimeTableByIDService.row[i].LEFTTIME);
				//console.log(test);
				}
			},
			error: function(request, status, error) { // 실패 시 다음 함수 실행
				console.log(request);
				console.log(status);
				console.log(error);
			}
			
	});
	
	
 


	
	
	
});


</script>
<style type="text/css">
body {
	   
	font-size: 18px;

}
header {
    top: 0;
    left: 0;
    right: 0;
    height: 75px;
	padding-left:20px;
    color: white;
    background: #023459;
    font-weight: bold;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
footer{
   top: 0;
    left: 0;
    right: 0;
    height: 75px;
	padding-left:20px;
    color: white;
    background: #023459;

    display: flex;
    justify-content: space-between;
    align-items: center;
}

.popup {
	width: 100%;
	height: 100%;
}




.wrap {
	width: 460px;
    margin: 0px auto;
    margin-top: 45px;
    margin-bottom: 50px;
	background-color: #fff;
}

.c_title {
	font-size: 14px;
	font-weight:bold;
    height: 26px;
    width: 20%;
    text-align: center;
    vertical-align: middle;
    padding: 17px 14px 8px;

}




.txt {
	width: 70%;;
	height: 29px;
	padding: 10px 14px;
	border: 1px solid #dadada;
	background: #fff;
	background-repeat: no-repeat;
    background-position: 415px 5px;
    background-size: 200px auto;
}


a {
		text-decoration: none;
		color: #fff;
	}

  .info{
  flex:1;
  height:180px;
  width:70%;
  background-color: orange;
   
  }
  
  .box{
  font-size: 20px;
  border-radius: 5px 5px 5px 5px;
  margin-left: 5px;
  }

    #bot_btn {
  border:1px solid;
  font-size: 20px;
  border-radius: 5px 5px 5px 5px;
  border-color:#82B2DA;
  margin-left: 5px;
  float:right;

  }
  
      #bot_btn :hover{

  font-size: 20px;
  border-radius: 5px 5px 5px 5px;
background:#B2A59F;
  float:right;
  }
  
.sub_con {
  display: flex;
  margin-top: 20px;
    margin-bottom: 20px;
  
   width: 100%; height: 375px;;
}
.top_title {
  display: flex;
  
  
}
  .box_tit{
    position: relative;
 background-image:url("resources/images/sub.png");       
 background-size : cover;                      
  height:88px;

  }


.img_cov{
 backdrop-filter: blur(5px);
 padding-top:60px;
height: 28px;

 
}
.img_cov_con{/* 어디로 왔능가  */

font-size: 15px;

background:rgba(52, 75, 22, 0.63);
    color: #fff;
    text-align: right;
   

}
.con_side{
	width:130px;
	text-align: center;
	padding-top: 20%;
}
.val_box{
    flex: 1;
	padding:30px 5px 30px 5px;
}
table, td {
  width:300px;
  height:30px;
  border-collapse : collapse;
  text-align: center;
  border-radius: 10px;
  font-weight: bold;
  font-size:13px;

};


#val{
width:30px;
  height:30px;
  background-color: #fff;
}

.contents_val{
font-size:13px;
margin-top: 5px;
}
#val_tab{
margin-top: 60px;
}
#popup3html_btn:hover{
text-decoration: underline;
}

thead{
	display: table-header-group;
	vertical-align: middle;
	background-color:#f0f0f5;
}
th,td{
	border : 2px solid #e0e0eb;
	border-collapse: collapse;
	padding : 10px;
	text-align: center;
	width: 400px;
}


</style>

</head>
<body>
<header>
<a href="airQ.html">운임 안내</a>
</header>
	<div class="bg">
		<div class="popup">
			 <div class="box_tit">
        
		        <div class="img_cov">
		      
		                  <div class="img_cov_con">
		                  	홈>시간표 안내 &nbsp;
		                  	</div>
		            </div>
    	</div>
			<div class="wrap">
			<div style="float: right;">
			호선을 검색하세요&nbsp;
			<select>
			<option value="">호선 선택</option>
			<option value="1호선">1호선</option>
			<option value="2호선">2호선</option>
			<option value="3호선">3호선</option>
			<option value="4호선">4호선</option>
			<option value="5호선">5호선</option>
			<option value="6호선">6호선</option>
			<option value="7호선">7호선</option>
			<option value="8호선">8호선</option>
			<option value="9호선">9호선</option>
			</select>
			<input type="text" placeholder="개화역"/>
			<br/>
			<br/>
			</div>
			
			
			
			<table id="timetable" style="position: relative; left: 80px;" >
<thead>
<tr>
<th scope="col">
<input type="button" value="평일"><br/>
상행</th> 
<th scope="col">
<input type="button" value="토요일"><br/>
시각</th>
 <th scope="col">
<input type="button" value="공휴일"><br/> 
 하행</th>
</tr>
</thead>

<tbody>

</tbody>

</table>

				
			
				</div>
				
			</div>
			
		</div>
	
				

</body>

</html>