<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>역 별 시간표 안내</title>
<script type="text/javascript">


function printName()  {
	  const name = document.getElementById('test').value;
	  document.getElementById("result").innerText = name;
	}

</script>
<style type="text/css">
body {
	   
	font-size: 18px;

}
header {
    top: 0;
    left: 0;
    right: 0;
    height: 75px;
	padding-left:20px;
    color: white;
    background: #023459;
    font-weight: bold;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
footer{
   top: 0;
    left: 0;
    right: 0;
    height: 75px;
	padding-left:20px;
    color: white;
    background: #023459;

    display: flex;
    justify-content: space-between;
    align-items: center;
}

.popup {
	width: 100%;
	height: 100%;
}




.wrap {
	width: 460px;
    margin: 0px auto;
    margin-top: 45px;
    margin-bottom: 50px;
	background-color: #fff;
}

.c_title {
	font-size: 14px;
	font-weight:bold;
    height: 26px;
    width: 20%;
    text-align: center;
    vertical-align: middle;
    padding: 17px 14px 8px;

}




.txt {
	width: 70%;;
	height: 29px;
	padding: 10px 14px;
	border: 1px solid #dadada;
	background: #fff;
	background-repeat: no-repeat;
    background-position: 415px 5px;
    background-size: 200px auto;
}


a {
		text-decoration: none;
		color: #fff;
	}

  .info{
  flex:1;
  height:180px;
  width:70%;
  background-color: orange;
   
  }
  
  .box{
  font-size: 20px;
  border-radius: 5px 5px 5px 5px;
  margin-left: 5px;
  }

    #bot_btn {
  border:1px solid;
  font-size: 20px;
  border-radius: 5px 5px 5px 5px;
  border-color:#82B2DA;
  margin-left: 5px;
  float:right;

  }
  
      #bot_btn :hover{

  font-size: 20px;
  border-radius: 5px 5px 5px 5px;
background:#B2A59F;
  float:right;
  }
  
.sub_con {
  display: flex;
  margin-top: 20px;
    margin-bottom: 20px;
  
   width: 100%; height: 375px;;
}
.top_title {
  display: flex;
  
  
}
  .box_tit{
    position: relative;
 background-image:url("sub.png");       
 background-size : cover;                      
  height:88px;

  }


.img_cov{
 backdrop-filter: blur(5px);
 padding-top:60px;
height: 28px;

 
}
.img_cov_con{/* 어디로 왔능가  */

font-size: 15px;

background:rgba(52, 75, 22, 0.63);
    color: #fff;
    text-align: right;
   

}
.con_side{
	width:130px;
	text-align: center;
	padding-top: 20%;
}
.val_box{
    flex: 1;
	padding:30px 5px 30px 5px;
}
table, td {
  width:300px;
  height:30px;
  border-collapse : collapse;
  text-align: center;
  border-radius: 10px;
  font-weight: bold;
  font-size:13px;

};


#val{
width:30px;
  height:30px;
  background-color: #fff;
}

.contents_val{
font-size:13px;
margin-top: 5px;
}
#val_tab{
margin-top: 60px;
}
#popup3html_btn:hover{
text-decoration: underline;
}

thead{
	display: table-header-group;
	vertical-align: middle;
	background-color:#f0f0f5;
}
th,td{
	border : 2px solid #e0e0eb;
	border-collapse: collapse;
	padding : 10px;
	text-align: center;
	width: 400px;
}


</style>

</head>
<body>
<header>
<a href="airQ.html">운임 안내</a>
</header>
	<div class="bg">
		<div class="popup">
			 <div class="box_tit">
        
		        <div class="img_cov">
		      
		                  <div class="img_cov_con">
		                  	홈>시간표 안내 &nbsp;
		                  	</div>
		            </div>
    	</div>
			<div class="wrap">
			<div style="float: right;">
			호선을 검색하세요&nbsp;
			<select>
			<option value="">호선 선택</option>
			<option value="1호선">1호선</option>
			<option value="2호선">2호선</option>
			<option value="3호선">3호선</option>
			<option value="4호선">4호선</option>
			<option value="5호선">5호선</option>
			<option value="6호선">6호선</option>
			<option value="7호선">7호선</option>
			<option value="8호선">8호선</option>
			<option value="9호선">9호선</option>
			</select>
			<input type="text" placeholder="개화역"/>
			<br/>
			<br/>
			</div>
			
			
			
			<table style="position: relative; left: 80px;" >
<thead>
<tr>
<th scope="col">김포공항, 중앙보훈병원 방면</th> 
<th scope="col" rowspan="2">시각</th>
 <th scope="col"></th>
</tr>
<th>분<br/>(일반/*급행)</th><th>분<br/>(일반/*급행)</th>
</thead>

<tbody>
<tr>
<td>30 &nbsp;42&nbsp;54</td>  <td>05</td><td></td>
</tr>
<tr>
<td>06&nbsp;14&nbsp;24&nbsp;30&nbsp;38&nbsp;47&nbsp;56</td> <td>06 </td> <td></td>
</tr>
<tr>
<td>04&nbsp;12&nbsp;19&nbsp;26&nbsp;33&nbsp;40&nbsp;47&nbsp;54</td>  <td>07</td><td></td>
</tr>
<tr>
<td>01&nbsp;09&nbsp;18&nbsp;27&nbsp;36&nbsp;47&nbsp;58</td> <td>08</td><td></td>
</tr>
<tr>
<td>09&nbsp;20&nbsp;31&nbsp;42&nbsp;53</td> <td>0+</td><td></td>
</tr>
<tr>
<td> 04&nbsp;15&nbsp;26&nbsp;37&nbsp;48&nbsp;59</td> <td>10</td><td></td>
</tr>
<tr>
<td>10 &nbsp;21&nbsp;32&nbsp;43&nbsp;54</td> <td>11</td><td></td>
</tr>
<tr>
<td>06 &nbsp;18&nbsp;29&nbsp;40&nbsp;51</td>  <td>12</td><td></td>
</tr>
<tr>
<td>02&nbsp;13&nbsp;24&nbsp;35&nbsp;46&nbsp;57</td>  <td>13</td><td></td>
</tr>
<tr>
<td>08 &nbsp;19&nbsp;30&nbsp;41&nbsp;53</td>  <td>14</td><td></td>
</tr>
<tr>
<td>05 &nbsp;16&nbsp;27&nbsp;38&nbsp;49&nbsp;55</td>  <td>15</td><td></td>
</tr>
<tr>
<td>00 &nbsp;11&nbsp;22&nbsp;29&nbsp;33&nbsp;44&nbsp;52</td>  <td>16</td><td></td>
</tr>
<tr>
<td>00 &nbsp;08&nbsp;16&nbsp;24&nbsp;32&nbsp;40&nbsp;48&nbsp;56</td>  <td>17</td><td></td>
</tr>
<tr>
<td>04 &nbsp;12&nbsp;20&nbsp;28&nbsp;36&nbsp;44&nbsp;52</td>  <td>18</td><td></td>
</tr>
<tr>
<td>00 &nbsp;09&nbsp;17&nbsp;27&nbsp;37&nbsp;47&nbsp;57</td>  <td>19</td><td></td>
</tr>
<tr>
<td>07&nbsp;17&nbsp;27&nbsp;37&nbsp;47&nbsp;57</td>  <td>20</td><td></td>
</tr>
<tr>
<td>07&nbsp;17&nbsp;27&nbsp;37&nbsp;47&nbsp;58</td>  <td>21</td><td></td>
</tr>
<tr>
<td>10 &nbsp;23&nbsp;36&nbsp;49(삼전)</td>  <td>22</td><td></td>
</tr>
<tr>
<td>03(신논현)&nbsp;16(동작)&nbsp;29(당산)&nbsp;43(가양)</td>  <td>23</td><td></td>
</tr>
<tr>
<td>08 &nbsp;19&nbsp;30&nbsp;41&nbsp;53</td>  <td>14</td><td></td>
</tr>
</tbody>

</table>

				
			
				</div>
				
			</div>
			
		</div>
	
				

</body>

</html>