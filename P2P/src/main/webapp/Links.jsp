<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head style="background-image: url('001.jpg');">
<meta charset="UTF-8">

<style>
.button {
  background-color: #FF0000;
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
body{
  	padding: 25px;
	background-image: url("001.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
}
</style>

<h2 style=" text-align: center; font-size: 35px;">Lerner's Academy Admin Panel</h2>
<hr>
<table width="100%" style="background-image: url('001.jpg');">
<tr>
<td style="text-align:center">
	
	<a href="AdminDashboard.jsp" class="button">DashBoard</a>
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="Addclass.jsp" class="button">Classes</a>
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="AddSub.jsp" class="button">Subject's</a>
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="AddTeacher.jsp" class="button">Teacher's</a>
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="Sublink.jsp" class="button">Assign</a>
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="AddStudent.jsp" class="button">Student's</a>
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="ClassReport.jsp" class="button">Class Report</a>
	&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
	<a href="Welcome.jsp" class="button">Logout</a>
	
	
	<br>
	<hr>
</td>
</tr>
</table>
</head>
<body class="body">

</body>
</html>