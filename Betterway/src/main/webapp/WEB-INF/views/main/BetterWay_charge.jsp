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


#con_tab {
  width:300px;
  height:30px;
  border-collapse : collapse;
  text-align: center;
  border-radius: 10px;
  font-weight: bold;
  font-size:13px;

}


#con_tab>td{
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