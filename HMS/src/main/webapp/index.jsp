
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

#footer div h2{
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
 .wrapper {
    min-height: 50%;
    position: relative;
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
  
  
  html {
  box-sizing: border-box;
}

*, *:before, *:after  {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: turquoise;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

@media screen and (max-width: 350px) {
  .column {
    width: 90%;
    display: block;
  }
}


  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 31%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards 
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}*/
.flip-card {
box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner{
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner  {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #002366;
  color: white;
  transform: rotateY(180deg);
}

.fip {
  
  align-content: center;
}
</style>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
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
<div class="about-section">
  

<center>
<div class="fip">

<h2>Our Latest Technology</h2>


<div class="row">
  <div class="column">
     <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="https://www.straitstimes.com/sites/default/files/styles/article_pictrure_780x520_/public/articles/2020/03/30/md-ventilators-3003.jpg?itok=Pqhjoxfz&timestamp=1585564710" alt="Avatar" style="width:100%;height:100%;">
    </div>
    <div class="flip-card-back">
      <h1>Portable Ventilator</h1><br>
      
      
    </div>
  </div>
</div>
</div>

  <div class="column">
    <div class="card">
       <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="https://industry.asianhhm.com/articles/surgical-safety1.jpg" alt="Avatar" style="width:100%;height:100%;">
    </div>
    <div class="flip-card-back">
     
      <H1>Refurbished Ventilator</H1> 
      
    </div>
  </div>
</div>
</div>
</div>
  
  
     <div class="column">
    <div class="card">
       <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="https://d35cnulyv0pa6p.cloudfront.net/products/images/2018/229291/edited_ots2.jpg?7FbksxEUNk2zGtrTZmVLkyG9_yQD0hHl=" alt="Avatar" style="width:100%;height:100%;">
    </div>
    <div class="flip-card-back">
      <h1>
Modular Operation Theatre Systems </h1> 
      
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>


</center>
</div>
</body>
</html>
<div id="footer">
  <div>
  <h2>For Hospital   <i class="fas fa-address-card" ></i></h2>
<!--   //<img src="" alt="hospital" style="width:20%;"> -->
    <h1><i class="fa fa-map-marker" style="font-size:18px;color:white">  Chennai,Tamilnadu,India</i></h1>
    <h1><i class="fa fa-phone" style="font-size:18px;color:white">       +91 9876543210</i><br></h1>
    <h1><i class="fa fa-envelope" style="font-size:18px;color:white">    info@peoplecare.in</i><br></h1>
   <h1> <a href="about.jsp"  style="color:Turquoise"><i class="fa fa-bookmark" style="font-size:18px;color:white">  About Us</i><br></a></h1>
    <h1><a href="#" style="color:Turquoise"> <i class="fa fa-user-md" style="font-size:18px;color:white"> Find Doctors</i><br></a></h1>
  </div><div>
    <h2>For Users  <i class="fa fa-user" ></i></h2>
    <STYLE>A {text-decoration: none;} </STYLE>
     <h1></h1><a href="patientlogin.jsp"  style="color:white"> <i class="fa fa-caret-right"></i>SignIn</a><br>
     <h1></h1><a href="patientlogin.jsp" style="color:white"> <i class="fa fa-caret-right"></i>SignUp</a><br>
     <h1></h1><a href="patientlogin.jsp" style="color:white"> <i class="fa fa-caret-right"></i>FAQ</a><br>
      <h1></h1><a href="patientlogin.jsp" style="color:white"> <i class="fa fa-caret-right"></i>Find Doctors</a><br>
      <h1></h1><a href="patientlogin.jsp" style="color:white"> <i class="fa fa-caret-right"></i>Find Pharmacy</a><br>
       
      <br>
    
  </div><div>
    <h2>For Doctors  <i class="fa fa-user-md"></i></h2>
     <h1></h1><a href="doctorlogin.jsp"  style="color:white"> <i class="fa fa-caret-right"></i>SignIn</a><br>
<!--       <h1></h1><a href="doctorlogin.jsp" style="color:white"> <i class="fa fa-caret-right"></i>SignUp</a><br> -->
      <h1></h1><a href="doctorlogin.jsp" style="color:white"> <i class="fa fa-caret-right"></i>FAQ</a>
      <br>
      
      <h2>Follow Us On</h2>
      <i class="fa fa-facebook-official" style="font-size:48px;color:Royalblue"></i> @Peoplecare
  </div>
   </div>



</body>
</html>
