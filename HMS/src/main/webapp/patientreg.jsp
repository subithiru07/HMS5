<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<style>

body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}

input[type=text], input[type=password],input[type=number] {
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
	//alert("find");
	
	var pass= document.getElementById("Password").value;
	
	var cpass= document.getElementById("Confirmpassword").value;
	if(pass==cpass){
		document.getElementById("msg").innerHTML="";
		}
	if(pass!=cpass){
		
	document.getElementById("msg").innerHTML="Password not match with Confirm password";
		}
}

function msg()
{
	alert("Your registeration has been successful, please login.");

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
</body>


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
        <p>Please login with username and password..!</p>
      </footer>
    </div>
  </div>
</div>
<div class="header">
<h1>Add Patient</h1>
<div class="progress-container">
    <div class="progress-bar" id="myBar"></div>
  </div>  
</div><br><br><br><br>

<div class="container">
<form action="patient/add" method="post" onsubmit="document.getElementById('id01').style.display='block'">
<div style="color:red" id="msg"></div> <br> 
<table>
<tr><td>Name:</td><td>           <input type="text" name="username" placeholder="Enter name" pattern="[A-Za-z]{1,32}" title="Name should be alphabet within 32 characters" required></td>
<tr><td>Password:</td>       <td><input type="password" name="password" placeholder="Enter password" id="Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td></tr>
<tr><td>Confirm Password:</td><td><input type="password" placeholder="Enter confirm password" onkeyup="Val()" id="Confirmpassword" required></td>
<tr><td>Email Id: </td>   <td>      <input type="text" name="emailid" placeholder="Enter email id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Value should be in the email id  format."required></td></tr>
<tr><td>Phone Number: </td>    <td>     <input type="text" name="phonenumber" placeholder="Enter phone number" title="Phone number should be numeric"pattern="[789][0-9]{9}"required></td></tr>
<tr><td>Address:</td>    <td>    <input type="text" name="address" placeholder="Eg.No:3, Main road, Chennai"required></td></tr>
<tr><td>Age:  </td>      <td>    <input type="number" name="age" placeholder="Enter age"min="1"required></td></tr>


<tr><td><lable>Gender</lable>  <td><input type="radio" id="male" name="gender" value="male">
  <label for="male">Male</label>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Female</label><br></td><td></td><td><input type="submit" value="Add"></td></tr>
</table></form>
</div>
</center>
</html>
