<%String name = (String)session.getAttribute("data");
session.setAttribute("data", name); %>
<%@page import=" java.time.format.DateTimeFormatter"%>
<%@page import  ="java.time.LocalDateTime"   %>
<%DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDateTime now = LocalDateTime.now();%>
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Times New Roman", Times, serif;
  margin: 0;
}

/* Style the header */
.header {
  padding: 50px;
  text-align: center;
  background: #FFFFFF;
  color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}

img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.navbar {
  overflow: hidden; /* Hide overflow */
  background-color: #002366; /* Dark background color */
}

/* Style the navigation bar links */
.navbar a {
  float: right; /* Make sure that the links stay side-by-side */
  display: block; /*Change the display to block, for responsive reasons (see below) */
  color: white; /* White text color */
  text-align: center; /* Center the text */
  padding: 14px 20px; /* Add some padding */
  text-decoration: none; /* Remove underline */
}



.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color:  turquoise;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: left;
  color: black;
  padding: 22px 35px;
  text-decoration: none;
  display: block;
  text-align: center;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

/* Column container */
.row {
  display: flex;
  flex-wrap: wrap;
}

/* Create two unequal columns that sits next to each other */
/* Sidebar/left column */
.side {
  flex: 30%; /* Set the width of the sidebar */
  background-color: #f1f1f1; /* Grey background color */
  padding: 20px; /* Some padding */
}

/* Main column */
.main {
  flex: 70%; /* Set the width of the main content */
  background-color: white; /* White background color */
  padding: 20px; /* Some padding */
}
/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
}

/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 700px)
 {
  .row {   
    flex-direction: column;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width:100%;
  }
  }
  input[type=text], input[type=password],input[type=number],input[type=date] {
  width: 150%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}

input[type=submit] {
  background-color: #002366;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

input[type=submit]:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 13%;
  border-radius: 10%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
select 
{
    height: 50px;
    width: 150%;
    color: white;
    background-color: #002366;
}

option {
    color: white;
}
  
  
  .p{
  text-align: left;
  }
  
  
  
  
  
  
  
  
</style>

<div class="navbar">




<a href="http://localhost:8989/HMS/patientlogin.jsp">Logout</a>

</div>
<div class="p">
<h3 align:"right">Login as <%=name %></h3></div>
<center>

<form action="appointments/add" method="post">
<!-- Time:<input type="text" name="time"> -->
<table>
<tr><td>
<label for="time">Time:</label></td>
  <td><select name="time" id="Time">
  <option value="9:00am to 12:00pm">9:00am to 12:00pm </option>
  <option value="2:00pm to 5:00pm">2:00pm to 5:00pm </option>
  <option value="6:00pm to 9:00pm">6:00pm to 9:00pm </option>
  <option value="11:00pm to 2:00am">11:00pm to 2:00am </option>
  <option value="4:00am to 7:00am">4:00am to 7:00am </option>
</select></td></tr>
<tr><td>Date:</td><td><input type="date" name="date" min="<%=dtf.format(now)%>"></td></tr>
<!-- Specialist:<input type="text" name="specialist"> -->
<tr><td><label for="specialist">Specialist:</label></td>
 <td> <select name="specialist" id="specialist">
    
    <option value="Audiologist">Audiologist</option>
    <option value="Cardiologist">Cardiologist</option>
    <option value="Cardiothoracic surgeon">Cardiothoracic surgeon</option>
    <option value="Dentist">Dentist</option>
    <option value="Endocrinologist">Endocrinologist</option>
    <option value="ENT">ENT</option>
    <option value="Gynaecologist">Gynaecologist </option>
    <option value="Neurologist">Neurologist</option>
    <option value="Oncologist">Oncologist</option>
    <option value="Orthopaedic surgeon">Orthopaedic surgeon</option>
    <option value="Paediatrician">Paediatrician</option>
    <option value="Psychiatrists">Psychiatrists</option>
    <option value="Pulmonologist">Pulmonologist</option>
    <option value="Radiologist">Radiologist </option>

</select></td></tr>

<tr><td>Illness:</td><td><input type="text" name="illness" placeholder="Eg.Cold,Fever"></td></tr>
<input type="hidden" name="patientname" value="<%=name%>">

 

<tr><td></td><td><input type="submit" value="Confirm Appointment"></td></tr>
</table>
</form>
</center>
</head>
</html>