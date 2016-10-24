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
        <div class="container-fluid">
            <div class="row header">
                <div class="col-sm-4">
                    <!--Placeholder for a logo -->
                </div>
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="rfloat animated bounceInLeft">
                        <a href="">Account</a>
                        <span>|</span>
                        <a href="" onClick="">Logout</a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <h1><%=session.getAttribute("name")%>'s Schedule</h1>
                    <table class="table table-stripped">
                        <tr><th>Course</th><th>Room</th><th>Time</th></tr>
                        <tr><td>CPAN 200</td><td>L117</td><td>11:20PM</td></tr>
                       
                    </table>
                </div>
                <div class="col-sm-4">
                    
                </div>
            </div>
        </div>
    </body>
</html>