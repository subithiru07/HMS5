<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
select {
    height: 50px;
    width: 100%;
    color: white;
    background-color: #002366;
}

option {
    color: white;
}
h8{
font-size:150%;}
</style>
<script type="text/javascript">
function msg()
{
	alert("New pharmacist has been add, now pharmacist can login.");

	}
function addRows(){ 
alert(" ");
	var table = document.getElementById('emptbl');
	var rowCount = table.rows.length;
	var cellCount = table.rows[0].cells.length; 
	var row = table.insertRow(rowCount);
	for(var i =0; i <= cellCount; i++){
		var cell = 'cell'+i;
		cell = row.insertCell(i);
		var copycel = document.getElementById('col'+i).innerHTML;
		cell.innerHTML=copycel;
		
	}
}
function deleteRows(){
	alert(" ");
	var table = document.getElementById('emptbl');
	var rowCount = table.rows.length;
	if(rowCount > '2'){
		var row = table.deleteRow(rowCount-1);
		rowCount--;
	}
	else{
		alert('There should be atleast one row');
	}
}




</script>

<div class="container">

<%String name = (String)request.getParameter("name");
String dname= (String)request.getParameter("dname");%>
<h2></h2>


<form action="http://localhost:8989/HMS/test.jsp"  onsubmit="msg()">
<h8><b>Doctor Name:<%out.println(dname); %></b></h8><input type="hidden" name="doctorname"  value="<%=dname%>"><br>
<h8><b>Patient Name:<%out.println(name); %></b></h8><input type="hidden" name="patientname" value="<%=name%>"><br>
<center>
<table id="emptbl">
<h1>Add Prescription</h1>
<tr><td><b>Patient Age:</b></td><td><input type="text" name="patientage"></td>
<!-- Patient Gender:<input type="text" name="patientgender"><br> -->
<td><b>Gender<b></b></td><td><input type="radio" id="male" name="patientgender" value="male">  <label for="male">Male</label> <input type="radio" id="female" name="patientgender" value="female"><label for="female">Female</label><br></td></tr>
<!-- Medicine:<input type="text" name="medicine">   -->
<tr><td id="col0"><label for="medicine"><b>Medicine1</b></label> </td>
<td id="col1"><select name="medicine[]" id="Medicine">
<option value="Amoxicillin">Amoxicillin </option>
<option value="Aspirin">Aspirin </option>
<option value="Atrovastatin">Atrovastatin </option>
<option value="Azithromycin"> Azithromycin</option>
<option value="Bisoprolol"> Bisoprolol</option>
<option value="Buprenorphine">Buprenorphine </option>
<option value="Cefalexin">Cefalexin </option>
<option value="Cetirizine">Cetirizine </option>
<option value="Chlorphenamine">Chlorphenamine </option>
<option value="Ciprofloxacin">Ciprofloxacin </option>
<option value="Diclofenac">Diclofenac</option>
<option value="Doxycycline">Doxycycline </option>
<option value="Erythromycin">Erythromycin </option>
<option value="Fluconazole">Fluconazole </option>
<option value="Fybogel">Fybogel </option>
<option value="Glyceryl Trinitrate">Glyceryl Trinitrate </option>
<option value="Ibuprofen">Ibuprofen </option>
<option value="Isotretinoin gel">Isotretinoin gel </option>
<option value="Metronidazole">Metronidazole </option>
<option value="Morphine">Morphine </option>
<option value="Nicrandil">Nicrandil </option>
<option value="Paracetamol">Paracetamol </option>
<option value="Paroxetine">Paroxetine </option>
<option value="Ranitidine">Ranitidine </option>
<option value="Thaimine">Thaimine</option>
<option value="Valproic acid">Valproic acid </option>
<option value="Vitamin B">Vitamin B </option>
<option value="Zolpidem">Zolpidem </option>
</select></td>
<td id="col2"><b>Medicine Quantity:</b></td ><td id="col3"  ><input type="number"  name="medicinequantity[]" min="1"><br></td>
</tr>
</table>
<table>
<tr><td><input type="button" value="Add Row" onclick="addRows()" /></td> 
			<td><input type="button" value="Delete Row" onclick="deleteRows()" /></td> 
			<td>    <td><td><input type="submit" value="Add"></td></tr>
</table>

</form>
</center>
</div>
</head>
</html>