<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.test.core.MemberDTO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); 	
%>
<%
	//자료구조 생성
	List<MemberDTO> lists = new ArrayList<MemberDTO>();
	
	for(int i=1; i<=5; i++)
	{
		MemberDTO ob = new MemberDTO(request.getParameter("name"+i)
								   , request.getParameter("tel"+i)
								   , request.getParameter("addr"+i));
		lists.add(ob);
	}

	request.setAttribute("lists", lists);
%>

<!-- 포워딩 -->
<jsp:forward page="MemberList.jsp"></jsp:forward>


