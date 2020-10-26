<h1>Add Prescription</h1>
<%String name = (String)request.getParameter("name");
String dname= (String)request.getParameter("dname");%>
<h2></h2>
<center>
<form action="prescription/add.html" method="get">
Doctor Name:<%out.println(dname); %><input type="hidden" name="doctorname"  value="<%=dname%>"><br>
Patient Name:<%out.println(name); %><input type="hidden" name="patientname" value="<%=name%>"><br>
Patient Age:<input type="text" name="patientage"><br>
Patient Gender:<input type="text" name="patientgender"><br><br><br>
Medicine:<input type="text" name="medicine">  Medicine Quantity:<input type="text" name="medicinequantity"><br>
Medicine:<input type="text" name="medicine1"> Medicine Quantity:<input type="text" name="medicinequantity1"><br>
Medicine:<input type="text" name="medicine2"> Medicine Quantity:<input type="text" name="medicinequantity2"><br>
Medicine:<input type="text" name="medicine3"> Medicine Quantity:<input type="text" name="medicinequantity3"><br>
Medicine:<input type="text" name="medicine4"> Medicine Quantity:<input type="text" name="medicinequantity4"><br>

<input type="submit" value="add">

</form>
</center>