<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="ob" class="com.test.FriendDTO" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="ob"/>

<!-- 반복문 필요(다중 선택으로 넘어온 결과값 처리) -->
<%
	String str = "";
	if(ob.getIdeal() != null)	// 배열형태로 넘어오면 항상 null 체크 ★
	{
		for(String temp :  ob.getIdeal())
			str += 	temp + " ";		
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Friend_ok.jsp</title>
<link rel="stylesheet" type="text/css" href="css/default.css"> 

</head>
<body>

<div>
	<h1>등록된 수신결과 확인</h1>
	<hr>
</div>

<div>
	<h2>작성된 내용 확인</h2>
	<h3>이름 : <%=ob.getName() %></h3>
	<h3>나이 : <%=ob.getAge() %></h3>
	<h3>성별 : <%=ob.getGender() %></h3>
	<h3>이상형 : <%=str %></h3>
</div>

<br>
<a href="Friend.jsp">뒤로가기</a>

</body>
</html>