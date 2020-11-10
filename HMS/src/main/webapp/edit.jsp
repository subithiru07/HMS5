<%@page import=" java.time.format.DateTimeFormatter"%>
<%@page import  ="java.time.LocalDateTime"   %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=number], input[type=date],input[type=text] {
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
#overlay {
  position: fixed;
  display: none;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(0,0,0,0.5);
  z-index: 2;
  cursor: pointer;
}

#text{
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 50px;
  color: white;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
}


.header {
  position: fixed;
  top: 0;
  z-index: 1;
  width: 100%;
  background-color: #f1f1f1;
}

.header h2 {
  text-align: center;
}

.progress-container {
  width: 100%;
  height: 8px;
  background: #ccc;
}

.progress-bar {
  height: 8px;
  background: #002366;
  width: 0%;
}

.content {
  padding: 100px 0;
  margin: 50px auto 0 auto;
  width: 80%;
}
</style>
<script>
   //When the user scrolls the page, execute myFunction 
    window.onscroll = function() {myFunction()};

function myFunction() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("myBar").style.width = scrolled + "%";
}
</script>
<body>
	
<%DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDateTime now = LocalDateTime.now();%>

<center>
<!--   <button onclick="document.getElementById('id01').style.display='block'" class="w3-button">Fade In Modal</button> -->

  <div id="id01" class="w3-modal w3-animate-opacity">
    <div class="w3-modal-content w3-card-4">
      <header class="w3-container w3-green"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-large w3-display-topright">&times;</span>
        <h2>Successfully Added..!</h2>
      </header>
      <div class="w3-container" >
        <p>New Doctor has been added to the Hospital..!</p>
        
      </div>
      <footer class="w3-container  w3-green" >
        <p>Now Doctor can login..!</p>
      </footer>
    </div>
  </div>
</div>
<div class="header">
<center><h1>Update MedicalStock</h1>
<%String name = (String)request.getParameter("name");
String  q=(String)request.getParameter("q");
String c = (String)request.getAttribute("c");  
String p =(String) request.getAttribute("p");%>
<h2><%out.println(name); %></h2>
<div class="progress-container">
    <div class="progress-bar" id="myBar"></div>
  </div>  
</div><br><br><br><br><br><br>


<div class="container">
<form action="edit/medicalstock" method="post" onsubmit="document.getElementById('id01').style.display='block'">
<table><tr><td>
Medicine Name:</td><td><input type="text" value="<%=name%>" name="medicinename" readonly="readonly"><br> </td></tr>
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
<tr><td>Expirydate:</td><td><input type="date" name="expirydate" min="<%=dtf.format(now)%>"><br></td></tr>
<tr><td>Price:</td><td><input type="number" name="price" min="1"><br></td></tr>
<tr><td>   </td> <td><input type="submit" value="update"></td></tr></table>
</form>
</div>

</center>

</body>

</head>