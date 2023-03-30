<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>


<%
		String eno = request.getParameter("teaid");
		TeacherOperation TeaOp = new TeacherOperation();
		
		
		String res = TeaOp.DeleteTea(Integer.parseInt(eno));
		
		if(res.equals("Success"))
			response.sendRedirect("AddTeacher.jsp");
		
%>