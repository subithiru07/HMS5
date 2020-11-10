<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Admission" %>

<%List name= (List)request.getAttribute("data");%>


 
<center>
<html>

<head>

<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

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
  background-color: #3483eb;
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

tr:nth-child(even) {background-color: #63b2ff;}
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}



</style>
<body>
<H1>Admission List</H1>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">

<center>

<table id="myTable">
<tr>
<th><b>Patient Name</b></th>



<th><b>Illness</b></th>
<th><b>Age</b></th>
<th><b>Floor </b></th>

<th><b>Room Number</b></th>

<th><b>Phone Number</b></th>
<th><b>Status</b></th>
<th><b>Action</b></th>



</tr>
<%List<Admission> l=(List<Admission>)request.getAttribute("data");
for(Admission p:l){%>
<tr>
<td><b><%= p.getPatientname() %></b></td>


<td><b><%= p.getIllness() %></b></td>
<td><b><%= p.getAge() %></b></td>
<td><b><%= p.getFloornumber()%></b></td>
<td><b><%= p.getRoomnumber() %></b></td>
<td><b><%= p.getPhonenumber() %></b></td>
<td><b><%= p.getStatus() %></b></td>
<td> <form action=http://localhost:8989/HMS/generatebill.html" method="post">
<input type="hidden" value="<%=p.getPatientname()%>"name="patientname">
<input type="hidden" value="<%=p.getPhonenumber()%>"name="phno">
<input type="hidden" value="<%=p.getIllness() %>"name="illness">
<input type="submit" value="Generate Bill">
</form></td>


<%-- 
<input type="hidden" value="<%=p.getPatientname() %>"name="patientname">
<input type="hidden" value="<%=p.getSpecialist() %>"name="specialist">
<input type="hidden" value="<%=p.getIllness() %>"name="illness">
<input type="hidden" value="<%=p.getDate() %>"name="date">
<input type="hidden" value="<%=p.getTime() %>"name="time">
<input type="hidden" value="<%=p.getId() %>"name="appid">
<input type="submit" value="MakeAppointment">
</form> --%>
</tr>
<%} %>
</table>
</center>
</body>
</head>
</html>