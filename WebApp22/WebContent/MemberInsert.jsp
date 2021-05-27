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

<%-- 객체 생성 이건 아닌가..?--%>
<%-- <jsp:useBean id="ob" class="com.test.core.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="ob"/> --%>

<%
	//자료구조 생성
	
	String[] name = request.getParameterValues("name");
	String[] tel = request.getParameterValues("tel");
	String[] addr = request.getParameterValues("addr");
	
	List<MemberDTO> lists = new ArrayList<MemberDTO>();
	
	MemberDTO dto = null;
	
	for(int i=0; i<name.length; i++)
	{
		dto = new MemberDTO(name[i], tel[i], addr[i]);
		lists.add(dto);		
	}
	
	request.setAttribute("lists", lists);
%>

<!-- 포워딩 -->
<jsp:forward page="MemberList.jsp"></jsp:forward>


