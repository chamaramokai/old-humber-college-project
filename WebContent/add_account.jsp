<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
    	if (session.getAttribute("role") != "ADMIN")
    	{
    		response.sendRedirect(session.getAttribute("role").toString().toLowerCase() + ".jsp");
    	}
    %>
<html lang="en">
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login</title>
    </head>
    <body class="home-background">
    <%@include  file="includes/header.jsp"%>
 
                                <form action="Adduser" method="post" id="Adduser-form">
                                        <br>
                                        <label for="username" class="form-field">Username</label>
                                        <input type="text" name="username" placeholder="Username" id="username" class="form-field" required><br>
                                        <label for="firstname" class="form-field">First Name</label>
                                        <input type="text" name="firstname" placeholder="firstname" id="firstname" class="form-field" required><br>
                                        <label for="lastname" class="form-field">Last Name</label>
                                        <input type="text" name="lastname" placeholder="lastname" id="lastname" class="form-field" required><br>
                                        <select name="role" form="Adduser-form">
 											 	<option value="ADMIN">ADMIN</option>
												<option value="TEACHER">TEACHER</option>
											  	<option value="STUDENT">STUDENT</option>
										</select>
                                        <input type="submit" name="Adduser" value="Adduser" id="submit" class="form-field btn btn-primary">
                                        <br>
                                        
                                </form>

    </body>
   
</html>
