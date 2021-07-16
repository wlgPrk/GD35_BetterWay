function pwDelPopup(title, contents) {
	var html = "";
	
	html += "<div class=\"popup_divPwDel\">                                            ";
	html += "	<div class=\"popup_titlePwDel\">                                       ";
	html += "		<div class=\"popup_title_textPwDel\">" + title + "</div>           ";
	html += "	</div>                                                            ";
	html += "	<div class=\"popup_contentsPwDel\">                                    ";
	html += "		<div class=\"popup_textPwDel\"> " 
	html += "비밀번호<br/>";
	html += "<input type=\"password\" placeholder=\"비밀번호\" class=\"pwDel\"> ";	
	html += "</div>          ";
	html += "		<div class=\"popup_btnPwDel\">                                     ";
	html += "			<input type=\"button\" class=\"btn_okPwDel\" value=\"확인\"/>   ";
	html += "			<input type=\"button\" class=\"btn_closePwDel\" value=\"닫기\"/>   ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	

	
	$("body").prepend(html);
	
	$(".btn_closePwDel").focus();
	

	$(".popup_divPwDel").hide();
	
	
	$(".popup_divPwDel").fadeIn();
	
	
	//확인클릭시 내용물확인
	$(".btn_okPwDel").on("click", function(){
		if($.trim($(".pwDel").val())==""){
			closePwDelDelPopup();
			makePopup("경고","비밀번호를 입력하시오")
		
		}else{
			//form의 data를문자열로 전환
			$("#pw").val($(".pwDel").val());
			var params =$("#actionForm").serialize();
			//ajax
			$.ajax({
				url: "BetterWay_suggestContentChecks", //접속주소
				type: "post", //전송방식 : get, post
				dataType: "json", //받아올데이터형식
				data: params, //보낼 데이터 (문자열형태)
				success: function(res) { // 성공시 다음함수 실행
					if(res.resMsg =="success"){
						conDels();
						//이것만바꿔주면됨
						conModify();
					} else{
						closePwDelPopup();
						makePopup("경고"," 비밀번호가 일치하지 않습니다.");
					}
				},
				error: function(request, status, error) { // 실패 시 다음 함수 실행
					console.log(error);
				}
			});//ajax end
		}//else end		
		
	});//PwDelDelPopup
	
	
	
	//닫기클릭시 닫기
	$(".btn_closePwDel").off("click");
	$(".btn_closePwDel").on("click", function(){
		closePwDelPopup();
	});
	

}

function closePwDelPopup() {

	
	
	$(".popup_divPwDel").fadeOut(function(){
		$(".popup_divPwDel").remove();
	});
}


