function commPwPopup(title, contents) {
	var html = "";
	
	html += "<div class=\"popup_divCommPw\">                                            ";
	html += "	<div class=\"popup_titleCommPw\">                                       ";
	html += "		<div class=\"popup_title_textCommPw\">" + title + "</div>           ";
	html += "	</div>                                                            ";
	html += "	<div class=\"popup_contentsCommPw\">                                    ";
	html += "		<div class=\"popup_textCommPw\"> " 
	html += "비밀번호<br/>";
	html += "<input type=\"password\" placeholder=\"비밀번호\" class=\"commPw\"> ";	
	html += "</div>          ";
	html += "		<div class=\"popup_btnCommPw\">                                     ";
	html += "			<input type=\"button\" class=\"btn_okCommPw\" value=\"확인\"/>   ";
	html += "			<input type=\"button\" class=\"btn_closeCommPw\" value=\"닫기\"/>   ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	

	
	$("body").prepend(html);
	
	$(".btn_closeCommPw").focus();
	

	$(".popup_divCommPw").hide();
	
	
	$(".popup_divCommPw").fadeIn();
	
	
	//확인클릭시 내용물확인
	$(".btn_okCommPw").on("click", function(){
		if($.trim($(".commPw").val())==""){
			closeCommPwPopup();
			makePopup("경고","비밀번호를 입력하시오")
		
		}else{
			$("#comm_pw").val($(".commPw").val());
			var params =$("#reviewForm").serialize();
			//ajax
			$.ajax({
				url: "BetterWay_suggestCommChecks", //접속주소
				type: "post", //전송방식 : get, post
				dataType: "json", //받아올데이터형식
				data: params, //보낼 데이터 (문자열형태)
				success: function(res) { // 성공시 다음함수 실행
					if(res.resMsg =="success"){
						closeCommPwPopup();
						commModify(res.data);
					} else{
						closeCommPwPopup();
						makePopup("경고"," 비밀번호가 일치하지 않습니다.");
					}
				},
				error: function(request, status, error) { // 실패 시 다음 함수 실행
					console.log(error);
				}
			});//ajax end
		}//else end		
		
	});//CommPwpopup
	
	
	
	//닫기클릭시 닫기
	$(".btn_closeCommPw").off("click");
	$(".btn_closeCommPw").on("click", function(){
		closeCommPwPopup();
	});
	

}

function closeCommPwPopup() {

	
	
	$(".popup_divCommPw").fadeOut(function(){
		$(".popup_divCommPw").remove();
	});
}


