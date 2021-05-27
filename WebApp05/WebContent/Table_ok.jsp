<%@ page contentType="text/html; charset=UTF-8"%>
<%
	
	String su1 = request.getParameter("su1");
	String su2 = request.getParameter("su2");
	
	int n1 = Integer.parseInt(su1);
	int n2 = Integer.parseInt(su2);
	
	//전역변수
	int count=1;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Table_ok.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
 

</head>
<body>

<div>
	<h1>JSP 데이터 송수신 실습</h1>
	<hr>
	<p>Table.jsp → Table_ok.jsp ●</p>
</div>

<div>
	<h2>테이블 구성</h2>
	
	<table border="1">
		<% 
		for(int i=0; i< n2; i++)
			{%>
				<tr>
			
				<% 
				for(int j=0; j<n1; j++)
				{%>
					<td><%= count %></td>
					
				<%
					count++;
				
				}%>
				</tr>
			<%
			}%>
			
	</table>
</div>


</body>
</html>