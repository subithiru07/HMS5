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

</style>

 <body>



<center>

 <table border=1>

 <tr>

 <th><b>medicinename</b></th>

 <th><b>quantity</b></th>

 <th><b>components</b></th>

 <th><b>manufacturingdate</b></th>

 <th><b>expirydate</b></th>
 <th><b>price</b></th>
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

 </body>

 </head>

 </html>