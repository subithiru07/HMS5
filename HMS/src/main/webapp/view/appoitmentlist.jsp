<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Appointments" %>

<%List name= (List)request.getAttribute("data");%>


 
<center>
<html>

<head>
<style type="text/css">
.menu{
	font-family:"Lucida Console";
	text-align:center;
	font-size:x-large;
	background-color: white;
	Border-color:#34aeeb;
	Border-style:groove;
	Border-width:Medium;
	width:100%;
	overflow:auto;
	text-align:center;
}
.menu a{
	float:left;
	padding:12px;
	color:#3483eb;
	text-decoration:none;
	font-size:17px;
	width:10%;
	text-align:center;
}
.menu a:hover{
	background-color:#34aeeb;
	text-align:center;
}
.menu a.active{
	background-color:white;
	text-align:center;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

input[type=submit] {
  background-color: #3399ff;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  Border-style:groove;
Border-width:Medium;
  border: groove;
  cursor: pointer;
  width: 60%;
}

input[type=submit]:hover {
  opacity: 0.8;
}
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

</style>
<body>
<div class="navbar">
<a href="http://localhost:8989/HMS/view/adminhome.jsp">Back</a>
</div>
<center>
<table border=1>
<tr>
<th><b>Patient name</b></th>
<th><b>Specialist</b></th>


<th><b>Illness</b></th>

<th><b>Date</b></th>

<th><b>Time</b></th>
<th><b>Action</b></th>
</tr>
<%List<Appointments> l=(List<Appointments>)request.getAttribute("data");
for(Appointments p:l){%>
<tr>
<td><b><%= p.getPatientname() %></b></td>
<td><b><%= p.getSpecialist() %></b></td>

<td><b><%= p.getIllness() %></b></td>
<td><b><%= p.getDate() %></b></td>
<td><b><%= p.getTime() %></b></td>
<form action="http://localhost:8989/HMS/appointments/make" method="get">

<input type="hidden" value="<%=p.getPatientname() %>"name="patientname">
<input type="hidden" value="<%=p.getSpecialist() %>"name="specialist">
<input type="hidden" value="<%=p.getIllness() %>"name="illness">
<input type="hidden" value="<%=p.getDate() %>"name="date">
<input type="hidden" value="<%=p.getTime() %>"name="time">
<input type="hidden" value="<%=p.getId() %>"name="appid">
<td>
<input type="submit" value="MakeAppointment">
<td>
</form>
</tr>
<%} %>
</table>
</center>
</body>
</head>
</html>