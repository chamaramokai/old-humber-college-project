<!DOCTYPE html>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% ArrayList<Map> courses = (ArrayList)request.getAttribute("courses"); 
	ArrayList<Map> rooms = (ArrayList)request.getAttribute("rooms");
%>

<html lang="en">

<head>
    <title>New Exam</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/stylesheet.css">
    <link rel="stylesheet" href="css/animate.css">

</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="header">
            <div class="col-sm-2"></div>
            <h1 class="page-header col-sm-8">Add New Exam</h1>
            <div class="col-sm-2"></div>
        </div>
        <div class="col-sm-2"></div>
        <form method="post" action="Exam" id="new_exam">
            <section class="col-sm-8">
                <fieldset>
                    <legend>Add Exam Details</legend>

                    <div class="form-group">
                        <label class="label label-primary" for="course">Select Course</label>
                        <select id="course" name="course" class="form-control animated bounceInRight" required>
                            <% for(int i = 0 ; i< courses.size(); i++ ){ %>
                            	<option value="<%=(courses.get(i).get("COURSE_CODE"))%>"><%=(courses.get(i).get("COURSE_CODE"))%></option>
                          <%} %>  
                            
                        </select>
                    </div>
                      <div class="form-group">
                        <label class="label label-primary" for="rooms">Select Room</label>
                        <select id="rooms" name="rooms" class="form-control animated bounceInRight" required>
                            <% for(int i = 0 ; i< rooms.size(); i++ ){ %>
                            	<option value="<%=(rooms.get(i).get("ROOM_NO"))%>">
                            	<% out.print(rooms.get(i).get("ROOM_NO") + " - "+ (rooms.get(i).get("TYPE")));%>
                            	</option>
                          <%} %>  
                            
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label class="label label-info form-control">Date</label><br>
                        <input type="date" name="start_date" placeholder="YYYY-MM-DD" style="text-transform:uppercase" required="required" pattern="\d{4}-\d{2}-\d{2}">
                    </div>
                    <div class="form-group">
                        <label class="label label-info form-control">Start Time</label><br>
                        <input type="time" name="start_time" placeholder="HH:MM" style="text-transform:uppercase" required="required" pattern="^([01]?[0-9]|2[0-3]):[0-5][0-9]$">
                    </div>
                    
                    <div class="form-group">
                        <label class="label label-info form-control">End Time</label><br>
                        <input type="time" name="end_time" placeholder="HH:MM" style="text-transform:uppercase" required="required" pattern="^([01]?[0-9]|2[0-3]):[0-5][0-9]$">
                    </div>
					
                    <div class="form-group">
                        <button type="submit" class="btn-primary btn-lg">Add to Schedule</button>
                        <button type="reset" onclick="document.getElementById('new_exam').reset();" class="btn-warning btn-lg">Clear</button>
                    </div>
                </fieldset>
            </section>
        </form>
        <div class="col-lg-2"></div>

    </div>
</div>
</body>
</html>