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

String username=request.getParameter("user");
String password=request.getParameter("pwd");
String email=request.getParameter("email");
String location=request.getParameter("loc");
String category=request.getParameter("cat");
String fees=request.getParameter("fee");
String experience=request.getParameter("exp");
String timing=request.getParameter("time");


Statement st=con.createStatement();

String query="INSERT INTO doctor (username,password,email,location,category,fee,experience,timing) VALUES('"+username+"','"+password+"','"+email+"','"+location+"','"+category+"','"+fees+"','"+experience+"','"+timing+"')";
System.out.println(query);
int rs = st.executeUpdate( query );
if(rs==1)
{ 
    	response.sendRedirect("doctorlogin1.jsp"); 	
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





</body>
</html>