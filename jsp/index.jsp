<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: "Lato", sans-serif;}

.tablink {
  background-color: color: #FF0000;;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content */
.tabcontent {
  color: white;
  display: none;
  padding: 50px;
  text-align: center;
}

#Home{background-color: DeepSkyBlue;}
#Admin {background-color:DeepSkyBlue;}
#Patient {background-color:DeepSkyBlue;}
#Doctor {background-color:DeepSkyBlue;}
</style>
</head>
<body>



<div id="Home" class="tabcontent">
  <h1>Online Doctor's Appointment System</h1>
</div>

<div id="Admin" class="tabcontent">
  <h1>Online Doctor's Appointment System</h1>
  
</div>

<div id="Patient" class="tabcontent">
  <h1>Online Doctor's Appointment System</h1>
  <p></p>
</div>

<div id="Doctor" class="tabcontent">
  <h1>Online Doctor's Appointment System</h1>
  
</div>

<button class="tablink" onclick="openCity('Home', this, 'DeepSkyBlue')" id="defaultOpen"><a href="#home"> Home</a></button>
<button class="tablink" onclick="openCity('Admin', this, 'DeepSkyBlue')"><a href="adminlogin1.jsp"></i> Admin</a></button>
<button class="tablink" onclick="openCity('Patient', this, 'DeepSkyBlue')"><a href="patientlogin1.jsp"></i> Patient</a></button>
<button class="tablink" onclick="openCity('Doctor', this, 'DeepSkyBlue')"><a href="doctorlogin1.jsp"></i> Doctor</a></button>


<script>
function openCity(cityName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(cityName).style.display = "block";
  elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<img src="odps.jpg"  alt="image" height="380" width="1300">
</body>
</html> 
