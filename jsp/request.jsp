<%@ page language = "java" import = "java.sql.Statement,java.sql.ResultSet,java.sql.Connection,java.sql.DriverManager" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Sign Up</title></head>
<body>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://127.0.0.1:3309/project";
Connection con=DriverManager.getConnection(url, "root", "root");

String pname=(String)session.getAttribute("patient");
String dname=(String)session.getAttribute("doctor");
String email=(String)session.getAttribute("Email");
String category=(String)session.getAttribute("Cat");
String location=(String)session.getAttribute("Loc");

//out.print(pname+dname+email+category+location);



Statement st=con.createStatement();

String query="INSERT INTO appointment (pname,dname,email,category,location,status) VALUES('"+pname+"','"+dname+"','"+email+"','"+category+"','"+location+"')";
System.out.println(query);
int rs = st.executeUpdate( query );
if(rs==1)
{ 
 			out.println("<h1>Record inserted.</h1>"); 
}else
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



<a href="index.html">Home</a>

</body>
</html>