<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
        <title><%=session.getAttribute("name")%></title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/stylesheet.css">
        <link rel="stylesheet" href="css/animate.css">
    </head>
    <body>
        <div class="row header">
                <div class="col-sm-4">
                    <!--Placeholder for a logo -->
                </div>
                <div class="col-sm-6"></div>
                <div class="col-sm-4">
                    <div class="rfloat animated bounceInLeft">
                        <a href="">Account</a>
                        <span>|</span>
                        <a href="" onClick="<% session.invalidate(); %>">Logout</a>
                    </div>
                </div>
            </div>
        <div class="row">
        	<div class="col-sm-2"></div>
        	<div class="col-sm-9">
           		 <a href="new_member.jsp" class=" btn btn-danger">Add Member</a>
		         <a href="GetTeachers" class=" btn btn-danger">View Teachers</a>
		         <a href="GetStudents" class=" btn btn-danger">View Students</a>
            </div>
        	<div class="col-sm-1"></div>
        </div>
    </body>
</html>