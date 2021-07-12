function commPwDelPopup(title, contents) {
	var html = "";
	
	html += "<div class=\"popup_divCommPwDel\">                                            ";
	html += "	<div class=\"popup_titleCommPwDel\">                                       ";
	html += "		<div class=\"popup_title_textCommPwDel\">" + title + "</div>           ";
	html += "	</div>                                                            ";
	html += "	<div class=\"popup_contentsCommPwDel\">                                    ";
	html += "		<div class=\"popup_textCommPwDel\"> " 
	html += "비밀번호<br/>";
	html += "<input type=\"password\" placeholder=\"비밀번호\" class=\"commPwDel\"> ";	
	html += "</div>          ";
	html += "		<div class=\"popup_btnCommPwDel\">                                     ";
	html += "			<input type=\"button\" class=\"btn_okCommPwDel\" value=\"확인\"/>   ";
	html += "			<input type=\"button\" class=\"btn_closeCommPwDel\" value=\"닫기\"/>   ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	html += "		</div>                                                        ";
	

	
	$("body").prepend(html);
	
	$(".btn_closeCommPwDel").focus();
	

	$(".popup_divCommPwDel").hide();
	
	
	$(".popup_divCommPwDel").fadeIn();
	
	
	//확인클릭시 내용물확인
	$(".btn_okCommPwDel").on("click", function(){
		if($.trim($(".commPwDel").val())==""){
			closeCommPwDelPopup();
			makePopup("경고","비밀번호를 입력하시오")
		
		}else{
			$("#comm_pw").val($(".commPwDel").val());
			var params =$("#reviewForm").serialize();
			//ajax
			$.ajax({
				url: "BetterWay_suggestCommChecks", //접속주소
				type: "post", //전송방식 : get, post
				dataType: "json", //받아올데이터형식
				data: params, //보낼 데이터 (문자열형태)
				success: function(res) { // 성공시 다음함수 실행
					if(res.resMsg =="success"){
						commDels();
						closeCommPwDelPopup();
						makePopup("알림","삭제되었습니다.");
						
					} else{
						closeCommPwDelPopup();
						makePopup("경고"," 비밀번호가 일치하지 않습니다.");
					}
				},
				error: function(request, status, error) { // 실패 시 다음 함수 실행
					console.log(error);
				}
			});//ajax end
		}//else end		
		
	});//CommPwDelpopup
	
	
	
	//닫기클릭시 닫기
	$(".btn_closeCommPwDel").off("click");
	$(".btn_closeCommPwDel").on("click", function(){
		closeCommPwDelPopup();
	});
	

}

function closeCommPwDelPopup() {

	
	
	$(".popup_divCommPwDel").fadeOut(function(){
		$(".popup_divCommPwDel").remove();
	});
}


