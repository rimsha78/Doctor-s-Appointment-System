<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("adminlogin1.jsp");
%>