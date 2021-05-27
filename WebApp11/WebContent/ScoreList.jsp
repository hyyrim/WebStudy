<%@page import="com.test.ScoreDTO"%>
<%@page import="com.test.ScoreDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%

	StringBuffer str = new StringBuffer();
	ScoreDAO dao = null;
	
	String scoreCount = "<span class='scoreCount'>전체 인원 수 : ";
	
	try
	{
		dao = new ScoreDAO();
		
		scoreCount += dao.count() + "명</span>";
		
		str.append("<table class='table'>");
		str.append("<tr><th>번호</th><th>이름</th>"
		+ "<th>국어점수</th><th>영어점수</th><th>수학점수</th>"
		+ "<th>총점</th><th>평균</th></tr>");
		
		for(ScoreDTO score : dao.lists())
		{
			str.append("<tr>");
			str.append("<td class='record'>" + score.getSid() + "</td>");
			str.append("<td class='record'>" + score.getName() + "</td>");
			str.append("<td class='record'>" + score.getKor() + "</td>");
			str.append("<td class='record'>" + score.getEng() + "</td>");
			str.append("<td class='record'>" + score.getMat() + "</td>");
			str.append("<td class='record'>" + score.getTot() + "</td>");
			str.append("<td class='record'>" + String.format("%.1f", score.getAvg()) + "</td>");
			str.append("</tr>");
		}
		
		str.append("");
		str.append("</table>");

	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	finally
	{
		try
		{
			dao.close();
		}
		catch(Exception e)
		{
			System.out.println(e.toString());			
		}
	}
	
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ScoreList.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css"> 

<style type="text/css">
	
	.record {text-align: center;}
	.errMsg {font-size: small; color: red; display: none;}
	
</style>

<script type="text/javascript">

	function formCheck()
	{
		//alert("함수 호출");
						
		var uName = document.getElementById("userName");
		var uKor = document.getElementById("scoreKor");
		var uEng = document.getElementById("scoreEng");
		var uMat = document.getElementById("scoreMat");
		
		var nameMsg = document.getElementById("nameMsg");
		var korMsg = document.getElementById("korMsg");
		var engMsg = document.getElementById("engMsg");
		var matMsg = document.getElementById("matMsg");
		
		nameMsg.style.display = "none";
		korMsg.style.display = "none";
		engMsg.style.display = "none";
		matMsg.style.display = "none";
		
		if (uName.value == "")
		{
			nameMsg.style.display = "inline";
			uName.focus();
			return false;
		}
		
		if (uKor.value == "" || isNaN(uKor.value) 
			|| Number(uKor.value)>100 || Numer(uKor.value)<0)
		{
			korMsg.style.display = "inline";
			uKor.focus();
			return false;
		}
		
		if (uEng.value == "" || isNaN(uEng.value) 
			|| Number(uKor.value)>100 || Numer(uKor.value)<0)
		{
			engMsg.style.display = "inline";
			uEng.focus();
			return false;
		}
		
		if (uMat.value == "" || isNaN(uMat.value) 
			|| Number(uMat.value)>100 || Numer(uMat.value)<0)
		{
			matMsg.style.display = "inline";
			uMat.focus();
			return false;
		}

		return true;
	}
	
</script>



</head>
<body>

<div>
	<h1>데이터베이스 연동 성적관리 실습</h1>
	<hr>
</div>

<div>
	<p>DAO, DTO 개념 적용</p>
	<form action="ScoreInsert.jsp" method="post" onsubmit="return formCheck()">
		<table class='table'>
			<tr>
				<th>이름(*)</th>
				<td>
					<input type="text" id="userName" name="userName">
					<span  class="errMsg" id="nameMsg">이름을 입력하세요.</span> 
				</td>
			</tr>
			<tr>
				<th>국어점수</th>
				<td>
					<input type="text" id="scoreKor" name="scoreKor">
					<span class="errMsg"  id="korMsg">0에서 100사이의 정수를 입력하세요.</span>
				</td>
			</tr>
			<tr>
				<th>영어점수</th>
				<td>
					<input type="text" id="scoreEng" name="scoreEng">
					<span class="errMsg"  id="engMsg">0에서 100사이의 정수를 입력하세요.</span>
				</td>
			</tr>
			<tr>
				<th>수학점수</th>
				<td>
					<input type="text" id="scoreMat" name="scoreMat">
					<span class="errMsg"  id="matMsg">0에서 100사이의 정수를 입력하세요.</span>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit" class="btn"
					style="height: 50px; width: 200px;">성적 추가</button>
				</td>				
			</tr>
		</table>
	</form>
	
	<div>
		<!-- 리스트 구성 -->
		<%=scoreCount %>
		<%=str.toString() %>
	</div>
</div>


</body>
</html>