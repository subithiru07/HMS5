<%@page import="java.util.List" %>
<%@page import="com.dxc.hms.model.Bill" %>
<center>
<%Bill B= (Bill)request.getAttribute("data");%>
Name:<%=B.getName() %><br>
DoctorName:<%=B.getDoctorName()%><br>
Illness :<%=B.getIllness() %><br>
Phno:<%=B.getPhno() %> <br>
Total<%=B.getTotal()%>  <br>                                     
		
<table border=1>
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
<b>Total    :<%=B.getTotal()%> </b>
</center>