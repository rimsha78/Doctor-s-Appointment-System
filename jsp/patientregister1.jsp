!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif;}

.sidebar {
  height: 100%;
  width: 250px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}
</style>
</head>

<body>
<center><h1>Patient's Registeration</h2></center>
<div class="sidebar">
  <a href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="patientlogin1.jsp"><i class="fa fa-fw fa-user"></i> Patient's Login</a>
  <a href="viewdoctors.jsp"><i class="fa fa-fw fa-user"></i> View Doctors</a>
  <a href="search1.jsp"><i class="fa fa-fw fa-user"></i> search Doctors</a>
  <a href="patientlogin1.jsp"><i class="fa fa-fw fa-user"></i> Logout</a>
</div>
<form name="form" action="patientregister.jsp" method="post">
<table align="center">

<tr>
<td>Name</td>
<td><input type="text" oninvalid="alert('You must fill out the name!')";  name="user" required "></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" oninvalid="alert('You must fill out the password!');" name="pwd" required></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email" oninvalid="alert('You must fill out the email!');" name="email"required /></td>
</tr>


<tr>
<td>Mobile Number</td>
<td><input type="text" oninvalid="alert('You must fill out the number!');" name="num" required /></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" oninvalid="alert('You must fill out the experience!');" name="add" required /></td>
</tr>
<tr>
<td>Gender</td>
<td>
<input type="radio" name="gender" value="male"> Male<br>
<input type="radio" name="gender" value="female"> Female<br>
<input type="radio" name="gender" value="other"> Other
</td>
</tr>

<td><input type="submit" value="Register"></input>

</tr>
</table>
</form>
</body>
</html>