//--------권한-------
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
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});//ajax end
}//perList end


function menuList(per){
	html="";
	for(var d of per){
		html +="<div><a href=\" " + d.ADDR+ "\">"+d.MENU_NAME +"</a></div>";
	}
	$("#left_sub").html(html);
	var color=0;
	for(var i=0; i<per.length; i++){
		color+=1;
	if ($(location).attr("href").substring($(location).attr("href").lastIndexOf("/")+1) == per[i].ADDR){
		$("#left_sub div:nth-child("+color+")").css("background-color","#ffcc00");
	}
	}
	
	 

	
	$("a").css("color","black");
	$("a").css("text-decoration","none");
	
	
};
//--------권한끝------