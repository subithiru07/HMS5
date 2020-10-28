<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
body {
  font-family: "Times New Roman", Times, serif;
  margin: 0;
}

/* Style the header */
.header {
  padding: 50px;
  text-align: center;
  background: #FFFFFF;
  color: white;
}

/*Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}

img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.navbar {
  overflow: hidden; /* Hide overflow */
  background-color: #002366; /* Dark background color */
}

/* Style the navigation bar links */
.navbar a {
  float: right; /* Make sure that the links stay side-by-side */
  display: block; /*Change the display to block, for responsive reasons (see below) */
  color: white; /* White text color */
  text-align: center; /* Center the text */
  padding: 14px 20px; /* Add some padding */
  text-decoration: none; /* Remove underline */
}
</style>
</body>
</head>


<div class="navbar">


<a href="http://localhost:8989/HMS/index.jsp">Home</a>

</div>
<center>
<div class="container">
<h1>Receptionist Login</h1>
<div class="imgcontainer">
    <img src="https://cdn4.iconfinder.com/data/icons/medical-health-set-2-glyph/33/medical_receptionist-512.png" alt="Avatar" class="avatar">
  </div>

<form action="receptionist/login.html" method="post">
<label for="uname"><b>Username</b></label><input type="text" name="name" placeholder="Enter Username" ><br>
<label for="psw"><b>Password</b></label><input type="password" name="password" placeholder="Enter password"><br>
<input type="submit" value="login">
<input type="checkbox" checked="checked" name="remember">Remember me</label>
</form>
</div>
</center>

</html>