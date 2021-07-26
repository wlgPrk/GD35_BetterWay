 function envinfoGuide() {
	 
	 
	 
	var html = "";
	
	
	
	
	
html += "<div class=\"popup_div_envi\">                                            "; 
html += "<header class=\"header_envi\"><a class=\"a_envi\">실내 공기질 정보 안내</a></header>";
html+="	<div class=\"con_envi\">     ";                                                                                                          
html+="	 <div class=\"box_title_envi\">         ";                                                                                                                                                                                                                           
html+="       <div class=\"img_cover_envi\">         ";                                                                                                                                                                                                                             
html+="                 <div class=\"img_cover_con_envi\">   ";                                                                                  
html+="                 	홈>환경정보 안내>실내 공기질 정보 &nbsp;      ";                                                                     
html+="                 </div>                                       ";                                                                          
html+="        </div>                                             ";                                                                             
html+="	</div>	                                                  ";                                                                             
html+="	<div class=\"wrap_envi\">                                 ";                                                                             
html+="	<div class=\"top_title_envi\" >                                ";                                                                        
html+="		<form action=\"#\" id=\"SearchForm_envi\" method=\"post\" >   ";  
html+="		 <label class=\"label_envi\">호선</label>            "; 
html+="	        <select id=\"sName_envi\" name=\"sName\">             ";                                                                         
html+="	            <option>--호선을 선택하세요--</option>                 ";                                                                    
html+="	            <option value=\"1\">1호선</option>                 ";                                                                        
html+="	            <option value=\"2\">2호선</option>                  ";                                                                       
html+="	            <option value=\"3\">3호선</option>                  ";                                                                       
html+="	            <option value=\"4\">4호선</option>                   ";                                                                      
html+="	            <option value=\"5\">5호선</option>                    ";                                                                     
html+="	            <option value=\"6\">6호선</option>                   ";                                                                      
html+="	            <option value=\"7\">7호선</option>                    ";                                                                     
html+="	            <option value=\"8\">8호선</option>                   ";                                                                      
html+="	        </select>                                              ";                                                                        
html+="	     <!--쿼리 받아 뿌려줄거임 -->                                    ";                                                                  
html+="	        <label class=\"label_envi\">역</label>                ";                                                                         
html+="	        <select id=\"select_station_envi\" name=\"station\">   ";                                                                        
html+="	        <option>--역을 선택하세요--</option>                          ";                                                                 
html+="	        </select>                                                 ";                                                                     
html+="		<input type=\"button\" id=\"air_search_envi\"value=\"검색\">      ";                                                                 
html+="			<input type=\"hidden\" id=\"sn_envi\" name=\"sName\" />      ";                                                                  
html+="			<input type=\"hidden\" id=\"st_envi\" name=\"select_station\" />    ";                                                           
html+="		</form>                                                     ";                                                                       
html+="	</div>                                                            ";                                                                     
html+="	<div class=\"sub_con_envi\" >                                         ";                                                                 
html+="	    <div class=\"val_box_envi\" style=\"border:1px solid #B2A59F;\">   ";                                                                
html+="			<div id=\"val_envi\" >                                       ";                                                                  
html+="			</div>                                                     ";                                                                    
html+="			<div id=\"vals_envi\">                                            ";                                                             
html+="			**실내공기질 측정기가 설치되어 있는 역사의<br/> 실내공기질 측정 정보를 매시간 단위로 제공합니다.  ";                             
html+="			</div>                                                              ";                                                           
html+="			<table id=\"val_table_envi\" class=\"table_envi\">               ";                                                              
html+="				<tr>                                                            ";                                                           
html+="					<td class=\"td_envi\" style=\"background: #4641D9; color:#fff;\">좋음</td>   ";                                          
html+="					<td class=\"td_envi\" style=\"background: #47C83E; color:#fff;\">보통</td>   ";                                          
html+="					<td class=\"td_envi\" style=\"background: #CCA63D; color:#fff;\">나쁨</td>   ";                                          
html+="					<td class=\"td_envi\" style=\"background: #CC3D3D; color:#fff;\">매우나쁨</td>  ";                                       
html+="				</tr>                                                                            ";                                          
html+="				<tr><th colspan=\"4\" style=\"font-weight:normal; font-size:8px; padding-top:5px;\">	";                                   
html+="				*0~30㎍/m³\'좋음\' 31~80㎍/m³\'보통\'<br/> 81~150㎍/m³\'나쁨\' 151㎍/㎥ 초과 \'매우 나쁨\'<br/>       ";                     
html+="<br/><a  class=\"a_envi\" id=\"air_guide_btn\" style=\"font-size: 15px; color:#000;\">      ";            
html+="				▷ 실내 공기질 유지 기준 안내 보러가기</a></th></tr>                                  ";                                     
html+="			</table>			                                    ";                                                                       
html+="	    </div>                                             "; 
html+= "<div class=\"btn_box_envi\"><input type=\"button\" class=\"btn_envi\"  value=\"닫기\"></div>      ";
html+="	</div><!-- sub_con end -->                          ";                                                                                   
html+="	<div id=\"api_data\"></div>                       ";                                                                                     
html+="</div><!--wrap end  -->                         ";                                                                                        
html+="</div>                                           "; 
html+= "</div>                      ";
	
	
	
	
	$("body").prepend(html);
	
	
	$(".popup_div_envi").hide();
	
	$(".popup_div_envi").fadeIn();
	
	

	$("#sName_envi").on("change", function() {
		sNameEnvi();
	});
	
	
	$("#air_search_envi").on("click", function() {
		searchEnvi();
	});
	
	
	//실내공기질유지기준
	$("#air_guide_btn").on("click",function(){
	envinfoGuide2();
		
	});	
	
	
	$(".btn_envi").off("click");
	$(".btn_envi").on("click", function(){
		closePopupEnvi();
	});
	

	

	
	
	
	
}

function closePopupEnvi() {

	
	$(".popup_div_envi").fadeOut(function(){
		$(".popup_div_envi").remove();
	});
}



function sNameEnvi(){
	var html="";
	var params = $("#SearchForm_envi").serialize();	

	$.ajax({
		url:"envinfoGuide",
		type:"post", //전송방식(get,post)
		dataType:"json",//받아올 데이터 형식
		data:params,//보낼 데이터(문자열 형태)
		success:function(res){//성공 시 다음 함수 실행				
	
			console.log(res);			
			for(var d of res.data) {
				//html += "<option id=\"select_station\"  name=\"subway_station_name\">"+d.SUBWAY_STATION_NAME+"</option>";

				html += "<option id=\"select_station_envi\">"+d.SUBWAY_STATION_NAME+"</option>";
				
			}
	
			$("#select_station_envi").html(html);//두번째셀렉트옵션에 걸러진 값인 역들을 넣어줌
		

			},
		error:function(request,status,error){//실패시 다음 함수 실행
			console.log(error);
		}
	});
}





function searchEnvi(){
	
	var html="";
	$("#sn_envi").val($("#sName_envi").val());
	$("#st_envi").val($("#select_station_envi").val());
	$.ajax({
		/* http://openapi.seoul.go.kr:8088/48766550483131313131334b6d6e6666/xml/airPolutionInfo/요청시작/요청종료 ->(259개 데이터 불러오기) */
		url:"http://openapi.seoul.go.kr:8088/48766550483131313131334b6d6e6666/xml/airPolutionInfo/1/259",
		type:"get",
		dataType:"xml",
		success:function(res){
			console.log(res);
			//LINE AREA_NM CHECKDATE PMq		
						
			$(res).find("row").each(function(){
				var LINE =$(this).find("LINE").text();
				var AREA_NM =$(this).find("AREA_NM").text()
				var CHECKDATE =$(this).find("CHECKDATE").text();
				var PMq =$(this).find("PMq").text();
				
				var VIEW_TEXT = LINE +"호선"+" " +AREA_NM +" "+CHECKDATE +" "+PMq + "<br/>";
				//$("#val").append(VIEW_TEXT);
				
				
				var html = "";
				//$("#api_data").append(VIEW_TEXT);//데이터보려고 둠
				if($("#sn_envi").val()==LINE&&$("#st_envi").val()==AREA_NM){
					console.log("aaaa");
			
					html += "<div id=\"val\"><b>호선:</b>"+sn_envi.value+"호선 </br></br>";
					html += "<b>역:</b>"+st_envi.value+"역 </br></br>";
					html += "<b>초미세먼지 농도:</b>"+PMq +" ㎍/㎥</br></br>";
					html += "<b>측정시간:</b>"+CHECKDATE+"</div>";	
					$("#val_envi").html(html);
				}
			//	$("#vals").hide(html);
				  document.getElementById("vals_envi").style.display ='none';
			});
		
		},
		error:function(requet,status,error){
			console.log(error);
			
		}
	});//ajax로 데이터 불러옴
	
}


function envinfoGuide2(){
	var html = "";
	html+="<div class=\"popup_div_envi2\"> ";
	html+="<header class=\"header_envi2\">                                                                                   ";
	html+="<a href=\"airQ.html\" style=\"color:#fff;\" class=\"a_envi2\">실내 공기질 정보 안내</a>                           ";
	html+="</header>                                                                                                         ";
	html+="		<div class=\"con_envi2\">                                                                                    ";
	html+="			 <div class=\"box_title_envi2\">                                                                         ";
	html+="		        <div class=\"img_cover_envi2\">                                                                      ";
	html+="                  <div class=\"img_cover_con_envi2\">                                                             ";
	html+="                  	홈>환경정보 안내>실내 공기질 유지기준 안내 &nbsp;                                            ";
	html+="                  </div>                                                                                          ";
	html+="		        </div>                                                                                               ";
	html+="    		</div>                                                                                                   ";
	html+="			<div class=\"wrap_envi2\">                                                                               ";
	html+="				<table class=\"table_envi2\">                                                                        ";
	html+="				 <tr><th class=\"th_envi2\" colspan=\"6\" class=\"th_envi2\"><h1>실내 공기질 유지기준</h1></th></tr> ";
	html+="				  <thead>                                                                                            ";
    html+="                                                                                                                  ";
	html+="				  </thead>                                                                                           ";
	html+="				  <tbody>                                                                                            ";
	html+="				  <tr id=\"tr_title_envi2\" >                                                                        ";
	html+="				   <th style=\" border-right:1px solid #e0e0eb;\" class=\"th_envi2\">다중 이용시설</th>              ";
	html+="				    <th style=\" border-right:1px solid #e0e0eb;\" class=\"th_envi2\">미세먼지(PM10)</th>            ";
	html+="				    <th style=\" border-right:1px solid #e0e0eb;\" class=\"th_envi2\">초미세먼지(PM2.5)</th>         ";
	html+="				    <th style=\" border-right:1px solid #e0e0eb;\" class=\"th_envi2\">이산화탄소(ppm)</th>           ";
	html+="				    <th style=\" border-right:1px solid #e0e0eb;\" class=\"th_envi2\">폼알데하이드(㎍/㎥)</th>       ";
	html+="				    <th class=\"th_envi2\">일산화탄소(ppm)</th>                                                      ";
	html+="				  </tr>                                                                                              ";
	html+="				  <tr>                                                                                               ";
	html+="				   <td class=\"td_envi2\">지하역사,<br/> 지하도 상가,<br/> 역사의 대합실 등</td>                     ";
	html+="				    <td class=\"td_envi2\">100이하</td>                                                              ";
	html+="				    <td class=\"td_envi2\">50이하</td>                                                               ";
	html+="				    <td class=\"td_envi2\">1,000이하</td>                                                            ";
	html+="				    <td class=\"td_envi2\">100이하</td>                                                              ";
	html+="				    <td class=\"td_envi2\">10이하</td>                                                               ";
	html+="				  </tr>                                                                                              ";
	html+="				  <tr>                                                                                               ";
	html+="				    <td class=\"td_envi2\">의료기관,노인요양시설,어린이집 등</td>                                    ";
	html+="				    <td class=\"td_envi2\">75이하</td>                                                               ";
	html+="				    <td class=\"td_envi2\">35이하</td>                                                               ";
	html+="				    <td class=\"td_envi2\">1,000이하</td>                                                            ";
	html+="				    <td class=\"td_envi2\">80이하</td>                                                               ";
	html+="				    <td class=\"td_envi2\">10이하</td>                                                               ";
	html+="				  </tr>                                                                                              ";
	html+="				  <tr>                                                                                               ";
	html+="				    <td class=\"td_envi2\">실내주차장</td>                                                           ";
	html+="				    <td class=\"td_envi2\">200이하</td>                                                              ";
	html+="				    <td class=\"td_envi2\">-</td>                                                                    ";
	html+="				    <td class=\"td_envi2\">1,000이하</td>                                                            ";
	html+="				    <td class=\"td_envi2\">100이하</td>                                                              ";
	html+="				    <td class=\"td_envi2\">25이하</td>                                                                  ";
	html+="				  </tr>                                                                                                 ";
	html+="				  </tbody>                                                                                              ";
	html+="				</table>                                                                                                ";
	html+="					<div class=\"con_wrap_envi2\">                                                                      ";
	html+="					<span class=\"box_envi2\" style=\"background:#1E646E;color:#fff; font-weight: bold; \">실내 미세먼지 저감 노력-지하 역사</span>   ";
	html+="					<div class=\"con_style\"style=\"border:1px solid ; margin-top: 20px; \">                                                          ";
	html+="						<p id=\"sub_con_envi2\">                                                                                                      ";
	html+="						지하역사 승강장 내에서 초미세먼지의 상시 측정이 가능해짐에 따라 보다 체계적으로 지하역사의 초미세먼지 농도를 저감하는 조치를 \시행할 수 있게 되었습니다.<br/> ";
	html+="						실내공기질 관리법의 개정(2020. 4. 3. 시행)에 따라 지하역사에 측정기기 설치와 전동차의                                         ";
	html+="						실내공기질 측정이 의무화되고, 실내공기질 권고기준이 신설되었습니다.                                                           ";
	html+="					                                                                                                                                  ";
	html+="						<br/>－ 지하역사 환기설비 내 필터규격 등 성능을 구체화하고, ‘지하역사 환기설비 운영･관리 규정’                                ";
	html+="						을 마련하는 등 환기설비 운영 효율성을 제고합니다.</p>		                                                                  ";
	html+="					</div>                                                                                                                            ";
	html+="					</div>                                                                                                                            ";
	html+="	<div class=\"btn_box_envi2\"><input type=\"button\" class=\"btn_envi2\"  value=\"닫기\"></div>                                                    ";
	html+="			</div>	                                                                                                                                  ";
	html+="		</div>";
	html+="</div>";
	
	$("body").prepend(html);
	
	
	$(".popup_div_envi2").hide();
	
	$(".popup_div_envi2").fadeIn();
	
	
	
	$(".btn_envi2").off("click");
	$(".btn_envi2").on("click", function(){
		closePopupEnvi2();
	});
	
	
};


function closePopupEnvi2() {

	
	$(".popup_div_envi2").fadeOut(function(){
		$(".popup_div_envi2").remove();
	});
}
