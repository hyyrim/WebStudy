<%@page import="com.test.ScoreDTO"%>
<%@page import="com.test.ScoreDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	
	String userName = request.getParameter("userName");
	String scoreKor = request.getParameter("scoreKor");
	String scoreEng = request.getParameter("scoreEng");
	String scoreMat = request.getParameter("scoreMat");
	
	ScoreDAO dao = null;
	
	try
	{
		dao = new ScoreDAO();
		
		// ScoreDTO 구성
		ScoreDTO dto = new ScoreDTO();
		
		dto.setName(userName);
		dto.setKor(Integer.parseInt(scoreKor));
		dto.setEng(Integer.parseInt(scoreEng));
		dto.setMat(Integer.parseInt(scoreMat));
		
		dao.add(dto);
		
	}
	catch(Exception e)
	{
		System.out.println(e.toString());
	}
	finally
	{
		try
		{
			dao.close();
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	response.sendRedirect("ScoreList.jsp");
	


%>
