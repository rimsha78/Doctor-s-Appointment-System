<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<% 
    String name=(String)session.getAttribute("user");
    String isadmin=(String)session.getAttribute("isAdmin");

    if(name == null || isadmin == null) response.sendRedirect("adminlogin1.jsp");
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
      <th>Id</th>
      <th>Patient's Name</th>
      <th>Doctor's Name</th>
      <th>Email</th>
      <th>Category</th>
      <th>Location</th>
      <th>Status</th>

      
    </tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");
	Statement st=con.createStatement();
	Statement stmt=con.createStatement();
  Statement stmt1=con.createStatement();
	String query="select * from appointment where status='p'";
	System.out.println(query);
	ResultSet rs = st.executeQuery( query );

    while(rs.next())
    { 
	%>
			<tr>
			<td><%=rs.getInt("id") %></td>
      <td><%=rs.getString("pname") %></td>
      <td><%=rs.getString("dname") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("category") %></td>
			<td><%=rs.getString("location") %></td>
			<td>
        <form name="form" action="requestcheck.jsp" method="post" >
          <input type="hidden" name="hidden_id" value='<% out.print(rs.getInt("id")); %>' />
          <button type="submit"  name="Submit">Accept</button>
          <button type="submit"  name="Submit">Reject</button>
        </form>
        
        </td>
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