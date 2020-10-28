<!DOCTYPE html> 
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head></head>
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
<div class="w3-container w3-blue">
<h1>Add Pharmacist</h1>
<form action="pharmacist/add.html" method="post">
Name:<input type="text" name="name" class="w3-input"><br>
Phonenumber:<input type="text" name="phonenumber" class="w3-input"><br>
EmailId:<input type="text" name="emailid" class="w3-input"><br>
Password:<input type="password" name="password" id="Password"  class="w3-input" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br>
<div style="color:red" id="msg"></div><br>
Confrim the password<input type="password" class="w3-input" class="w3-input" onkeyup="Val()" id="Confirmpassword" name="confirmpassword" required><br>
<input type="submit" value="add" class="w3-input">

</form>
</div>

</html>