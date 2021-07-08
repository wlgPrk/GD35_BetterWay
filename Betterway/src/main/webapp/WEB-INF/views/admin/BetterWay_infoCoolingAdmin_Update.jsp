<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.off_btn{
	display:none;
}

#att{
	display:none;
}
</style>
<script type="text/javascript"
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
		src="resources/script/ckeditor/ckeditor.js"></script>
<script type="text/javascript" 
src="resources/script/jquery/jquery.form.js"></script>
<script type="text/javascript">
$(document).ready(function(){

	$("#backBtn").on("click",function(){
		history.back();
	});
	$("#updateForm").on("keypress","input",function(event){
		if(event.keyCode==13){
			return false;
		}
	});
	
	$("#updateBtn").on("click",function(){
		var fileForm =$("#fileForm");
		fileForm.ajaxForm({
			beforeSubmit:function(){
				if($.trim($("#bTitle").val())==""){
					alert("제목을 입력해 주세요");
					$("#bTitle").focus();
					return false;//아작스 폼 실행 불가->제목 입력 안했는데 파일 입력할필요 없자너
				}else if($.trim($("#bCon").val())==""){
					alert("내용을 입력해 주세요");
					$("#bCon").focus();
					return false;
				}
			},
			success:function(res){
				if(res.result=="SUCCESS"){

					//글 수정
					var params = $("#updateForm").serialize();
					
					$.ajax({
						url:"coolingUpdates",//접속 주소->testALogins파일 필요없음
						type:"post", //전송방식(get,post)
						dataType:"json",//받아올 데이터 형식
						data:params,//보낼 데이터(문자열 형태)
						success:function(res){//성공 시 다음 함수 실행
							if(res.msg=="success"){
								$("#updateForm").attr("action","BetterWay_infoAdmin_Detail");
								$("#updateForm").submit();
							}else if(res.msg=="failed"){
								alert("수정에 실패하였습니다.");
							}else{
								alert("수정중 문제가 발생하였습니다.");
							}
						},
						error:function(request,status,error){//실패시 다음 함수 실행
							console.log(error);
						}
					});
				}else{
					alert("문제 발생");
				}
			},
			error:function(){
				alert("문제 발생");
				}
		});//ajaxForm end
		
		fileForm.submit();
	});//updateBtn click end
});//document ready end
</script>
</head>
<body>
<form id="fileForm"  action="fileUploadAjax" 
		method="post" enctype="multipart/form-data">
	<input type="file" name="att" id="att"/>
</form>
<form action="#" id="updateForm" method="post">
<input type="hidden" name="page" value="${param.page}"/>
<input type="hidden" name="weak_cooling_car_no" value="${data.WEAK_COOLING_CAR_NO}"/> 
약냉방칸 번호 : ${data.WEAK_COOLING_CAR_NO}<br/>
호선번호<input type="text" id="subline_no" name="subline_no" value="${data.SUBLINE_NO}"/><br/>
칸번호<input type="text" id="car_no" name="car_no">${data.CAR_NO}<br/>
</form>
<input type="button" value="수정" id="updateBtn"/>
<input type="button" value="뒤로가기" id="backBtn"/>
</body>
</html>