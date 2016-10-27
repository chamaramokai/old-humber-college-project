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
	
		<div class="panel-group" id="accordion">
		  <div class="panel panel-default">
			    <div class="panel-heading">
				      <h4 class="panel-title">
				        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
				        View Scheduled Exam</a>
				      </h4>
			    </div>
			    <div id="collapse1" class="panel-collapse collapse in">
			      <div class="panel-body">${data}</div>
			    </div>
		  </div>
			 <div class="panel panel-default">
				    <div class="panel-heading">
					      <h4 class="panel-title">
					        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
					        Schedule Exam</a>
					      </h4>
				    </div>
				    <div id="collapse2" class="panel-collapse collapse out">
				      <div class="panel-body"><%@include file="includes/new_exam.jsp" %></div>
				    </div>
			  </div>
		</div> 
		
	</body>
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
</html>