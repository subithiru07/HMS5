<!DOCTYPE html> 
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>

</head>
<body>
<style>



</style>



<script>
function Val(){
	
	var pass= document.getElementById("Password").value;
	
	var cpass= document.getElementById("Confirmpassword").value;
	if(pass==cpass){
		document.getElementById("msg").innerHTML="";
		}
	if(pass!=cpass){
		
	document.getElementById("msg").innerHTML="password not match with confirm password";
		}
	}



	</script>
	</body>
	<center>
<div class="w3-container w3-blue">
<h1>Add new Doctor</h1>

<div class="container">
<form action="doctor/add.html" method="get" class="w3-container">
<lable><b>Name</b></lable>     <input type="text" class="w3-input" name="name"><lable><b>Phonenumber</b></lable>  <input type="text" class="w3-input" name="phonenumber">
<br>

<lable><b>Emailid</b></lable><input type="text" class="w3-input" name="emailid"><label for="department"><b>Specialist</b></label>
<!-- Department<input type="text" name="department"><br> -->
    <select name="department" id="specialist">
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
    <option value="Veterinarian">Veterinarian </option><br>
</select>

  <p><b>Gender</b></p> <input type="radio" id="male" name="gender" class="w3-input"value="male">  <label for="male">Male</label> <input type="radio" id="female" name="gender" class="w3-input"value="female">  <label for="female">Female</label><br>
<label for="password"><b>Password</b></label>
<input type="password" name="password" id="Password"  class="w3-input" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
  <div style="color:red" id="msg">
  </div><label><b>
  Confrim the password</b></label><input type="password"  class="w3-input" onkeyup="Val()" id="Confirmpassword" class="w3-input"name="confirmpassword" required><br>

<!-- working time<input type="text" name="availabletiming"><br> -->
<lable><b>date</b></lable><input type="date" name="date" class="w3-input">
<label for="availabletiming">Time</label>
  <select name="availabletiming" id="Time">
  <option value="9.00am to 12.00pm">9.00am to 12.00pm </option>
  <option value="2.00pm to 5.00pm">2.00am to 5.00pm </option>
  <option value="6.00pm to 9.00pm">6.00pm to 9.00pm </option>
<option value="11.00pm to 2.00am">11.00pm to 2.00am </option>
<option value="4.00am to 7.00am">4.00am to 7.00am </option>
</select>
<lable><b>count</b></lable> 
<input type="number" name="count" ><br>
<input type="submit" value="add" class="w3-input"><br>
</form>
</div></div>
</center>

</html>