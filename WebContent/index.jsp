<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/stylesheet.css">
        <link rel="stylesheet" href="css/animate.css">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row header">
                <div class="col-sm-4"></div>
                <div class="col-sm-4 col-sm-push-1">
                   <img alt="Exam Scheduler" src="img/logo.png" >
                </div>
                <div class="col-sm-4"></div>
            </div>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <form action="Login" method="POST" spellcheck="true" class="animated flip">
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon" id="sizing-addon1">Username</span>
                            <input type="text" class="form-control" placeholder="Username" name="username" aria-describedby="basic-addon1" required>
                        </div>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon" id="sizing-addon1">Password</span>
                            <input type="password" class="form-control" placeholder="Password" name="password" aria-describedby="basic-addon1" required>
                        </div>
                        <br>
                            <div class="input-group button-div">
                                <input type="submit" class="form-control" aria-describedby="basic-addon1" value="Login">
                            </div>
                    </form>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>