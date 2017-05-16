<%-- 
    Document   : reg
    Created on : May 16, 2017, 3:35:50 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <center>
        <h1>Register</h1>
        <form action="registration.jsp" method="post">
            Student Name: <input type="text" name="sname" >
            <br>
            <br>
            Username: <input type="text" name="uname" >
            <br>
            <br>
            Password: <input type="password" name="pwd">
            <br>
            <br>
            <input type="submit">
            <br>
            <br>
            Already registered? <a href="index.html">Login here!</a>  
            
        </form>
       </center> 
    </body>
</html>
