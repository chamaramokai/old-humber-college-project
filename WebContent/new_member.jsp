<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
        <title>New Member</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/stylesheet.css">
        <link rel="stylesheet" href="css/animate.css">

    </head>
    <body>
        <div class="container-fluid">
        <div class="row">
            <div class="header">
                <div class="col-sm-2"></div>
                 <h1 class="page-header col-sm-8">Add New Person</h1>
                <div class="col-sm-2"></div>
            </div>
            <div class="col-sm-2"></div>
            <form method="post" action="NewMember" id="newMember_info">
            <section class="col-sm-8">
                <fieldset>
                    <legend>Add Information</legend>
					
						<% 	if(session.getAttribute("result") != null)
							{
								out.println("<div class='jumbotron'>" + session.getAttribute("result") + "</div>");
								
							}
						%>
					
                    <div class="form-group">
                        <label class="label label-primary" for="role">Role</label>
                        <select id="role" name="role" class="form-control animated bounceInRight" required>
                            <option value="teacher" selected>Teacher</option>
                            <option value="student">Student</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="label label-info form-control animated bounceInLeft">First Name</label><br>
                        <input type="text" name="firstName" placeholder="First Name" class="form-control animated bounceInRight" required>
                    </div>
                    <div class="form-group">
                        <label class="label label-info form-control animated bounceInLeft">Last Name</label><br>
                        <input type="text" name="lastName" placeholder="Last Name" class="form-control animated bounceInRight">
                    </div>
                    <div class="form-group">
                        <label class="label label-info form-control animated bounceInLeft">User Name</label><br>
                        <input type="text" name="userName" placeholder="User Name" class="form-control animated bounceInRight" required>
                    </div>
                 <!--   <div class="form-group">
                        <label class="label label-info form-control animated bounceInLeft">Email</label><br>
                        <input type="text" name="email" placeholder="xyz@abc.com" class="form-control animated bounceInRight">
                    </div>-->

                    <div class="form-group">
                        <button type="submit" class="btn-primary btn-lg">Add Member</button>
                        <button type="reset" onclick="document.getElementById('newMember_info').reset();" class="btn-warning btn-lg">Clear</button>
                    </div>
                </fieldset>
            </section>
                </form>
            <div class="col-lg-2"></div>

        </div>
    </div>
    </body>
</html>