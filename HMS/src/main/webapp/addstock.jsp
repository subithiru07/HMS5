<%@page import=" java.time.format.DateTimeFormatter"%>
<%@page import  ="java.time.LocalDateTime"%>

<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: "Times New Roman", Times, serif;}
form {border: 4px solid #f1f1f1;}
input[type=date],input[type= number]{
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
<script type="text/javascript">
function msg()
{
	alert("New Stock has added.");

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
<%DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDateTime now = LocalDateTime.now();%>



<!--   <button onclick="document.getElementById('id01').style.display='block'" class="w3-button">Fade In Modal</button> -->

  <div id="id01" class="w3-modal w3-animate-opacity">
    <div class="w3-modal-content w3-card-4">
      <header class="w3-container w3-green"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-large w3-display-topright">&times;</span>
        <h2>Successfully Added..!</h2>
      </header>
      <div class="w3-container" >
        <p>New Stock has been added to the Pharmacy..!</p>
        
      </div>
      <footer class="w3-container  w3-green" >
        <p>Now Doctor can login..!</p>
      </footer>
    </div>
  </div>
</div>
<center>
<div class="header">
<h1>Add New MedicalStock</h1>
<div class="progress-container">
    <div class="progress-bar" id="myBar"></div>
  </div>  
</div><br><br><br><br>

<div class="container">
<form action="medicalstock/add.html" method="post" onsubmit="document.getElementById('id01').style.display='block'">
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

<tr><td>Quantity:</td><td><input type="number" name="quantity" min="1" required></td><tr><td>Price:</td><td><input type="number" name="price" min="1"required><br></td></tr>
<tr><td>Manufacturing Date:</td><td><input type="date" name="manufacturingdate" required></td></tr>
<tr><td>Expiry Date:</td><td><input type="date" name="expirydate" min="<%=dtf.format(now) %>"><br></td></tr>


<tr><td> </td><td><input type="submit" value="Add"></td></tr></table>

</form>
</div>
</center>
</body>
</head>
</html>