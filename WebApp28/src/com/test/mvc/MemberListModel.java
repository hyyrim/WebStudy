package com.test.mvc;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberListModel
{
	public String process(HttpServletRequest request, HttpServletResponse response)
	{
		String result = "WEB-INF/view/MemberList.jsp";
		
		return result;
	}
}
