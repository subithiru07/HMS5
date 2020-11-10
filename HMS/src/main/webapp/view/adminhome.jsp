<!DOCTYPE html>
<html lang="en">
<head>
<%-- <%out.println(session.getAttribute("sess")); %> --%>

<%if(session.getAttribute("sess")=="_INVALID_"){
	response.sendRedirect("http://localhost:8989/HMS/adminlogin.jsp");
} 
else{%>

<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
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
</head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<body>
<div class="navbar">

<center>
<h1><font color="white">Admin Home <i class="fa fa-home"></i></font></h1>

<!-- <a href="addpatient.jsp">Add Patient</a> -->

<a href="http://localhost:8989/HMS/adminlogout.html"><i class="fa fa-sign-out"></i>Logout</a>
<div class="dropdown">
    <button class="dropbtn">Add
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
<a href="http://localhost:8989/HMS/adddoctor.jsp"><i class="fa fa-fw fa-user"></i>Doctor</a>
<a href="http://localhost:8989/HMS/addpharmacist.jsp"><i class="fa fa-fw fa-user"></i>Pharmacist</a>
<a href="http://localhost:8989/HMS/addreceptionist.jsp"><i class="fa fa-fw fa-user"></i>Receptionist</a>
</div>
</div>

<div class="dropdown">
    <button class="dropbtn">List
     <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
<a href="http://localhost:8989/HMS/viewbydate.jsp"><i class='fas fa-book-medical'></i> Doctor</i></a>
<a href="http://localhost:8989/HMS/patient/list.html"><i class='fas fa-book-medical'></i> Patient</a>
<a href="http://localhost:8989/HMS/pharmacist/list.html"><i class='fas fa-book-medical'></i> Pharmacist</a>
<a href="http://localhost:8989/HMS/receptionist/list.html"><i class='fas fa-book-medical'></i> Receptionist</a>
<a href="http://localhost:8989/HMS/appointments/list.html"><i class='fas fa-book-medical'></i> Appointments</a>
</div>

</div>
</div>
<div class="header">
<img src="https://cdn.logojoy.com/wp-content/uploads/2018/05/30162353/1159-768x591.png" alt="Paris" style="width:50%;">
  
</div>
</center>

</body>
</html>
<%}%>