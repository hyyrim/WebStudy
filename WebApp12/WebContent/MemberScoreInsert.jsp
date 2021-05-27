<%@page import="com.test.MemberDTO"%>
<%@page import="com.test.MemberScoreDTO"%>
<%@page import="com.test.MemberScoreDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	// MemberScoreInsert.jsp
	
	// 이전 페이지(MemberScoreInsertForm.jsp)부터 데이터 수신
	// → sid, kor, eng, mat
	
	String sid = request.getParameter("sid");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String mat = request.getParameter("mat");
	
	// MemberScoreDAO 인스턴스 생성
	MemberScoreDAO dao = new MemberScoreDAO();
	
	MemberScoreDTO score=null;
	
	try
	{
		dao.connection();
		
		// MemberScoreDTO 구성 (sid, kor, eng, mat) → 수신된 데이터로 구성
		score = new MemberScoreDTO();
		
		score.setSid(sid);
		score.setKor(Integer.parseInt(kor));
		score.setEng(Integer.parseInt(eng));
		score.setMat(Integer.parseInt(mat));
		
		// add() 메소드 호출 → 데이터 입력 (insert 수행)
		dao.add(score);
		
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
	
	// 새로운 페이지 요청할 수 있도록 처리 → MemberScoreSelect.jsp 안내
	response.sendRedirect("MemberScoreSelect.jsp");
	
%>
