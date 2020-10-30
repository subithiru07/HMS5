<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}
input[type=date], input[type=],input[type=number] {
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
  width: 50%;
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
</style>
<div class="container">
<center><h1>Add MedicalStock</h1>
<form action="medicalstock/add.html" method="post">
<table>
<tr><td><label for="medicines">Medicines</label></td>
<td><select name="medicinename" id="Medicines">
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
</select></td></tr>





<tr><td><label for="component">Component</label></td>
<td><select name="components" id="Component">
<option value="Antibiotic Drugs">Antibiotic </option>
<option value="Antifungal Drugs">Antifungal Drugs </option>
<option value="Anti Infective Agent">Anti Infective Agent </option>
<option value="Anti HIV drugs">Anti HIV drugs </option>
<option value="Antiviral">Antiviral</option>
<option value="AntiMalarial Drugs">AntiMalarial Drugs </option>
<option value="Anti Allergic Drug">Anti Allergic Drug </option>
<option value="Antibacterial Drugs">Antibacterial Drugs </option>
</select><br></td></tr>

<tr><td>Quantity:</td><td><input type="number" name="quantity" required></td><tr><td>Price:</td><td><input type="number" name="price" required><br</td></tr>
<tr><td>ManufacturingDate:</td><td><input type="date" name="manufacturingdate" required></td></tr>
<tr><td>ExpiryDate:</td><td><input type="date" name="expirydate" ><br></td></tr>


<tr><td> </td><td><input type="submit" value="Add"></td></tr></table>

</form>
</center>
</div>
</head>
</html>