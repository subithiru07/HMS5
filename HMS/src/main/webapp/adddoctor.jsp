<%@page import=" java.time.format.DateTimeFormatter"%>
<%@page import  ="java.time.LocalDateTime"   %>
<!DOCTYPE html> 
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>

body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=text], input[type=password],input[type=number],input[type=date] {
  width: 150%;
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
  width: 13%;
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
    width: 150%;
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
function Val(){
	
	var pass= document.getElementById("Password").value;
	
	var cpass= document.getElementById("Confirmpassword").value;
	if(pass==cpass){
		document.getElementById("msg").innerHTML="";
		}
	if(pass!=cpass){
		
	document.getElementById("msg").innerHTML="Password not match with Confirm Password";
		}
	}
function msg()
{
	alert("New doctor has been added, now doctor can login.");
}
function on() {
	  document.getElementById("overlay").style.display = "block";
	}

	function off() {
	  document.getElementById("overlay").style.display = "none";
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
</head>
<body>

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


	

	
<%DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDateTime now = LocalDateTime.now();%>

<div class="header">

<h1>Add New Doctor</h1>
<div class="progress-container">
    <div class="progress-bar" id="myBar"></div>
  </div>  
</div><br>

<div class="container">
<form action="doctor/add.html" method="get" onsubmit="document.getElementById('id01').style.display='block'" >
<table>
<tr>
<td><lable><b>Name</b></lable> </td><td><input type="text"  name="name" placeholder="Enter name" pattern="[A-Za-z]{1,32}" title="Name should be alphabetic within 32 characters" required></td><tr><td><lable><b>Phone Number</b></lable></td><td>  <input type="text" class="w3-input" name="phonenumber" placeholder="Enter phone number" title="Phone number should be numeric"pattern="[789][0-9]{9}"required></td></tr>
<br>
</tr>
<tr>
<tr><td><lable><b>Email Id</b></lable></td><td><input type="text"  name="emailid" placeholder="Enter email id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Value should be in the email id  format."required></td></tr><tr><td><label for="department" required><b>Specialist</b></label></td>
<!-- Department<input type="text" name="department"><br> -->
   <td> <select name="department" id="specialist">
    <option value="Audiologist">Audiologist</option>
    <option value="Cardiologist">Cardiologist</option>
    <option value="Cardiothoracic surgeon">Cardiothoraci surgeon</option>
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
    
</select>
</td>
</tr>
<tr><td> <p><b>Gender</b></p></td><td> <input type="radio" id="male" name="gender" value="male"><label for="male">Male</label></td><td><input type="radio" id="female" name="gender" value="female"><label for="female">Female</label></td></tr><br>
<tr><td><label for="password"><b>Password</b></label></td>
<td><input type="password" name="password" id="Password"   placeholder="Enter password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></td></tr>
 <div style="color:red" id="msg">
  </div><label><b>
<tr><td><b> Confirm Password</b></label></td><td><input type="password"   placeholder="Enter confirm password"onkeyup="Val()" id="Confirmpassword" class="w3-input"name="confirmpassword" required></td></tr>

<!-- working time<input type="text" name="availabletiming"><br> -->
<tr><td><lable><b>Date</b></lable><td><input type="date" name="date"  min="<%=dtf.format(now)%>"required></td></tr>
<tr><td><label for="availabletiming"><b>Time</b></label></td>
  <td><select name="availabletiming" id="Time">
  <option value="9:00am to 12:00pm">9:00am to 12:00pm </option>
  <option value="2:00pm to 5:00pm">2:00pm to 5:00pm </option>
  <option value="6:00pm to 9:00pm">6:00pm to 9:00pm </option>
  <option value="11:00pm to 2:00am">11:00pm to 2:00am </option>
  <option value="4:00am to 7:00am">4:00am to 7:00am </option>
</select></td></tr>
<tr><td><lable><b>Count</b></lable></td><td><input type="number" name="count" required placeholder="Enter assigning patients number" min="1"><br></td></tr>
<tr><td><td><input type="submit" value="Add"></tr>
 </table>
 
</form>
</div>
</center>
</body>
</html>