<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String s = request.getParameter("dan");

int dan = 0;
int sum = 0;

try
{
	dan = Integer.parseInt(s);

} catch (Exception e)
{
	System.out.println(e.toString());

	getServletContext().log("오류 : " + e.toString());
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gugudan_ok.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">

</head>
<body>

	<div>
		<h1>JSP 데이터 송수신 실습</h1>
		<hr>
		<p>Gugudan.jsp → Gugudan_ok.jsp ●</p>
	</div>

	<div>
		<h2>
			<%= dan %>단 결과 : <br>
			<%for (int i = 1; i <= 9; i++)
			{%>

			<%=dan + "X" + i + "=" + i * dan + "<br>"%>

			<%}%>
			
		</h2>

	</div>


</body>
</html>