<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
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
			<!--
				Questions: Do we want to show teachers scheduled exam status?? I mean when this page loads up teacher has not yet choosen the action so the page is empty.
				Should we fill up the page with some meaningfull info like courses taught by the teacher and which once are already scheduled and stuff or we will make one of the activity default.
			-->
		</div>
	</body>
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</html>