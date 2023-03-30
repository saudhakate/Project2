<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>


<%
	String subid = request.getParameter("subid");
	String subname = request.getParameter("subname");
	
	
	Subjects subss = new Subjects();
	
	subss.setSubid(Integer.parseInt(subid));
	subss.setSubname(subname);
	
	SubOperation Subo = new SubOperation();
	
	String str = Subo.Addsub(subss);
	
	if(str.equals("Success"))
	{
		session.setAttribute("info", "Subject Added Successfully......");
		response.sendRedirect("AddSub.jsp");
	}
	else
	{
		session.setAttribute("info", "Subject Not Added");
		response.sendRedirect("AddSub.jsp");
	}
%>