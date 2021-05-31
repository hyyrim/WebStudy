<%@page import="com.test.mvc.MemberDTO"%>
<%@page import="com.test.mvc.MemberDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 	
%>
<%
	StringBuffer str = new StringBuffer();
	MemberDAO dao = new MemberDAO();
	
	String memberCount = "총 인원 수 : " + dao.count();
	
	for(MemberDTO dto : dao.lists())
	{
		str.append("<td>" + dto.getId() + "</td>");
		str.append("<td>" + dto.getPw() + "</td>");
		str.append("<td>" + dto.getName() + "</td>");
		str.append("<td>" + dto.getTel() + "</td>");
		str.append("<td>" + dto.getEmail() + "</td>");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList.jsp</title>
</head>
<body>

<div>
	<table class="table">
		<tr>
			<%=memberCount %>
			<a href="memberinsertform"><button type="button">회원 입력</button></a>
		</tr>
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
		</tr>
		<tr>
			<%=str.toString() %>
		</tr>
	
	
	</table>
</div>


</body>
</html>