<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String userId = request.getParameter("userId");
	String userPwd = request.getParameter("userPwd");
	
	// hidden 으로 넘겨받게되면 request.getParameter 로 받아야함
	//String userName = request.getParameter("userName"); 
	//String userBirth = request.getParameter("userBirth"); 
	
	String userName = (String)session.getAttribute("userName");
	String userBirth = (String)session.getAttribute("userBirth");
	
	// session.Attribute 한 후 removeAttribute 해도 된다
	session.removeAttribute("userName");
	session.removeAttribute("userBirth");
	
	session.setMaxInactiveInterval(10);
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TestSession03.jsp</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
</head>
<body>
 
<div>
	<h1>출력 페이지(TestSession03.jsp)</h1>
	<hr>
</div>

<div>
	<form>
		<table>
			<tr>
				<th>이름 : <%=userName %></th>
			</tr>
			<tr>
				<th>생일 : <%=userBirth %></th>
			</tr>
			<tr>
				<th>아이디 : <%=userId %></th>
			</tr>
			<tr>
				<th>패스워드 : <%=userPwd %></th>
			</tr>
			<tr>
				<td>
				<br>
				<a href="TestSession01.jsp">처음으로</a>
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>