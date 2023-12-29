<%@ page import ="java.sql.*" %> 
<%! Connection con; 
Statement st; ResultSet rs;
String q,email,password,desig; %> 
<% 
try{
Class.forName("oracle.jdbc.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
st=con.createStatement(); 
email=(String)request.getParameter("email");
password=(String)request.getParameter("password");
desig=(String)request.getParameter("desig"); 
q="select * from users where email='"+email+"' and password='"+password+"' and desig='"+desig+"' ";
rs=st.executeQuery(q); 
if(rs.next()) 
{ 
session.setAttribute("su1",email);
if(desig.equals("administrator")) response.sendRedirect("admin.html");
if(desig.equals("staff")) response.sendRedirect("staffhome.html");
if(desig.equals("customer")) response.sendRedirect("userhome.jsp"); 
} 
else
response.sendRedirect("loginfail.html"); } 
catch(Exception e) 
{
out.println(e.toString()); 
} 
%>
