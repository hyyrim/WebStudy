/*===========================
	SampleServlet.java
	- 서블릿 샘플
===========================*/



package com.test.mvc;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberInsertFormController extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			doGetPost(request, response);
		} catch (ClassNotFoundException | ServletException | IOException | SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			doGetPost(request, response);
		} catch (ClassNotFoundException | ServletException | IOException | SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, SQLException
	{
		// Model 객체 연결
		MemberInsertFormModel model = new MemberInsertFormModel();
		String view = model.process(request, response);
		
		// view 페이지 연결
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
				
		
		
	}
	
	
	
}
