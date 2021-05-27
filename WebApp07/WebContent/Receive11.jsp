<%@ page contentType="text/html; charset=UTF-8"%>
<%
   String resultStr = (String)request.getAttribute("resultStr");
	// 객체형식을 반환하기 때문에 다운캐스팅
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SampleTest.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css"> 

</head>
<body>

<div>
   <h1>데이터 송수신 실습 11</h1>
   <hr>
</div>

<div>
   <h2>연산 결과 : <%=resultStr %></h2>
</div>


</body>
</html>