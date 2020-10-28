<html>
<head>
</head>
<body>
<style>

body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 30%;
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
  width: 10%;
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
<form action="patient/add" method="post">
Name:           <input type="text" name="username"><br>
Password:       <input type="password" name="password" id="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br>
<div style="color:red" id="msg"></div> <br> 
ConfrimPassword:<input type="password" onkeyup="Val()" id="Confirmpassword"><br>
Email:          <input type="text" name="emailid"><br>
Phone:          <input type="text" name="phonenumber"><br>
Address:        <input type="text" name="address"><br>
Age:            <input type="text" name="age"><br>


<lable>Gender</lable>  <input type="radio" id="male" name="gender" value="male">
  <label for="male">Male</label>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Female</label><br>
<input type="submit" value="add"><br>
</form>
</center>
</html>
