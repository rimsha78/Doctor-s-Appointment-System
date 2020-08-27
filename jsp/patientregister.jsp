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
String number=request.getParameter("num");
String address=request.getParameter("add");
String gender=request.getParameter("gender");


Statement st=con.createStatement();

String query="INSERT INTO patient (username,password,email,number,address,gender) VALUES('"+username+"','"+password+"','"+email+"','"+number+"','"+address+"','"+gender+"')";
System.out.println(query);
int rs = st.executeUpdate( query );
if(rs==1)
{ 
 	out.println("Welcome " +username); 	
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


</br></br><a href ="doctorlogin1.jsp">Login</a><br/>
<a href="index.jsp">Home</a>

</body>
</html>