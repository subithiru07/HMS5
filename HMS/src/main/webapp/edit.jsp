<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=number], input[type=date] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;

}

input[type=submit] {
  background-color: #002366;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

input[type=submit]:hover {
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
select {
    height: 50px;
    width: 100%;
    color: white;
    background-color: #002366;

}

option {
    color: white;
}
</style>

<div class="container">
<center><h1>Update MedicalStock</h1>
<%String name = (String)request.getParameter("name");
String  q=(String)request.getParameter("q");
String c = (String)request.getAttribute("c");  
String p =(String) request.getAttribute("p");%>
<h2><%out.println(name); %></h2>

<form action="edit/medicalstock" method="post">
<table><tr><td>
Medicine Name:</td><td><%=name %><input type="hidden" value="<%=name%>" name="medicinename"><br> </td></tr>
<tr><td>Quantity:</td><td><input type="number" name="quantity" value="<%=q%>"><br></td></tr>

<tr><td><label for="component">Component</label></td>
<td><select name="components" id="Component">
<option value="Antibiotic Drugs">Antibiotic </option>
<option value="Antifungal Drugs">Antifungal Drugs </option>
<option value="Anti Infective Agent">Anti Infective Agent </option>
<option value="Anti HIV drugs">Anti HIV drugs </option>
<option value="Antiviral">Antiviral</option>
<option value="AntiMalarial Drugs">AntiMalarial Drugs </option>
<option value="Anti Allergic Drug">Anti Allergic Drug </option>
<option value="Antibacterial Drugs">Antibacterial Drugs </option>
</select><br></td></tr>
<tr><td>Manufacturingdate:</td><td><input type="date" name="manufacturingdate"><br></td></tr>
<tr><td>Expirydate:</td><td><input type="date" name="expirydate"><br></td></tr>
<tr><td>Price:</td><td><input type="number" name="price"><br></td></tr>
<tr><td>   </td> <td><input type="submit" value="update"></td></tr>
</form>
</div>
</center>
</head>