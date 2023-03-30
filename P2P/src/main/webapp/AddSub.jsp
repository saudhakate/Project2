<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUBJECT</title>

<style>
* {
  box-sizing: border-box;
}
.button {
  background-color: #ffffff;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.row {
  margin:5px;
}
  
.column {
  float: right;
  width: 50%;
   padding-left: 100px;
  padding-right: 100px;
  padding-top: 50px;
}
/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
table {
  border-collapse: separate;
  border-spacing: 0;
  width: 100%;
  border: 1px outlet #ddd;
}
th, td {
  text-align: center;
  padding: 16px;
}
tr:nth-child(even) {
  background-color: #ffffff;
}
</style>
<jsp:include page="Links.jsp"/>
</head>
<body>

<form name="frmsub" method="post" action="SubFun.jsp">

<div class="row">
  <div class="column">
<table width="75%" border="1">


	<tr>
		<td>Subject ID : </td>
		<td><input type="text" name="subid" required/></td>
	</tr>
	<tr>
		<td>Subject name : </td>
		<td><input type="text" name="subname" required/></td>
	</tr>
	
	
	<tr>
		<td><input type="submit" value="Add Subject" class="button"></td>
		<td><input type="reset" value="Clear" class="button"/></td>
	</tr>
	<tr>
	<td colspan="2">
	
	<%
	if(session.getAttribute("info")!=null)
	{
		String str = (String)session.getAttribute("info");
		%>
		<p> <%=str %></p>
		<% 
		
	}
	%>
	</td>
	</tr>

</table>
  </div>
   <div class="column">
   <table width="75%" border="1">

	<tr>
	<th>Subject ID</th>
	<th>Subject Name</th>
	<th>Operations</th>

	</tr>
	
<%
	SubOperation subop = new SubOperation();
	List<Subjects> subinfo = subop.ShowAllSub();
	
	for(Subjects sub : subinfo)
	{
		%>
		<tr>
		<td><%=sub.getSubid()%></td>
		<td><%=sub.getSubname()%></td>
		<td><a href="DeleteSubject.jsp?subid=<%=sub.getSubid() %>"  >Delete</a></td>
	
	

		</tr>
		
		<%
		
		
		
	}
%>
</form>
</body>
</html>