<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>

<%
	String teaid = request.getParameter("teaid");
	String teaname = request.getParameter("teaname");
	String teaemail = request.getParameter("teaemail");
	String teaphone = request.getParameter("teaphone");
	
	Teachers tea = new Teachers();
	
	tea.setTeaid(Integer.parseInt(teaid));
	tea.setTeaname(teaname);
	tea.setTeaemail(teaemail);
	tea.setTeaphone(Integer.parseInt(teaphone));
	
	TeacherOperation teaOp = new TeacherOperation();
	
	String str = teaOp.AddTea(tea);
	
	if(str.equals("Success"))
	{
		session.setAttribute("info", "Teacher Added Successfully......");
		response.sendRedirect("AddTeacher.jsp");
	}
	
	else
	{
		session.setAttribute("info", "Teacher Not Added");
		response.sendRedirect("AddTeacher.jsp");
	}
%>