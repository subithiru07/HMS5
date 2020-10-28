<!DOCTYPE html> 
<html>

<head></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> 
<body>
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
<h1>Add Receptionist</h1>

<form action="receptionist/add.html" method="post">
Name:<input type="text" name="name" class="w3-input"><br>
PhoneNumber:<input type="text" name="phnnumber" class="w3-input"><br>
Email:<input type="text" name="email" class="w3-input"><br>
PassWord:<input type="password" name="password" id="Password" class="w3-input" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br>
<div style="color:red" id="msg"></div><br>
Confrim the password<input type="password"  class="w3-input" onkeyup="Val()" id="Confirmpassword" class="w3-input" required><br>
<input type="submit" value="add"  class="w3-input">
</form>
</div>

</center>
</html>