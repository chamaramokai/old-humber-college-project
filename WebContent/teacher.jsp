<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
 	<%@include  file="includes/pageRedirect.jsp"%>
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
				<div class="col-sm-4">
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
							Action
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#schedule_exam">Schedule Exam</a></li>
							<li><a href="#view_scheduled">View Scheduled</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</html>