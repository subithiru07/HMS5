<%String name = (String)session.getAttribute("data");
session.setAttribute("data", name); %>
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
</style>

<div class="navbar">




<a href="http://localhost:8989/HMS/patientlogin.jsp">Logout</a>

</div>

<center>
<p1>login as <%=name %></p1><br>
<form action="appointments/add" method="post">
<!-- Time:<input type="text" name="time"> -->
<label for="time">Time</label>
<select name="time" id="Time">
<option value="9.00am to 12.00pm">9.00am to 12.00pm </option>
<option value="2.00pm to 5.00pm">2.00am to 5.00pm </option>
<option value="6.00pm to 9.00pm">6.00pm to 9.00pm </option>
<option value="11.00pm to 2.00am">11.00pm to 2.00am </option>
<option value="4.00am to 7.00am">4.00am to 7.00am </option>
</select>
date:<input type="date" name="date">
<!-- Specialist:<input type="text" name="specialist"> -->
<label for="specialist">Specialist</label>
  <select name="specialist" id="specialist">
    
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
    <option value="Veterinarian">Veterinarian </option>
</select>

Illness:<input type="text" name="illness">
<input type="hidden" name="patientname" value="<%=name%>">

 

<input type="submit" value="add">
</form>
</center>
</head>
</html>