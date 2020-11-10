<!DOCTYPE html> 
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">

<head></head>
<body>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

		alert("Pharmacist has been added successfully, now Pharmacist can login");

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
	
<center>
<div id="id01" class="w3-modal w3-animate-opacity">
    <div class="w3-modal-content w3-card-4">
      <header class="w3-container w3-green"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-large w3-display-topright">&times;</span>
        <h2>Successfully Added..!</h2>
      </header>
      <div class="w3-container" >
        <p>New Pharmacist has been added to the Hospital..!</p>
        
      </div>
      <footer class="w3-container  w3-green" >
        <p>Now Pharmacist can login..!</p>
      </footer>
    </div>
  </div>
<h1>Add New Pharmacist</h1>
<div class="progress-container">
    <div class="progress-bar" id="myBar"></div>
  </div>  
</div><br>
<div class="container">
<form action="pharmacist/add.html" method="post" onsubmit="document.getElementById('id01').style.display='block'">
<div style="color:red" id="msg"></div>
<table>
<tr><td><b>Name:</b></td><td><input type="text" name="name"  placeholder="Enter name" pattern="[A-Za-z]{1,32}" title="Name should be alphabetic within 32 characters" required ><br></td></tr>
<tr><td><b>Phone Number:</b></td><td><input type="text" name="phonenumber" placeholder="Enter phone number" title="Phone number should be numeric"pattern="[789][0-9]{9}"required required><br></td></tr>
<tr><td><b>Email Id:</b></td><td><input type="text" name="emailid" placeholder="Enter email id"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  title="Value should be in the email id  format." required><br></td></tr>
<tr><td><b>Password:</b></td><td><input type="password" name="password" id="Password"  placeholder="Enter password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required></td></tr>
<tr>
<td><b>Confirm Password:</b></td><td><input type="password"   onkeyup="Val()" id="Confirmpassword" placeholder="Enter confirm password" name="confirmpassword" required></td>
</tr><tr><td></td><td><input type="submit" value="Add"></td></tr>
</table>
</form>
</div>
</center>
</body>
</html>