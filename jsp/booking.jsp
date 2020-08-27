<%@ page language = "java" import = "java.sql.Statement,java.sql.ResultSet,java.sql.Connection,java.sql.DriverManager" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

  <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
  <% 
    String pname=(String)session.getAttribute("patient");

    /*String dname=(String)session.getAttribute("hidden_username");
    String email=(String)session.getAttribute("hidden_email");
    String category=(String)session.getAttribute("hidden_category");
    String location=(String)session.getAttribute("hidden_location");
    String ispatient=(String)session.getAttribute("isPatient");*/

    String dname=(String)request.getParameter("hidden_username");
    String email=(String)request.getParameter("hidden_email");
    String category=(String)request.getParameter("hidden_category");
    String location=(String)request.getParameter("hidden_location");
    //String ispatient=(String)request.getParameter("isPatient");

    out.print(pname+dname+email+category+location);

    
   %>


<%
try{
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://127.0.0.1:3309/project";
Connection con=DriverManager.getConnection(url, "root", "root");
Statement st=con.createStatement();

String query="INSERT INTO appointment (pname,dname,email,category,location,status) VALUES('"+pname+"','"+dname+"','"+email+"','"+category+"','"+location+"', 'p')";
System.out.println(query);
int rs = st.executeUpdate( query );
if(rs==1)
{ 
      out.println("<h1>Record inserted.</h1>"); 
      response.sendRedirect("search1.jsp");
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
<
	
</body>
</html>