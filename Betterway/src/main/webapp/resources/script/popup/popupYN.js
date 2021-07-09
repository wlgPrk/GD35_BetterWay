function ynPopup(title, contents) {
	var html = "";
	html += "<div class=\"bg_div\"></div>                                         ";
	html += "<div class=\"popup_div\">                                            ";
	html += "	<div class=\"popup_title\">                                       ";
	html += "		<div class=\"popup_title_text\">" + title + "</div>           ";
	html += "	</div>                                                            ";
	html += "	<div class=\"popup_contents\">                                    ";
	html += "		<div class=\"popup_text\">" + contents + "</div>              ";
	html += "		<div class=\"popup_btn\">                                     ";
	html += "			<input type=\"button\" class=\"btn_yes\" value=\"예\"/>   ";
	html += "			<input type=\"button\" class=\"btn_no\" value=\"아니오\"/>   ";
	html += "		</div>                                                        ";
	html += "	</div>                                                            ";
	html += "</div>                                                               ";
	
	
	
	$("body").prepend(html);
	
	$(".btn_ok").focus();
	
	$(".popup_div").hide();
	
	$(".popup_div").fadeIn();
	
	
	$(".btn_no").off("click");
	$(".btn_no").on("click", function(){
		closeYNPopup();
	});
	

}

function closeYNPopup() {

	
	$(".popup_div").fadeOut(function(){
		$(".popup_div").remove();
	});
}