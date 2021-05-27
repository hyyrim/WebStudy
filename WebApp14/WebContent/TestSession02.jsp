<%@ page contentType="text/html; charset=UTF-8"%>
<%
	
	// 데이터 수신 (TestSession01.jsp 페이지로 부터)
	// → userName, userBirth
			
	request.setCharacterEncoding("UTF-8");
	
	String userName = request.getParameter("userName");
	String userBirth = request.getParameter("userBirth");
	
	session.setAttribute("userName", userName);
	session.setAttribute("userBirth", userBirth);
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestSession02.jsp</title>
<link rel="stylesheet" type="text/css" href="css/default.css">

<script type="text/javascript">

	function sendIt()
	{
		var f = document.forms[0];
		
		if (!f.userId.value)
		{
			alert("아이디 입력")
			f.userId.focus();
			return;
		}
		
		if (!f.userPwd.value)
		{
			alert("패스워드 입력")
			f.userPwd.focus();
			return;
		}
		
		f.submit();
	}
	
</script>

</head>
<body>
 
<div>
	<h1>아이디와 패스워드(TestSession02.jsp)</h1>
	<hr>
</div>

<div>
	<form action="TestSession03.jsp" method="post">
		
		<%-- HTML 주석처리가 아닌 JSP 주석처리로 해야 브라우저에서 
		문제 생기지 않는다. 히든 타입으로 처리 ↓
		 
		<input type="hidden" name="userName" value="<%=userName"%>">
		<input type="hidden" name="userBirth" value="<%=userBirth"%>"> 
		--%>
		
		<table class="table">
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="userId" style="width: 100px;">
				</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td>
					<input type="text" name="userPwd" style="width: 100px;">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="button" onclick="sendIt()" class="btn"
					style="width: 380px; font-size: 17px;">다음 페이지로 전송</button>
				</td>
			</tr>
		</table>
	</form>
</div>


</body>
</html>