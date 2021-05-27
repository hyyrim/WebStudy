<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// 여기는 자바 코드만 존재한다.
	// Redirect12.jsp
	
	// 데이터 수신
	String num1Str = request.getParameter("num1");
	String num2Str = request.getParameter("num2");
	
	String calResult = request.getParameter("calResult");
	
	int num1,num2;
	num1=num2=0;
	String result = "";
	
	try
	{
		num1 = Integer.parseInt(num1Str);
		num2 = Integer.parseInt(num2Str);
		
		if(calResult.equals("1"))
			result = String.format("%d", (num1+num2));
		else if(calResult.equals("2"))
			result = String.format("%d", (num1-num2));
		else if(calResult.equals("3"))
			result = String.format("%d", (num1*num2));
		else if(calResult.equals("4"))
			 result = String.format("%.1f", (num1/(double)num2));

		
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	
	//request.setAttribute("result", str);
	// 우리의 만남은 여기까지 … 이렇게 써도 다시 만날일이 없는 요청이 된다.
	
	// ★ 결과 데이터 재전송~!!! → sendRedirect() 메소드 사용
	// ※ response 객체의 주요 메소드 중 하나인
	// 『sendRedirect(String location)』
	//	 : 지정된 URL(location)로 요청을 재전송한다.
	// 포스트잇에 적어서 여기로 찾아가세요~ 하는거랑 같다.
	// "&변수" 안에있는건 다른쪽에서 받을 name ,  +변수+ 는 내가 넘기는 name
	// 공백이 포함되어 있으면 안된다!!
	response.sendRedirect("Receive12.jsp?num1="+num1+"&num2="+num2+"&calResult="+calResult+"&result="+result);


	
%>
