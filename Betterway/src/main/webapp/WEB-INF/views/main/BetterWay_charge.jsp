<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운임 안내</title>
<script type="text/javascript" 
src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">



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
 background-size:cover;                      
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
	width:200px;
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
		                  	홈>운임 안내 &nbsp;
		                  	</div>
		            </div>
    	</div>
			<div class="wrap">
	
			<table id = "con_tab" style="position: relative; left: 80px;" >  
			
<tbody>
 <c:forEach var="data" items="${list}">
      <tr>
         <td>${data.CATEGORY}</td>
         <td>${data.TRAFFIC_CARD}</td>
         <td>${data.D_TRAFFIC_CARD}</td>
        
      </tr>
   </c:forEach>

</tbody>
</table>

				
			
				</div>
				
			</div>
			
		</div>
	
				

</body>

</html>