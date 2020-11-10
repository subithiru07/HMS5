<%@page import=" java.time.format.DateTimeFormatter"%>
<%@page import  ="java.time.LocalDateTime"   %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=text], input[type=number] ,input[type=date]{
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
<script type="text/javascript">
function msg()
{
	alert("Patient has been admitted successfully.");

	}

// When the user scrolls the page, execute myFunction 
window.onscroll = function() {myFunction()};

function myFunction() {
  var winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  var height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  var scrolled = (winScroll / height) * 100;
  document.getElementById("myBar").style.width = scrolled + "%";
}


</script>
<%DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDateTime now = LocalDateTime.now();%>
<body>
<center>

<div id="id01" class="w3-modal w3-animate-opacity">
    <div class="w3-modal-content w3-card-4">
      <header class="w3-container w3-green"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-large w3-display-topright">&times;</span>
        <h2>Successfully Admitted..!</h2>
      </header>
      <div class="w3-container" >
        <p>Patient  has been admitted to the Hospital..!</p>
        
      </div>
      <footer class="w3-container  w3-green" >
        <p></p>
      </footer>
    </div>
  </div>
  </div>

<div class="header">
<h1>Admission</h1>
<div class="progress-container">
    <div class="progress-bar" id="myBar"></div>
  </div>  
</div><br><br><br><br>

<div class="container">
<form action="admission" method="get" onsubmit="document.getElementById('id01').style.display='block'">
<table>
<tr><td><b>Patient Name:</b></td><td><input type="text" name="patientname" placeholder="Eneter name" pattern="[A-Za-z]{1,32}" title="Name should be alphabet within 32 characters"><br></td></tr>
<tr><td><b>Age:</b></td><td><input type="number" name="age" placeholder="Enter age" min="1"><br></td></tr>
<tr><td><b>Phone Number:</b></td><td><input type="text" name="phonenumber" placeholder="Enter phone number" title="Phone number should be numeric"pattern="[789][0-9]{9}"><br></td></tr>
<tr><td><b>Illness:</b></td><td><input type="text" name="illness" placeholder="Eg.cold,fever."><br></td></tr>
<tr><td><b>Date:</b></td><td><input type="date" id="txtDate" name="date" min="<%=dtf.format(now)%>"><br></td></tr>

<tr><td><label for="time"><b>Time:</b></label></td>
  <td><select name="time" id="Time">
  <option value="9:00am to 12:00pm">9:00am to 12:00pm </option>
  <option value="2:00pm to 5:00pm">2:00pm to 5:00pm </option>
  <option value="6:00pm to 9:00pm">6:00pm to 9:00pm </option>
  <option value="11:00pm to 2:00am">11:00pm to 2:00am </option>
  <option value="4:00am to 7:00am">4:00am to 7:00am </option>
</select></td></tr>
<!-- Spl :<input type="text" name="spl"><br> -->
<tr><td><b><label for="specialist">Specialist:</label></b></td>
  <td><select name="spl" id="specialist">
    
    <option value="Audiologist">Audiologist</option>
    <option value="Cardiologist">Cardiologist</option>
    <option value="Cardiothoracic surgeon">Cardiothoracic surgeon</option>
    <option value="Dentist">Dentist</option>
    <option value="Endocrinologist">Endocrinologist</option>
    <option value="ENT">ENT</option>
    <option value="Gynaecologist">Gynaecologist </option>
    <option value="Neurologist">Neurologist</option>
    <option value="Oncologist">Oncologist</option>
    <option value="Orthopaedic surgeon">Orthopaedic surgeon</option>
    <option value="Paediatrician">Paediatrician</option>
    <option value="Psychiatrists">Psychiatrists</option>
    <option value="Pulmonologist">Pulmonologist</option>
    <option value="Radiologist">Radiologist </option>
    
</select></td></tr>
<tr><td><b><label for="Status">Status:</label></b></td>
  <td><select name="status" id="status"><br>
  <option value=" ">  </option>
    <option value="admitted">Admitted</option>
    <option value="discharge">Discharge</option>
  </select><br></td>
<tr><td><b><label for="FloorNumber">Floor:</label></b></td>
  <td><select name="floornumber" id="floornumber">
  <option value=" ">  </option>
    <option value="FF">FirstFloor</option>
    <option value="SF">SecondFloor</option>
    <option value="TF">ThirdFloor</option>
    <option value="FF">FourthFloor</option>
  </select></td></tr>
  <tr><td><b><label for="RoomNumber">RoomNumber:</label></b></td>
  <td><select name="roomnumber" id="roomnumber">
  
    <option value="101">101</option>
    <option value="102">102</option>
    <option value="103">103</option>
    <option value="104">104</option>
  </select><br></td></tr>
 <tr><td> </td> <td><input type="submit" value="Admit"></td></tr>
 </table>
 </form>
</body>

</div>
</center>  


</html>