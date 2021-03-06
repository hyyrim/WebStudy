/*================
	Test1.java
=================*/



package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test1 extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGetPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGetPost(request, response);
	}
	
	protected void doGetPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{	
		/* ① */
		/*
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		pw.println("<html><body>");
		pw.println("<h1>name : " + "박민지" + "</h1>");
		pw.println("<h1>age : " + "13" + "</h1>");
		pw.println("</body></html>");
		*/
		
		/* ② */
		/*
		String name = "선혜연";
		String age = "11";
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		pw.println("<html><body>");
		pw.println("<h1>name : " + name + "</h1>");
		pw.println("<h1>age : " + age + "</h1>");
		pw.println("</body></html>");
		*/
		
		/* ③ 
		 * 
		 * 『webl.xml』에 <init-param> 추가 후 
		 * 
		 * ★ 중요 ★
		 * 파일이 class 로 배포되기때문에 java에 정적으로 고정해놓으면
		 * 추후에 변경 불가능.. web.xml 으로하면 변경 가능
		 * 
		 * 『ServletConfig』
		 *  → 컨테이너가 서블릿을 초기화 할 때
		 *     서블릿 당 하나씩 ServletConfig 를 생성하게 된다. */	
		/*
		ServletConfig config = getServletConfig();
		
		String name = config.getInitParameter("name");
		String age = config.getInitParameter("age");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		pw.println("<html><body>");
		pw.println("<h1>name : " + name + "</h1>");
		pw.println("<h1>age : " + age + "</h1>");
		pw.println("</body></html>");
		*/
		
		/* ④ 『webl.xml』에 <init-param> 추가 후 */
		ServletConfig config = getServletConfig();
		
		String name = config.getInitParameter("name");
		String age = config.getInitParameter("age");
		
		// 서블릿이 제공하는 컨텐츠 관리 객체
		ServletContext context = getServletContext();
		String type = context.getInitParameter("type");
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		pw.println("<html><body>");
		pw.println("<h1>name : " + name + "</h1>");
		pw.println("<h1>age : " + age + "</h1>");
		
		pw.println("<h1>type : " + type + "</h1>");
		
		pw.println("</body></html>");
		
	}
	
	
	
}
