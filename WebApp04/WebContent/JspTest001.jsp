<%@ page contentType="text/html; charset=UTF-8"%> <!-- 디렉티브 -->
<% 
	// 스크립트 릿(Scriptlet) 영역
	String name = "한혜림";
	name += "은 사람이다.";
	
	int result;
	result = 10 + 20;

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JspTest001.jsp</title>
</head>
<body>	

<div>
	<h1>JSP 관찰하기</h1>
	<hr>
</div>

<div>
	<h2>한혜림</h2>
	<h2><%=name %></h2> <!-- 표현식 -->
	<h2><%=result %></h2>
</div>

</body>
</html>