<!DOCTYPE html> 
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head>

</head>
<body>
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


</style>



<script>
function Val(){
	
	var pass= document.getElementById("Password").value;
	
	var cpass= document.getElementById("Confirmpassword").value;
	if(pass==cpass){
		document.getElementById("msg").innerHTML="";
		}
	if(pass!=cpass){
		
	document.getElementById("msg").innerHTML="Password not match with confrim password";
		}
	}



	</script>
	</body>
	<center>

<h1>Add New Doctor</h1>

<div class="container">
<form action="doctor/add.html" method="get">
<table>
<tr>
<td><lable><b>Name</b></lable> </td><td><input type="text"  name="name" placeholder="Enter name" required></td><tr><td><lable><b>Phonenumber</b></lable></td><td>  <input type="text" class="w3-input" name="phonenumber" placeholder="Enter phone number"required></td></tr>
<br>
</tr>
<tr>
<tr><td><lable><b>Email Id</b></lable></td><td><input type="text"  name="emailid" placeholder="Enter emailid" required></td></tr><tr><td><label for="department" required><b>Specialist</b></label></td>
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
    <option value="Veterinarian">Veterinarian </option><br>
</select>
</td>
</tr>
<tr><td> <p><b>Gender</b></p></td><td> <input type="radio" id="male" name="gender" value="male"><label for="male">Male</label></td><td><input type="radio" id="female" name="gender" value="female"><label for="female">Female</label></td></tr><br>
<tr><td><label for="password"><b>Password</b></label></td>
<td><input type="password" name="password" id="Password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></td></tr>
 <div style="color:red" id="msg">
  </div><label><b>
<tr><td><b> Confirm Password</b></label></td><td><input type="password"   onkeyup="Val()" id="Confirmpassword" class="w3-input"name="confirmpassword" required></td></tr>

<!-- working time<input type="text" name="availabletiming"><br> -->
<tr><td><lable><b>Date</b></lable><td><input type="date" name="date"  required></td></tr>
<tr><td><label for="availabletiming"><b>Time</b></label></td>
  <td><select name="availabletiming" id="Time">
  <option value="9:00am to 12:00pm">9:00am to 12:00pm </option>
  <option value="2:00pm to 5:00pm">2:00am to 5:00pm </option>
  <option value="6:00pm to 9:00pm">6:00pm to 9:00pm </option>
  <option value="11:00pm to 2:00am">11:00pm to 2:00am </option>
  <option value="4:00am to 7:00am">4:00am to 7:00am </option>
</select></td></tr>
<tr><td><lable><b>Count</b></lable></td>
<td><input type="number" name="count" required placeholder="Enter asginning patients number"><br>
<input type="submit" value="Add"  ><br></td></tr></table>
</form>
</div>
</center>

</html>