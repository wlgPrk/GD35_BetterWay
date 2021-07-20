<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Better Way Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<script type="text/javascript" 
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		
		<script type="text/javascript" 
		src="resources/script/popup/test.js?after"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.9/js/select2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$("#a").on("click",function(){
	
	
	makePopup("1","2");
	
	    $("#div1").load("BetterWay_time");
		
	
});
$("#b").on("click",function(){
	
	
    $("#div1").remove();


});
});
function pop() {
	var html = "";
	html += "<div name=\"div1\"id=\"div1\"></div>";
	$("body").prepend(html);
}

</script>
<link rel="stylesheet" type="text/css" href="resources/css/popup/test.css?after" />
<style type="text/css">
#div1{
width: 350px;
height: 500px;
}
</style>
</head>
<body>
<input type="button" id ="a" name = "a" value = "test">
<input type="button" id ="b" name = "b" value = "test">



</body>
</html>