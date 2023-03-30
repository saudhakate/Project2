<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.Dbconn.*" %>
<%@ page import="com.element.*" %>
<%@ page import="com.element.operation.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Learner's Academy</title>
 <link rel="stylesheet" href="./Style.css">
</head>
<body>


<div id="bg"></div>

<form style="text-align:center;" action="LoginCheck.jsp" method="post">
	<h1>Lerners Academy</h1>
        <h1 >Admin Login</h1>
    
        <div class="form-field" > 
            <input type="text" name="Username" placeholder="Username"/>
         </div>
         
       <div class="form-field" >
  
            <input type="password" name="password" placeholder="Password"/>
        </div>
        <div class="form-field">
            <input type="submit" name="Login" value="Login" class="btn" />
            <input type="reset" name="Reset" value="Clear" class="btn"/>
        </div>
        



</form>
</body>
</html>
