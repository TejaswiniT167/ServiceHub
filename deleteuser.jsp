<%@pageimport="java.sql.*"%>
<%!
Connection con;
Statement stm;
int i;
String q,email;
%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");

email=(String)session.getAttribute("su2");

q="delete from users where email=?";
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