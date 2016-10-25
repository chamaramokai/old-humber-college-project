<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
    <head>
        <title>
            <!--Student's name goes here-->
            <!--Get's users name from session variable and set it-->
            <!--JSP Code here-->
        </title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="css/global.css">
    </head>
    <body>
        <div class="container-fluid">
            <!--Header Begining-->
                <div class="row header-background">
                    <div class="col-sm-4">
                        <img src="img/logo.png" alt="Humber Schedule" id="logo">
                    </div>
                </div>
                <div class="row">
                    <div class="container-fluid">
                        <div class="row">
                            <nav class="navbar navbar-default">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        </button>
                                    </div>
                                    <div id="navbar" class="navbar-collapse collapse">
                                        <ul class="nav navbar-nav">
                                            <li><a href="#Home">Home</a></li>
                                            <li><a href="#account_settings">Account Settings</a></li>
                                        </ul>
                                        <ul class="nav navbar-nav navbar-right">
                                            <li><form action="Logout">
													<input type="submit" value="Logout">
												</form><!--<a href="#logout">Logout</a>--></li>
											      
                                        </ul>
                                    </div><!--/.nav-collapse -->
                                </div><!--/.container-fluid -->
                            </nav>
                        </div>
                    </div>
                </div>
            <!--Header end-->
        </div>
    </body>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</html>