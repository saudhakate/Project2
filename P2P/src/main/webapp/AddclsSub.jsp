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
<title>ASSIGN SUBJECT CLASS</title>
<style>
* {
  box-sizing: border-box;
}
.row {
 margin:50px;
}
  
.column {
  float: right;
  width: 50%;
  padding-left: 100px;
  padding-right: 100px;
  padding-top: 50px;
}

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
.button {
  background-color: #ffffff;
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>


<jsp:include page="Sublink.jsp"/>
</head>
<body>
<form name="frmass" method="post" action="AssignclsSubFun.jsp">
<div class="row">
  <div class="column">
<table width="75%" border="1">

	<tr>
		<td>Class ID : </td>
		<td><input type="text" name="clsid" required/></td>
	</tr>
	
	<tr>
		<td>Subject ID : </td>
		<td><input type="text" name="subid" required/></td>
	</tr>
	
	<tr>
		<td><input type="submit" value="Assign Sub" class="button"></td>
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
	<th>Class ID</th>
	<th>SubjectID</th>
	<th>Operations</th>
	</tr>
	
<%
	AssignOperation assop = new AssignOperation();
	List<Assign> assinfo = assop.ShowAllAssignClsSub();
	
	for(Assign ass : assinfo)
	{
		%>
		<tr>
	
		<td><%=ass.getClassid() %></td>
		<td><%=ass.getSubid() %></td>
		<td><a href="DeleteAssignSubCls.jsp?clsid=<%=ass.getClassid() %>"  >Delete</a></td>
		
		<%
	}
%>
</table>
  </div>
</div>
</form>

</body>
</html>