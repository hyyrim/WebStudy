<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	Cookie[] ckArr = request.getCookies();
	// 줄때는 response로 주고 얻을때는 request
	// 단일 쿠키 반환이 아닌 쿠키 배열을 반환한다.
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestGetCookie.jsp</title>
<link rel="stylesheet" type="text/css" href="css/default.css"> 

</head>
<body>

<div>
	<h1>쿠키 정보 얻어내기</h1>
	<hr>
</div>


<div>
	<table class="table">
		<tr>
			<th style="width: 120px;">쿠키 이름</th>
			<th style="width: 120px;">쿠키 값</th>
		</tr>
		<%
		for (Cookie c : ckArr)
		{
		%>
		<tr>
			<td><%=c.getName() %></td>
			<td><%=c.getValue() %></td>
		</tr>
		<%
		}
		%>
		
	</table>
</div>

<div>
	<a href="TestSetCookie.jsp"><button type="button" class="btn">쿠키 정보 설정</button></a>
	<a href="TestRemoveCookie.jsp"><button type="button" class="btn">쿠키 정보 삭제</button></a>
</div>

</body>
</html>



