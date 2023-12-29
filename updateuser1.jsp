<%@page import="java.sql.*"%>
<%!
String q,password,desig,email;
Connection con;
Statement stm;
int i;
%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");

email=(String)request.getParameter("email");
password=(String)request.getParameter("password");
desig=(String)request.getParameter("desig");

q="update users set password='"+password+"',desig='"+desig+"' where email=?";
PreparedStatement  stm = con.prepareStatement(q);
stm.setString(1,email);
i=stm.executeUpdate();

if(i!=0)
response.sendRedirect("viewusers.jsp");
else
response.sendRedirect("transfail.html");
}
catch(Exception e)
{
out.println(e.toString());
}
%>


