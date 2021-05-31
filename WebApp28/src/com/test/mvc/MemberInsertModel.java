package com.test.mvc;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberInsertModel
{
	public String process(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException, ClassNotFoundException, SQLException
	{
		String result = "";
		
		request.setCharacterEncoding("UTF-8");
		
		// 데이터 수신
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		dto.setName(name);
		dto.setTel(tel);
		dto.setEmail(email);
				
		MemberDAO dao = new MemberDAO();
		dao.add(dto);
		
		
		dao.close();
		
		result = "WEB-INF/view/MemberInsert.jsp";
		
		return result;
	}
}
