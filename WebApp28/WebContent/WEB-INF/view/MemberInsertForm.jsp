<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberInsertForm.jsp</title>
</head>
<body>

<div>
	<form action="memberinsert" method="post">
		<table>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" name="id">
				</td>
			</tr>		
			<tr>
				<th>패스워드</th>
				<td>
					<input type="text" name="pw">
				</td>
			</tr>		
			<tr>
				<th>이름</th>
				<td>
					<input type="text" name="name">
				</td>
			</tr>		
			<tr>
				<th>전화번호</th>
				<td>
					<input type="text" name="tel">
				</td>
			</tr>		
			<tr>
				<th>이메일</th>
				<td>
					<input type="text" name="email">
				</td>
			</tr>		
			<tr>
				<td>
					<button type="submit">입력완료</button>
				</td>
			</tr>
			
		
		</table>
	</form>
	
</div>

</body>
</html>