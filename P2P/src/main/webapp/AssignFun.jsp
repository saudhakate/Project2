<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>

<%
	String teaid = request.getParameter("teaid");
	String classid = request.getParameter("classid");
	String subid = request.getParameter("subid");
	
	Assign ass = new Assign();
	
	ass.setTeaid(Integer.parseInt(teaid));
	ass.setClassid(Integer.parseInt(classid));
	ass.setSubid(Integer.parseInt(subid));
	
	AssignOperation AssOp = new AssignOperation();
	
	String str = AssOp.Assign(ass);
	
	if(str.equals("Success"))
	{
		session.setAttribute("info", "Assign Successfully......");
		response.sendRedirect("Assin.jsp");
	}
	
	else
	{
		session.setAttribute("info", "Assign Not Possible.....");
		response.sendRedirect("Assin.jsp");
	}
%>