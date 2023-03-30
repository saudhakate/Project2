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
<title>STUDENT DETAILS</title>


<style>
* {
  box-sizing: border-box;
}
.row {
  margin:5px;
}
  
.column {
  float: right;
  width: 50%;
  padding: 5px;
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
body{
	background-image: url("001.jpg");
	background-repeat: no-repeat;
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
</style>

<jsp:include page="Links.jsp"/>
</head>
<body class="body">
<form name="frmstd" method="post" action="StudentFun.jsp">

<div class="row">
  <div class="column">
<table width="25%" border="1">
	<tr>
		<td>Student RollNo : </td>
		<td><input type="text" name="stdroll" required/></td>
	</tr>
	<tr>
		<td>Student Name : </td>
		<td><input type="text" name="stdname" required/></td>
	</tr>
	<tr>
		<td>Student Class: </td>
		<td><input type="text" name="sclass" required/></td>
	</tr>
	
	<tr>
		<td><input type="submit" value="Add Student" class="button"></td>
		<td><input type="reset" value="Clear Form" class="button"/></td>
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
	<th>Student RollNumber</th>
	<th>Student Name</th>
	<th>Student ClassID</th>
	<th>Operations</th>
	</tr>
<%
	StudentOperation stdd = new StudentOperation();
	List<Student> stdinfo = stdd.ShowAllStd();
	
	for(Student std : stdinfo)
	{
		%>
		<tr>
		<td><%=std.getStdroll() %></td>
		<td><%=std.getStdname() %></td>
		<td><%=std.getStdclsid() %></td>
		<td><a href="DeleteStudnet.jsp?stdroll=<%=std.getStdroll() %>"  >Delete</a></td>

		</tr>
		
		<% 
	}
	
%>

</table>
  </div>
</div>
</form>
</body>
</html>
