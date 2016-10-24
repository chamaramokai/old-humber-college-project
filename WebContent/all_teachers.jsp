<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
        <title>All Teachers</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/stylesheet.css">
        <link rel="stylesheet" href="css/animate.css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-aNUYGqSUL9wG/vP7+cWZ5QOM4gsQou3sBfWRr/8S3R1Lv0rysEmnwsRKMbhiQX/O" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="header">
                    <div class="col-sm-2"></div>
                    <h1 class="page-header col-sm-8">Teachers</h1>
                    <div class="col-sm-2"></div>
                </div>
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <table class="table table-bordered table-responsive">
                        <thead style="background: #2196f3;color: #e3f2fd;" >
                            <tr>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>User Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%=session.getAttribute("response")%>
                        </tbody>
                    </table>
                    </div>
                <div class="col-sm-2"></div>

            </div>
        </div>
    </body>
</html>