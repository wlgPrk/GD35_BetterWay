function pwPopup(title, contents) {
	var html = "";
	
	html += "<div class=\"popup_divPw\">                                            ";
	html += "	<div class=\"popup_titlePw\">                                       ";
	html += "		<div class=\"popup_title_textPw\">" + title + "</div>           ";
	html += "	</div>                                                            ";
	html += "	<div class=\"popup_contentsPw\">                                    ";
	html += "		<div class=\"popup_textPw\"> " 
	html += "비밀번호<br/>";
	html += "<input type=\"password\" placeholder=\"비밀번호\" class=\"pw\"> ";	
	html += "</div>          ";
	html += "		<div class=\"popup_btnPw\">                                     ";
	html += "			<input type=\"button\" class=\"btn_okPw\" value=\"확인\"/>   ";
	html += "			<input type=\"button\" class=\"btn_closePw\" value=\"닫기\"/>   ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	

	
	$("body").prepend(html);
	
	$(".btn_closePw").focus();
	

	$(".popup_divPw").hide();
	
	
	$(".popup_divPw").fadeIn();
	
	
	//확인클릭시 내용물확인
	$(".btn_okPw").on("click", function(){
		if($.trim($(".pw").val())==""){
			closePwPopup();
			makePopup("경고","비밀번호를 입력하시오")
		
		}else{
			//form의 data를문자열로 전환
			$("#pw").val($(".pw").val());
			var params =$("#actionForm").serialize();
			//ajax
			$.ajax({
				url: "BetterWay_suggestContentChecks", //접속주소
				type: "post", //전송방식 : get, post
				dataType: "json", //받아올데이터형식
				data: params, //보낼 데이터 (문자열형태)
				success: function(res) { // 성공시 다음함수 실행
					if(res.resMsg =="success"){
						closePwPopup();

						conModify();
					} else{
						closePwPopup();
						makePopup("경고"," 비밀번호가 일치하지 않습니다.");
					}
				},
				error: function(request, status, error) { // 실패 시 다음 함수 실행
					console.log(error);
				}
			});//ajax end
		}//else end		
		
	});//pwpopup
	
	
	
	//닫기클릭시 닫기
	$(".btn_closePw").off("click");
	$(".btn_closePw").on("click", function(){
		closePwPopup();
	});
	

}

function closePwPopup() {

	
	
	$(".popup_divPw").fadeOut(function(){
		$(".popup_divPw").remove();
	});
}


