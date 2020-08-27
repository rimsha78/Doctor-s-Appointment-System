<!DOCTYPE html>
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
<center><h1>Doctor's Login</h2></center>
<div class="sidebar">
  <a href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="doctorlogin1.jsp"><i class="fa fa-fw fa-user"></i> Doctor's Login</a>
  <a href="doctorregister1.jsp"><i class="fa fa-fw fa-user"></i> Doctor's Register</a>
</div>
<form name="form" action="doctorlogin.jsp" method="post" >
<table align="center">


<td>Username</td>
<td><input type="text" name="user" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass" /></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="login"></input>
</br>
</br>
<div style="text-align: center">Not Registered yet? <a href ="doctorregister1.jsp" style="color:#0069D9; font-size: 15px; ">Signup</a></div>
</tr>
</table>
</form>
</body>
</html>