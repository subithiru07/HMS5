<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.ConfirmedAppointment" %>

<%List name= (List)request.getAttribute("name");
%>


 
<center>
<html>

<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">

body {font-family: "Times New Roman", Times, serif;}
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

tr:nth-child(even) {background-color: #63b2ff;}
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


</style>
<div class="navbar">
<a href="http://localhost:8989/HMS/view/doctorhome.jsp?data=<%=name%>">Back</a>
</div>
<body>

<center>
<table border=1>
<tr>
<th><b>Doctor name</b></th>
<th><b>Patient name</b></th>



<th><b>Illness</b></th>

<th><b>Date</b></th>

<th><b>Time</b></th>
<th><b>Action</b></th>




</tr>
<%List<ConfirmedAppointment> l=(List<ConfirmedAppointment>)request.getAttribute("data");
for(ConfirmedAppointment p:l){%>
<tr>
<td><b><%= p.getDoctorName() %><%request.setAttribute("name", p.getName());%> </b></td><%System.out.println(p.getName());%>
<td><b><%= p.getName() %> <%request.setAttribute("dname", p.getDoctorName());%></b></td><%System.out.println(p.getDoctorName());%>
<td><b><%= p.getIllness() %></b></td>


<td><b><%= p.getDate() %></b></td>
<td><b><%= p.getTime() %></b></td>


<%-- <td><a href="http://localhost:8989/HMS/addprescription.jsp?name=<%=p.getName()%>&dname=<%=p.getDoctorName() %>">Add</a>  --%>
<td><a href="http://localhost:8989/HMS/doctorwork.html?name=<%=p.getName()%>&dname=<%=p.getDoctorName()%>"  class="w3-btn w3-white">Add</a></td>
</tr>
<%} %>
</table>
</center>
</body>
</head>
</html>