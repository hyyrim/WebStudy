<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.JSONArray"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 	
%>
<%
	// JsonType04_ok.jsp
	
	String name = request.getParameter("name");
	String content = request.getParameter("content");
	
	String result = "";
	
	// JSON 데이터(배열)
	// [{"이름1":"값1", "이름2":"값2", "이름3":"값3"}, {"이름4":"값4", "이름5":"값5", "이름6":"값6"}]
	
	// ①
	// {"num":"1","name":"조은선1","content":"내용1"}
	// {"num":"2","name":"조은선2","content":"내용2"}
	// {"num":"3","name":"조은선3","content":"내용3"}
	// {"num":"4","name":"조은선4","content":"내용4"}
	// {"num":"5","name":"조은선5","content":"내용5"}
	
	// ②
	// {"num":"1","name":"조은선1","content":"내용1"},
	// {"num":"2","name":"조은선2","content":"내용2"},
	// {"num":"3","name":"조은선3","content":"내용3"},
	// {"num":"4","name":"조은선4","content":"내용4"},
	// {"num":"5","name":"조은선5","content":"내용5"},
	
	// ③
	// {"num":"1","name":"조은선1","content":"내용1"},
	// {"num":"2","name":"조은선2","content":"내용2"},
	// {"num":"3","name":"조은선3","content":"내용3"},
	// {"num":"4","name":"조은선4","content":"내용4"},
	// {"num":"5","name":"조은선5","content":"내용5"}	← , 없애줌
	
	// ④
	// [{"num":"1","name":"조은선","content":"내용"}
	// , {"num":"2","name":"조은선","content":"내용"}
	// , {"num":"3","name":"조은선","content":"내용"}
	// , {"num":"4","name":"조은선","content":"내용"}
	// , {"num":"5","name":"조은선","content":"내용"}]	→ [] 추가
	
	/*
	for(int n=1; n<=5; n++)	// 1 ~ 5
	{
		StringBuffer sb = new StringBuffer();
		
		sb.append("{\"num\":\"" + n + "\"");
		sb.append(",\"name\":\"" + name + n + "\"");
		sb.append(",\"content\":\"" + content + n + "\"},");	// check~!!! 『,』 위치 확인
		
		result += sb.toString();
	}
	
	result = result.substring(0, result.length()-1);
	
	result = "[" + result + "]";
	
	out.println(result);
	*/
	
	JSONArray jsonArray = new JSONArray();
	
	for(int n=1; n<=5; n++) // 1 ~ 5
	{
		JSONObject jsonObject = new JSONObject();
		
		jsonObject.put("num", n);
		jsonObject.put("name", name+n);
		jsonObject.put("content", content+n);
		
		jsonArray.add(jsonObject);
		
	}
	
	// 테스트
	System.out.println(jsonArray.toString());
	
	out.println(jsonArray.toString());
	
			
%>

<!-- 이곳에 다른 구문이 더 써져있다면 Json 을 인식 못함 (출력 Ⅹ)  -->

