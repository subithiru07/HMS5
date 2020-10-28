
<%String name=(String)session.getAttribute("name");%>
<center>
<h1>Select the date to view Appoitment list</h1>
<form action="doctor/appointment" method="post">
<input type="hidden" name="name" value="<%=name %>">
<input type="date" name="date">
<input type="submit" value="view">

</form>
</center>