
<!DOCTYPE html>
<html lang="en">
<head>


<meta charset="UTF-8">
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
  footer1 {
  text-align: right;
  padding: 20px 495px;
  background-color: grey;
  color: white;
}
#footer {
    display: table;
    max-width: 160em;
   padding: 50px;
    padding: 0.5em;
    margin: 0 auto;
    border: 0.062em solid #151515;
   /* background-color: turquoise;*/
    background-color: #002366;
    color: white;
 }

#footer div {
    display: table-cell;
    width: 37.333%;
   
    padding: 2em;
    text-align: left;
}


#footer div h2 {
display: table-cell;
    width: 36.333%;
    padding: 2em;
    text-align: left;
 }

#footer div:nth-of-type(2) {
    border-right: 0.062em dotted #999;
    border-left: 0.062em dotted #999;
 }

#footer div:nth-of-type(3) {
display: table-cell;
    width: 36.333%;
    padding: 2em;
    text-align: left;
 
  }
</style>
</head>
<body>
<div class="navbar">
<!--   <a href="addadmin.jsp" >Add</a> -->
  <a href="patientlogin.jsp"  class="right">Book Appointment</a>
  <div class="dropdown">
    <button class="dropbtn">Login
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
<a href="adminlogin.jsp" >Login as Admin</a>


<a href="doctorlogin.jsp">Login as Doctor</a>
<a href="pharmacistlogin.jsp">Login as Pharmacist</a>
<a href="receptionistlogin.jsp">Login as Receptionist</a>
 </div>
 </div> 
</div>


<div class="header">
<img src="https://cdn.logojoy.com/wp-content/uploads/2018/05/30162353/1159-768x591.png" alt="Paris" style="width:50%;">
  
</div>



</body>
</html>
