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

<div class="container">

<%String name = (String)request.getParameter("name");
String dname= (String)request.getParameter("dname");%>
<h2></h2>
<center>
<h1>Add Prescription</h1>
<form action="prescription/add.html" method="get">
Doctor Name:<%out.println(dname); %><input type="hidden" name="doctorname"  value="<%=dname%>"><br>
Patient Name:<%out.println(name); %><input type="hidden" name="patientname" value="<%=name%>"><br>
Patient Age:<input type="text" name="patientage"><br>
<!-- Patient Gender:<input type="text" name="patientgender"><br> -->
<p>Gender</p> <input type="radio" id="male" name="patientgender" value="male">  <label for="male">Male</label> <input type="radio" id="female" name="patientgender" value="female"><label for="female">Female</label><br>
<!-- Medicine:<input type="text" name="medicine">   -->
<label for="medicine">Medicine1</label> 
<select name="medicine" id="Medicine">
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
</select>
Medicine Quantity:<input type="number" name="medicinequantity"><br>
<!-- Medicine:<input type="text" name="medicine1"> -->
<label for="medicine1">Medicine2</label> 
<select name="medicine1" id="Medicine1">
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
</select>
Medicine Quantity:<input type="number" name="medicinequantity1"><br>
<label for="medicine2">Medicine3</label> 
<select name="medicine2" id="Medicine2">
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
</select>
Medicine Quantity:<input type="number" name="medicinequantity2"><br>


<!-- Medicine:<input type="text" name="medicine2">  -->
<label for="medicine3">Medicine4</label> 
<select name="medicine3" id="Medicine3">
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
</select>
Medicine Quantity:<input type="number" name="medicinequantity3"><br>


<!-- Medicine:<input type="text" name="medicine3">  -->
<!-- Medicine:<input type="text" name="medicine4"> -->
<label for="medicine4">Medicine5</label> 
<select name="medicine4" id="Medicine4">
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
</select>
Medicine Quantity:<input type="number" name="medicinequantity4"><br>

<input type="submit" value="add">

</form>
</center>
</div>
</head>
</html>