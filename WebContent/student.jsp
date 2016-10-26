<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
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
                        <h1> ${username} <br><small>Timetable for ${username} </small></h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-8">
                    <!-- Student Timetable displayer -->
                        <div class="panel panel-default">
                            <!-- Default panel contents -->
                            <div class="panel-heading"></div><!--Heading will be the program code if available, if not then we can use it to display if the schedule is available or not-->
                            <div class="panel-body">
                                <!--<p></p>--> <!--P tag availble for a messge that requires attention-->
                            </div>

                            <!-- Table -->
                            <table class="table table-bordered table-hover table-condensed">
                                <tr>
                                    <th>Course Code</th>
                                    <th>Room Number</th>
                                    <th>Date</th>
                                    <th>Start Time</th>
                                    <th>End Time</th>
                                </tr>
                                <!--Input Data here if the data is available i.e. if the exams are scheduled-->
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