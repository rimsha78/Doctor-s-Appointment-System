<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <% 
    String name=(String)session.getAttribute("user");
    String isdoctor=(String)session.getAttribute("isDoctor");

    if(name == null || isdoctor == null) response.sendRedirect("doctorlogin1.jsp");
   %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Doctor's Appointment System</title>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 70%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<center><h2>Results</h2></center>
<div style="overflow-x:auto;">
  <table align="center">
    <tr>
      <th>Name</th>
      <th>Email</th>
      <th>Number</th>
      <th>Address</th>
      <th>Gender</th>
      
    </tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");
	Statement st=con.createStatement();
	
	String query="select * from patient";
	System.out.println(query);
	ResultSet rs = st.executeQuery( query );

    while(rs.next())
    { 
	%>
			<tr>
			<td><%=rs.getString("username") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("number") %></td>
			<td><%=rs.getString("address") %></td>
			<td><%=rs.getString("gender") %></td>
			</tr>
			
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