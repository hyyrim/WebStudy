<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// Redirect12.jsp 로 부터 get 방식으로 넘겨받은 데이터 수신
	// 값은 다시 얻어와야 한다.
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	String op = request.getParameter("calResult");
	String str = request.getParameter("result");
	
	if(op.equals("1"))
		op = "+"; // 결과를 1 + 2 와 같은 형태로 보여주게 하기 위해 바꿔준다.
	else if(op.equals("2"))
		op="-";
	else if(op.equals("3"))
		op="*";
	else if(op.equals("4"))
		op="/";
	
	String resultstr = String.format("%s %s %s = %s", num1,op,num2, str);
	// 쿼리스트링 안에 보낼때는 위와 같은 형태로 처리해야한다.
	// 포워드와 다름 비교해보기 ★
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receive12.jsp</title>
<link rel="stylesheet" type="text/css" href="css/main.css"> 

</head>
<body>

<div>
   <h1>데이터 송수신 실습 12</h1>
   <hr>
</div>

<div>
   <h2>연산 결과 : <%=resultstr %></h2>
</div>


</body>
</html>