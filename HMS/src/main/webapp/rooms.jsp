<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Room Details</h1>
<form action="room.html" method="post">
PatientName:<input type="text" name="patientname"><br>
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
    <option value=101">101</option>
    <option value="102">102</option>
    <option value="103">103</option>
    <option value="104">104</option>
  </select><br>
  <label for="Availability">Availability:</label>
  <select name="availability" id="availability"><br>
    <option value="yes">YES</option>
    <option value="no">NO</option>
  </select><br>
  <input type="submit" value="Submit">
 </form>



</body>
</html>