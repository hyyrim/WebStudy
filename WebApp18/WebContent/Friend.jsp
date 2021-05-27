<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Friend.jsp</title>
<link rel="stylesheet" type="text/css" href="css/default.css"> 

<script type="text/javascript">
	
	function sendIt()
	{
		var f = document.myForm;
		
		if(!f.name.value)
		{
			alert("이름을 입력하세요");
			f.name.focus();
			return;
		}
		
		f.submit();
	}

</script>

</head>
<body>

<div>
	<h1>데이터 입력</h1>
	<hr>
</div>

<div>
	<form action="Friend_ok.jsp" method="post" name="myForm">
		<table class="table">
			<tr>
				<th>이름(*)</th>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<th>나이</th>
				<td>
					<input type="text" name="age">
				</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
					<label>
						<input type="radio" value="남자" name="gender">남자
					</label>
					<label>
						<input type="radio" value="여자" name="gender">여자
					</label>
				</td>
			</tr>
			<tr>
				<th>이상형</th>
				<td>
					<label>
						<input type="checkbox" value="강동원" name="ideal">강동원
					</label>
					<label>
						<input type="checkbox" value="송강" name="ideal">송강
					</label>
					<label>
						<input type="checkbox" value="이도현" name="ideal">이도현
					</label>
					<label>
						<input type="checkbox" value="이제훈" name="ideal">이제훈
					</label>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" onclick="sendIt()" class="btn"
					style="width: 100%; font-size: 16pt;">등록</button>
				</td>
			</tr>
		</table>
	</form>
</div>


</body>
</html>