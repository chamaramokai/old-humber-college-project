<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
    <%@include  file="includes/pageRedirect.jsp"%> <!-- Add this line on top of all pages accept the login page to redirect if session is not set and no username found! -->
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>
            ${username}
        </title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/global.css">
    </head>

    <body>
        <div class="container-fluid">
			<%@include  file="includes/header.jsp"%>
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-header">
                        <h1> ${first}'s Timetable <br><small>Good Luck for your exams ${first} ${last} </small></h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <!-- Student Timetable displayer -->
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <!-- Table -->
                            <table class="table table-bordered table-hover table-condensed">
                            	<tr> <th>Course Code</th> <th>Room Number</th> <th>Date</th> <th>Start Time</th> <th>End Time</th> </tr>
								${data}
                            </table>
                        </div>
                    <!-- Displayer Above -->
                </div>
                <div class="col-sm-4"> </div>
            </div>
        </div>
    </body>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</html>