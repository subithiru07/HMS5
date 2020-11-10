<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Bill" %>
<%@ page import="java.text.NumberFormat" %>
<%
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMaximumFractionDigits(2);
    nf.setMinimumFractionDigits(2);
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Times, serif;}
.bill {
border: 4px solid #002366;
}

input[type=text], input[type=password] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}

input[type=submit ] {
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
.contant{
align-content:  right;
}
</style>

            

<div class="bill">
<%Bill B= (Bill)request.getAttribute("data");%>
Name:<%=B.getName() %><br>
<div class="details">
DoctorName:<%=B.getDoctorName()%><br>
Illness :<%=B.getIllness() %><br>
</div>	
<div class="contact">
Phno:  <%=B.getPhno() %> <br>
Total: <%=nf.format(B.getTotal()) %>  <br> 
</div>
<center>

<div class="container">



                                    
	


</form>
</div>
</center>
<div class="bill">
<center>
<div class="w3-container">
  
<button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">View Bill</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Bill</h2>
      </header>
      <div class="w3-container">
      <%Bill Bq= (Bill)request.getAttribute("data");%>
Name:<%=Bq.getName() %><br>
<div class="details">
DoctorName:<%=Bq.getDoctorName()%><br>
Illness :<%=Bq.getIllness() %><br>
</div>	
<div class="contact">
Phno:  <%=Bq.getPhno() %> <br>
Total: <%=nf.format(Bq.getTotal()) %>  <br> 

<table border=1 color="#002366">
<tr>
<th><b>Medicine</b>
<th><b>Quantity</b></th>
<th><b>Rate/Unit</b></th>
<th><b>Days</b></th>
<th><b>Room_Rent</b></th>
<th><b>Doctor_Fee</b></th>
<th><b>Diet_Service</b></th>
<th><b>Lab_Service</b></th>

</tr>
<tr>
<td><%=B.getMedicinename1() %><br><%=B.getMedicinename2() %><br><%=B.getMedicinename3() %><br><%=B.getMedicinename4() %>
<br><%=B.getMegdicinename5() %></td>
<td><%=B.getQuantity1() %><br><%=B.getQuantity2() %><br><%=B.getQuantity3() %><br><%=B.getQuantity4()%><br><%=B.getQuantity5()%></td>
<td><%=B.getPrice1() %><br><%=B.getPrice2() %><br><%=B.getPrice3() %><br><%=B.getPrice4() %><br><%=B.getPrice5() %></td>

<td>   1  </td>
<td><%=B.getRooom_rent() %></td>
<td><%=B.getConsultation_service() %></td>
<td><%=B.getDeit_service() %></td>
<td><%=B.getLab_service()  %></td>
</tr>
</table><br>
<b>Total    :<%= nf.format(B.getTotal()) %> </b><br><br>
 <form action="http://localhost:8989/HMS/checkout.jsp">
<input type="submit" value="pay"/>       
      </div>
      <footer class="w3-container w3-teal">
        <p>Thank You</p>
      </footer>
    </div>
  </div>
</div>	
</div>
</center>
</head>
</html>