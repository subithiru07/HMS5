<!DOCTYPE html> 
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head></head>
<body>
<style>
body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=text], input[type=password] {

  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 2px solid #ccc;
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
	</script>
	</body>
<center>
<h1>Add Pharmacist</h1>
<form action="pharmacist/add.html" method="post">
<div style="color:red" id="msg"></div>
<table>
<tr><td><b>Name:</b></td><td><input type="text" name="name"  required ><br></td></tr>
<tr><td><b>PhoneNumber:</b></td><td><input type="text" name="phonenumber"  required><br></td></tr>
<tr><td><b>EmailId:</b></td><td><input type="text" name="emailid" required><br></td></tr>
<tr><td><b>Password:</b></td><td><input type="password" name="password" id="Password"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td></tr>
<tr>
<td><b>Confirm Password:</b></td><td><input type="password"   onkeyup="Val()" id="Confirmpassword" name="confirmpassword" required></td>
<td><input type="submit" value="Add"></td></tr>
</table>
</form>
</center>
</html>