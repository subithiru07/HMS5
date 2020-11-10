<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
input[type=submit] {
  background-color: #002366;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 10%;
}
input[type=date], input[type=password],input[type=number] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}
</style>
</head>

<%String name=(String)request.getParameter("data");
request.setAttribute("name", name); %>
<%out.print(name); %>
<center>
<h1>Select the date to view Appoitment list</h1>
<form action="doctor/appointment" method="post">
<input type="hidden" name="name" value="<%=name %>">
<input type="date" name="date">
<input type="submit" value="view">

</form>
</center>
</html>