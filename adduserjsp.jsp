<%@ page import="java.sql.*" %> 
<%! Connection con; 
Statement st;
int i; 
String email,password,desig; %> 
<% try{ Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
st=con.createStatement(); 
email=(String)request.getParameter("email");
password=(String)request.getParameter("password");
desig=(String)request.getParameter("desig"); 
String q="insert into users values('"+email+"','"+password+"','"+desig+"')"; 
i=st.executeUpdate(q);
out.println("q"); 
if(i!=0) 
{ response.sendRedirect("admin.html"); } 
else {
response.sendRedirect("transfail.html"); } 
} 
catch(Exception e) 
{
out.println(e.toString()); 
} %>
