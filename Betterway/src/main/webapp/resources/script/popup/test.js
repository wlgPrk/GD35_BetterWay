 function makePopup(title, contents) {
	var html = "";
	html += "<div class=\"bg_div\"></div>                                         ";
	html += "<div class=\"popup_div\">                                            ";
	html += "	<div class=\"popup_title\">                                       ";
	html += "		<div class=\"popup_title_text\">" + title + "</div>           ";
	html += "	</div>                                                            ";
	html += "	<div class=\"popup_contents\">                                    ";
	html += "		<div class=\"popup_text\">" + contents + "</div>              ";
	html += "		<div class=\"popup_btn\">                                     ";
	html += "			<input type=\"button\" class=\"btn_ok\" value=\"확인\"/>   ";
	html += "		</div>                                                        ";
	html += "	</div>                                                            ";
	html += "</div>                                                               ";
	
	
	
	$("body").prepend(html);
	
	$(".btn_ok").focus();
	
	$(".popup_div").hide();
	
	$(".popup_div").fadeIn();
	
	
	$(".btn_ok").off("click");
	$(".btn_ok").on("click", function(){
		closePopup();
	});
	

}

function closePopup() {

	
	$(".popup_div").fadeOut(function(){
		$(".popup_div").remove();
	});
}