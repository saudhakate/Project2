<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>


<%
		String eno = request.getParameter("subid");
		SubOperation SubOp = new SubOperation();
		
		
		String res = SubOp.DeleteSub(Integer.parseInt(eno));
		
		if(res.equals("Success"))
			response.sendRedirect("AddSub.jsp");
		
%>