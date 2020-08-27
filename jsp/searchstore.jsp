<%@ page language = "java" import = "java.sql.Statement,java.sql.ResultSet,java.sql.Connection,java.sql.DriverManager" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Insert</title></head>

<body>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3309/project";
	Connection con=DriverManager.getConnection(url, "root", "root");

	String category=request.getParameter("cat");
	String reason=request.getParameter("reason");

	Statement st=con.createStatement();

	String query="INSERT INTO search (category,reason) VALUES('"+ category + "','" + reason + "')";

	System.out.println(query);

        int rs = st.executeUpdate( query );

        if(rs==1)
       	{ 
    		 	
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


<a href ="search.jsp"> Click here to view Results</a><br/><br/>
</body>
</html>

