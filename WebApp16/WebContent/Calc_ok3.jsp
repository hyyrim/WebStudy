<%@page import="com.test.Calc"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<!-- scope 는 명시하지 않아도 default 가 page 이다. -->
<jsp:useBean id="ob" class="com.test.Calc" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="ob"></jsp:setProperty>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calc_ok2.jsp</title>
<link rel="stylesheet" type="text/css" href="css/default.css"> 

</head>
<body>

<div>
	<h1>세 번째 방법 처리 결과</h1>
	<hr>
</div>

<div>
	<h2><%= ob.result() %></h2>
</div>


</body>
</html>