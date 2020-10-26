
<!DOCTYPE html>
<html lang="en">
<head>

<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Style the header */
.header {
  padding: 80px;
  text-align: center;
  background: white;
  color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
  overflow: hidden;
  background-color: #34aeeb;
}

/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
  float: right;
}

/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
</style>
</head>
<body>
<div class="navbar">
  <a href="addadmin.jsp" >Add</a>
<a href="adminlogin.jsp" >Login as Admin</a>
<a href="patientreg.jsp" >Registeration here</a>
<a href="patientlogin.jsp"  class="right">Login as patient</a>
<a href="doctorlogin.jsp">Login as Doctor</a>
<a href="pharmacistlogin.jsp">Login as Pharmacist</a>
<a href="receptionistlogin.jsp">Login as Receptionist</a>
  
</div>


<div class="header">
<img src="https://cdn.logojoy.com/wp-content/uploads/2018/05/30162353/1159-768x591.png" alt="Paris" style="width:50%;">
  
</div>



</body>
</html>
