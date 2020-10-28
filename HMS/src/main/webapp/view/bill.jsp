<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Bill" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}

input[type=button ] {
  background-color: #002366;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
}

input[type=button]:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 12%;
  border-radius: 10%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<center>
<div class="container">


<%Bill B= (Bill)request.getAttribute("data");%>
Name:<%=B.getName() %><br>
DoctorName:<%=B.getDoctorName()%><br>
Illness :<%=B.getIllness() %><br>
Phno:<%=B.getPhno() %> <br>
Total<%=B.getTotal()%>  <br>                                     
		
<table border=1 color="#002366">
<tr>
<th><b>Medicine</b>
<th><b>Quantity</b></th>
<th><b>Rate/Unit</b></th>
<th><b>Room_Rent</b></th>
<th><b>Doctor_Fee</b></th>
<th><b>Diet_Service</b></th>
<th><b>Lab_Service</b></th>

</tr>
<tr>
<td><%=B.getMedicinename1() %><br><%=B.getMedicinename2() %><br><%=B.getMedicinename3() %><br><%=B.getMedicinename4() %>
<br><%=B.getMedicinename4() %></td>
<td><%=B.getQuantity1() %><br><%=B.getQuantity2() %><br><%=B.getQuantity3() %><br><%=B.getQuantity4()%><br><%=B.getQuantity5()%></td>
<td><%=B.getPrice1() %><br><%=B.getPrice2() %><br><%=B.getPrice3() %><br><%=B.getPrice4() %><br><%=B.getPrice5() %></td>


<td><%=B.getRooom_rent() %></td>
<td><%=B.getConsultation_service() %></td>
<td><%=B.getDeit_service() %></td>
<td><%=B.getLab_service()  %></td>
</tr>
</table>
<b>Total    :<%=B.getTotal()%> </b><br>

<input type="button" value="pay"/>

</div>
</center>
</head>
</html>