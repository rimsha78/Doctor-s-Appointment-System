<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Doctor's Appointment System</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%

try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");

	String username=request.getParameter("user");
	String password=request.getParameter("pass");
	

	Statement st=con.createStatement();

	String query="select * from patient where username ='"+username+"' and password='"+password+"'";

	System.out.println(query);

        ResultSet rs = st.executeQuery( query );

        if(rs.next())
       	{ 
			session.setAttribute("patient",username);
  			session.setAttribute("isPatient",new String("yes"));
    		response.sendRedirect("search1.jsp");	
        }
	else
	{
		out.println("Invalid password <a href='patientlogin1.jsp'>try again</a>");	
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
</br>


</body>
</html>