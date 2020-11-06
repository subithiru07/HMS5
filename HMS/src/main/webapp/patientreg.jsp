<html>
<head>
</head>
<body>
<style>

body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=text], input[type=password] {
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
</style>

<script>
function Val(){
	//alert("find");
	
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
<h1>Add Patient</h1>
<table>
<form action="patient/add" method="post">
<div style="color:red" id="msg"></div> <br> 
<tr><td>Name:</td><td>           <input type="text" name="username"></td>
<tr><td>Password:</td>       <td><input type="password" name="password" id="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"></td></tr>
<tr><td>ConfrimPassword:</td><td><input type="password" onkeyup="Val()" id="Confirmpassword"></td>
<tr><td>Email: </td>   <td>      <input type="text" name="emailid"></td></tr>
<tr><td>Phone: </td>    <td>     <input type="text" name="phonenumber"></td></tr>
<tr><td>Address:</td>    <td>    <input type="text" name="address"></td></tr>
<tr><td>Age:  </td>      <td>    <input type="text" name="age"></td></tr>


<tr><td><lable>Gender</lable>  <td><input type="radio" id="male" name="gender" value="male">
  <label for="male">Male</label>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Female</label><br></td><td><input type="submit" value="add"></td></tr>
</form></table>
</center>
</html>
