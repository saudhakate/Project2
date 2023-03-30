<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>

<%
	String clsid = request.getParameter("clsid");
	String clsname = request.getParameter("clsname");
	
	Classes cls = new Classes();
	
	cls.setClassid(Integer.parseInt(clsid));
	cls.setClassname(clsname);
	
	ClassOperations Cops = new ClassOperations();
	
	String str = Cops.Addcls(cls);
	
	if(str.equals("Success"))
	{
		session.setAttribute("info", "Class Added Successfully......");
		response.sendRedirect("Addclass.jsp");
	}
	
	else
	{
		session.setAttribute("info", "Class Not Added");
		response.sendRedirect("Addclass.jsp");
	}
	
	
%>