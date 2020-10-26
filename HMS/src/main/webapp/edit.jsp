<h1>Update MedicalStock</h1>
<%String name = (String)request.getParameter("name"); %>
<h2><%out.println(name); %></h2>

<form action="edit/medicalstock" method="post"><br>
Medicine Name:<input type="hidden" value="<%=name%>" name="medicinename"><br>
Quantity:<input type="text" name="quantity"><br>
Component:<input type="text" name="components"><br>
Manufacturingdate:<input type="date" name="manufacturingdate"><br>
Expirydate:<input type="date" name="expirydate"><br>
Price:<input type="text" name="price"><br>
<input type="submit" value="update">
</form>