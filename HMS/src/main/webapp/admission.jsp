<center>
<html>

<h1>Admission</h1>
<body>
<form action="admission" method="get">
Patient name:<input type="text" name="patientname"><br>
Age:<input type="number" name="age"><br>
PhoneNumber:<input type="text" name="phonenumber"><br>
Illness:<input type="text" name="illness"><br>
Date:<input type="date" name="date"><br>
time:<input type="text" name="time"><br>
Spl :<input type="text" name="spl"><br>
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
    <option value="rn">101</option>
    <option value="SF">102</option>
    <option value="TF">103</option>
    <option value="FF">104</option>
  </select><br>
 <input type="submit" value="Admit">
 </form>
</body>

</html>
</center>  