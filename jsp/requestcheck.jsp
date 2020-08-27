<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>atozknowledge.com demo loginjsp</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");

	String submit=request.getParameter("submit");
	

	Statement st=con.createStatement();
	Statement stmt=con.createStatement();
    String stat=request.getParameter("Submit");
    if(stat=="Accept")
    {
        int rs1 = st.executeUpdate("UPDATE appointment SET status = 'a' where id = 'id' " );
    }
    else if(stat=="Reject")
    {
        int rs2 = stmt.executeUpdate("UPDATE appointment SET status = 'r' where id = 'id' " );
    }
%>

<%
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




</body>
</html>