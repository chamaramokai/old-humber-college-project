<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include  file="includes/pageRedirect.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Account Settings</title>
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
                        <h1> Account Settings</h1>
                    </div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<form class="form" id="form" action="" method="post">
						<label for="fname" class="form-field">Change First Name</label>
                        <input type="text" name="fname" placeholder="${first}" id="fname" class="form-field"><br>
                        <label for="lname" class="form-field">Change Last Name</label>
                        <input type="text" name="lname" placeholder="${last}" id="lname" class="form-field"><br>
                        <label for="password" class="form-field">Change Account Password</label>
                        <input type=password name="password" placeholder="Password" id="password" class="form-field"><br>
                         <label for="c_password" class="form-field">Confirm Password</label>
                        <input type=password name="c_password" placeholder="Confirm Password" class="form-field"><br>
                        <input type="submit" name="login" value="Modify" id="submit" class="form-field btn btn-primary">
					</form>
				</div>
				<div class="col-sm-6"></div>
			</div>
		</div>
		
	</body>
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</html>