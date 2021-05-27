<%@ page contentType="text/html; charset=UTF-8"%>
<%

	String strName = request.getParameter("name");
	String strMemo = request.getParameter("memo");
	String [] check = request.getParameterValues("checkGroup");
	
	String star=""; 
	
	try
	{
		for(int i=0; i<check.length; i++)
		{
			star += check[i] + " ";
			
		}
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkbox_ok.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css"> 

</head>
<body>

<div>
	<h1>JSP 데이터 송수신 실습</h1>
	<hr>
	<p>Checkbox.jsp → Checkbox_ok.jsp ●</p>
</div>

<div>
	<h2>전송 결과</h2>
	
	이름 : <%= strName %><br>
	메모 : <%= strMemo %><br>
	이상형 : <%= star %>

	
	
</div>


</body>
</html>