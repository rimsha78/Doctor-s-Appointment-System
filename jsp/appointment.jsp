<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Doctor's Appointment System</title>
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
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>

<center><h1>Book You Appointment</h2></center>
<div class="sidebar">
  <a href="index.jsp"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="viewdoctors.jsp"><i class="fa fa-fw fa-user"></i> View Doctors</a>
  <a href="search.jsp"><i class="fa fa-fw fa-user"></i> search Doctors</a>
  <a href="patientlogin1.jsp"><i class="fa fa-fw fa-user"></i> Logout</a>
</div>
<
<table align="center">
 
<tr>
<td>Patient Id</td>
<td><input type="text"   name="id" ></td>
</tr>
<tr>
<td>Name</td>
<td><input type="text"  name="name" ></td>
</tr>
<td>Doctor</td>
<td><input type="text"  name="doctor" ></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email"  name="email" /></td>
</tr>
<tr>
<td>Location</td>
<td><input type="text"  name="loc"  /></td>
</tr>
<tr>
<td>Category</td>
<td><input type="text"  name="cat"  /></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Book"></input>

</tr>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");
	Statement st=con.createStatement();
	  String user=request.getParameter("na");
  out.println("hahah");

	String Id=request.getParameter("id");
	String name=request.getParameter("name");
	String doctor=request.getParameter("doctor");
	String email=request.getParameter("email");
	String location=request.getParameter("loc");
	String category=request.getParameter("cat");
	
	
	int rs = st.executeUpdate("INSERT INTO appointment (id,name,doctor,email,location,category) VALUES('"+Id+ "','"+ name + "','"+ doctor + "','"+ email + "','"+ location + "','"+ category + "')");
	

    if(rs==1)
    { 
	%>
		    String redirectURL = "booking.jsp";
    	  response.sendRedirect(redirectURL); 	
			
<%
    }
st.close();
con.close();
%>
<%
}
catch(Exception e)
{
	System.out.println("Exception");
}
%>
</table>
</body>
</html>