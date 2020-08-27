<%@ page language = "java" import = "java.sql.Statement,java.sql.ResultSet,java.sql.Connection,java.sql.DriverManager" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Information</title></head>

<body>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");

	String username=request.getParameter("user");
	String password=request.getParameter("pass");
	String email=request.getParameter("email");


	Statement st=con.createStatement();

	String query="INSERT INTO admin (username,password,email) VALUES('"+ username + "','" + password + "','" + email + "')";

	System.out.println(query);

        int rs = st.executeUpdate( query );

        if(rs==1)
       	{ 
    		String redirectURL = "adminlogin1.jsp";
    		response.sendRedirect(redirectURL); 	
        }
	else
	{
    		out.println("<h1>Record could not be inserted.</h1>"); 
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


<a href ="patientlogin1.jsp">Login</a><br/><br/>
<a href="index.jsp">Home</a>

</body>
</html>