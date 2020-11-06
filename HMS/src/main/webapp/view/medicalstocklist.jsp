<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Medicalstock" %>
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

tr:nth-child(even) {background-color: #63b2ff;
}
a:link, a:visited {
  background-color: white;
  color: black;
  border: 2px #63b2ff;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color:#63b2ff;
  color: white;
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
<a href="http://localhost:8989/HMS/view/pharmacisthome.jsp">Back</a>
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
 
 <td><a href="http://localhost:8989/HMS/edit.jsp?name=<%=ms.getMedicinename()%>&q=<%=ms.getQuantity()%>&p=<%=ms.getPrice()%>&c=<%=ms.getComponents()%>">Edit</a> </td>







 </tr>
 <%} %>




 </table>

 </center>
 <a href="http://localhost:8989/HMS/view/pharmacisthome.jsp">Back</a>

 </body>

 </head>

 </html>