<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/global.css">
    </head>
    <body class="home-background">
        <div class="container-fluid">

            <div class="row head">
                <div class="col-sm-4 col-sm-push-4">
                    <img src="img/logo.png" alt="Humber Schedule" id="logo">
                </div>
            </div>
            <!--
                Error's to be displayed in the row below.
            -->
            <div class="row errors">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <!--
                    	Check for error session error variable and display it if not null
                    -->
                    <!--
                    	JSP goes here
                    -->
                </div>
                <div class="col-sm-4"></div>
            </div>
            <!--
                 Error's to be displayed in the row below.
            -->
            <!-- Form Row -->
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4 form">
                   <div class="container-fluid">
                       <div class="row">
                           <div class="col-sm-2"></div>
                           <div class="col-sm-8">
                                <form action="Login" method="post" id="login-form">
                                    <!--form data-->
                                        <br>
                                        <label for="username" class="form-field">Username</label>
                                        <input type="text" name="username" placeholder="Username" id="username" class="form-field" required><br>
                                        <label for="password" class="form-field">Password</label>
                                        <input type="password" name="password" placeholder="PASSWORD" id="password" class="form-field" required style="text-transform: none;"><br>
                                        <!--form data-->
                                        <input type="submit" name="login" value="Login" id="submit" class="form-field btn btn-primary">
                                        <br>
                                </form>
                           </div>
                           <div class="col-sm-2"></div>
                       </div>
                   </div>
                </div>
                <div class="col-sm-4"></div>
            </div>
            <!-- Form Row -->

        </div>
    </body>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</html>
