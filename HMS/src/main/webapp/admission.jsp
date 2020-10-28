<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<center>
<div class="container">

<h1>Admission</h1>
<body>
<form action="admission" method="get">
Patient name:<input type="text" name="patientname"><br>
Age:<input type="number" name="age"><br>
PhoneNumber:<input type="text" name="phonenumber"><br>
Illness:<input type="text" name="illness"><br>
Date:<input type="date" name="date"><br>

<label for="time">Time</label>
<select name="time" id="Time">
<option value="9.00am to 12.00pm">9.00am to 12.00pm </option>
<option value="2.00pm to 5.00pm">2.00am to 5.00pm </option>
<option value="6.00pm to 9.00pm">6.00pm to 9.00pm </option>
<option value="11.00pm to 2.00am">11.00pm to 2.00am </option>
<option value="4.00am to 7.00am">4.00am to 7.00am </option>
</select>
<!-- Spl :<input type="text" name="spl"><br> -->
<label for="specialist">Specialist</label>
  <select name="spl" id="specialist">
    
    <option value="Audiologist">Audiologist</option>
    <option value="Cardiologist">Cardiologist</option>
    <option value="Cardiothoracic surgeon">Cardiothoracic surgeon</option>
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
    <option value="Veterinarian">Veterinarian </option>
</select>
<label for="Status">Status</label>
  <select name="status" id="status"><br>
  <option value=" ">  </option>
    <option value="admitted">Admitted</option>
    <option value="discharge">Discharge</option>
  </select><br>
<label for="FloorNumber">FloorNumber:</label>
  <select name="floornumber" id="floornumber">
  <option value=" ">  </option>
    <option value="FF">FirstFloor</option>
    <option value="SF">SecondFloor</option>
    <option value="TF">ThirdFloor</option>
    <option value="FF">FourthFloor</option>
  </select><br>
  <label for="RoomNumber">RoomNumber:</label>
  <select name="roomnumber" id="roomnumber">
  <option value=" ">  </option>
    <option value="101">101</option>
    <option value="102">102</option>
    <option value="103">103</option>
    <option value="104">104</option>
  </select><br>
 <input type="submit" value="Admit">
 </form>
</body>

</div>
</center>  


</html>