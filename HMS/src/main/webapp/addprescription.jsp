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

<div class="container">

<%String name = (String)request.getParameter("name");
String dname= (String)request.getParameter("dname");%>
<h2></h2>


<form action="prescription/add.html" method="get">
<h8><b>Doctor Name:<%out.println(dname); %></b></h8><input type="hidden" name="doctorname"  value="<%=dname%>"><br>
<h8><b>Patient Name:<%out.println(name); %></b></h8><input type="hidden" name="patientname" value="<%=name%>"><br>
<center>
<table>
<h1>Add Prescription</h1>
<tr><td><b>Patient Age:</b></td><td><input type="text" name="patientage"></td>
<!-- Patient Gender:<input type="text" name="patientgender"><br> -->
<td><b>Gender<b></b></td><td><input type="radio" id="male" name="patientgender" value="male">  <label for="male">Male</label> <input type="radio" id="female" name="patientgender" value="female"><label for="female">Female</label><br></td></tr>
<!-- Medicine:<input type="text" name="medicine">   -->
<tr><td><label for="medicine"><b>Medicine1</b></label> </td>
<td><select name="medicine" id="Medicine">
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
<td><b>Medicine Quantity:</b></td><td><input type="number" name="medicinequantity"><br></td>
<!-- Medicine:<input type="text" name="medicine1"> -->
<tr><td><label for="medicine1"><b>Medicine2</b></label> </td>
<td><select name="medicine1" id="Medicine1">
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
<td><b>Medicine Quantity:</b></td><td><input type="number" name="medicinequantity1"><br></td></tr>
<tr><td><label for="medicine2"><b>Medicine3</b></label> </td>
<td><select name="medicine2" id="Medicine2">
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
<td><b>Medicine Quantity:</b></td><td><input type="number" name="medicinequantity2"><br></td></tr>


<!-- Medicine:<input type="text" name="medicine2">  -->
<tr><td><label for="medicine3"><b>Medicine4</b></label> </td>
<td><select name="medicine3" id="Medicine3">
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
<td><b>Medicine Quantity:</b></td><td><input type="number" name="medicinequantity3"><br></td></tr>


<!-- Medicine:<input type="text" name="medicine3">  -->
<!-- Medicine:<input type="text" name="medicine4"> -->
<tr><td><label for="medicine4"><b>Medicine5</b></label> </td>
<td><select name="medicine4" id="Medicine4">
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
<td><b>Medicine Quantity:</b></td><td><input type="number" name="medicinequantity4"><br></td></tr>

<tr><td>    <td><td><input type="submit" value="Add"></td></tr>
</table>

</form>
</center>
</div>
</head>
</html>