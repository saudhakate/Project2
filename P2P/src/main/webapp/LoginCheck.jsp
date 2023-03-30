<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uname = request.getParameter("Username");
	String pwd = request.getParameter("password");
	
	if(uname.equals("Saurabh")&& pwd.equals("Saurabh"))
	{
		response.sendRedirect("AdminDashboard.jsp");
		
	}
	else
	{
		response.sendRedirect("Welcome.jsp");
		
	}
			
%>