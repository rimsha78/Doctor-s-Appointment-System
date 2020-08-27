<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<% 
    String pname=(String)session.getAttribute("patient");
    String ispatient=(String)session.getAttribute("isPatient");

    if(pname == null || ispatient == null) response.sendRedirect("patientlogin1.jsp");
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
      <th>LOcation</th>
      <th>Category</th>
      <th>Fees</th>
      <th>Experience</th>
	  <th>Timings</th>
      <th>Book</th>
	  
    </tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");
	Statement st=con.createStatement();
	Statement stmt=con.createStatement();
	String category=request.getParameter("cat");
	String reason=request.getParameter("reason");
	
	int rs2 = st.executeUpdate("INSERT INTO search (category, reason) VALUES('"+ category + "','" + reason + "')");
	String query="select * from doctor where category = '"+category+"' ";
	System.out.println(query);
	ResultSet rs = st.executeQuery( query );

    while(rs.next())
    { 
    	//session.setAttribute("doctor",username);
 		//session.setAttribute("Email",email);
 		//session.setAttribute("Loc",location);
 		//session.setAttribute("Cat",category);
	%>
			<tr>
			<td><%=rs.getString("username") %></td>
			<td><%=rs.getString("email") %></td>
			<td><%=rs.getString("location") %></td>
			<td><%=rs.getString("category") %></td>
			<td><%=rs.getString("fee") %></td>
			<td><%=rs.getString("experience")%></td>
			<td><%=rs.getString("timing")%></td>
			<td>
				<form name="form" action="booking.jsp" method="post" >
					<input type="hidden" name="hidden_username" value='<% out.print(rs.getString("username")); %>' />
					<input type="hidden" name="hidden_email" value='<% out.print(rs.getString("email")); %>' />
					<input type="hidden" name="hidden_location" value='<% out.print(rs.getString("location")); %>' />
					<input type="hidden" name="hidden_category" value='<% out.print(rs.getString("category")); %>' />
					<button type="submit"  name="Submit">Book</button>
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