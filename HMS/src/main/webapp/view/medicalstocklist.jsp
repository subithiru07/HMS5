<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Medicalstock" %>
<%List name= (List)request.getAttribute("data");%>

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
	float:right;
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

tr:nth-child(even) {background-color: #63b2ff;
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



 

 <body>
 <div class="navbar">
<a href="http://localhost:8989/HMS/view/pharmacisthome.jsp">Back</a>
</div>

<center>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for Medicine name.." title="Type in a name">


 <table id="myTable">

 <tr>

 <th><b>Medicinename</b></th>

 <th><b>Quantity</b></th>

 <th><b>Components</b></th>

 <th><b>Manufacturingdate</b></th>

 <th><b>Expirydate</b></th>
 <th><b>Price</b></th>
 <th><b>Edit</b><th>
 </tr>

 <%List<Medicalstock> l=(List<Medicalstock>)request.getAttribute("data");
 for(Medicalstock ms:l){%>
 <tr>

 
<td><b><%= ms.getMedicinename() %></b></td>
<td><b><%= ms.getQuantity() %></b>
 <td><b><%= ms.getComponents() %></b></td>

 <td><b><%= ms.getManufacturingdate() %></b></td>

 <td><b><%= ms.getExpirydate() %></b></td>
 <td><b><%= ms.getPrice() %></b></td>
 
 <td><a href="http://localhost:8989/HMS/edit.jsp?name=<%=ms.getMedicinename()%>&q=<%=ms.getQuantity()%>&p=<%=ms.getPrice()%>&c=<%=ms.getComponents()%>" class="w3-btn w3-white">Update</a> </td>







 </tr>
 <%} %>




 </table>

 </center>
 



 </head>
  </body>

 </html>