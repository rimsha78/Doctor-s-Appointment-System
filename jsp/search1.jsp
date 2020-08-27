<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <% 
    String pname=(String)session.getAttribute("patient");
    String ispatient=(String)session.getAttribute("isPatient");

    if(pname == null || ispatient == null) response.sendRedirect("patientlogin1.jsp");
   %>
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

<div class="sidebar">
  <a href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="search1.jsp"><i class="fa fa-fw fa-user"></i> search Doctors</a>
  <a href="patientlogin1.jsp"><i class="fa fa-fw fa-user"></i> Logout</a>
</div>
	<center><h1>Search </h1></center>
<form name="form" action="search.jsp"  method="post">
<table align="center">
<tr>
<td>Category</td>
<td><input type="text" name="cat" /></td>
</tr>
<tr>
<td>Reason</td>
<td><input type="text" name="reason" /></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Search"></input>

</tr>
</table>
</form>
</body>
</html>