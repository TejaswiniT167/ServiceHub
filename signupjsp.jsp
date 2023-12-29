<%@ page import ="java.sql.*"%> 
<% String email=request.getParameter("email");
String password=request.getParameter("password"); 
String desig="customer"; 
try {
Class.forName("oracle.jdbc.OracleDriver"); 
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
PreparedStatement ps=conn.prepareStatement("insert into users values(?,?,?)");
ps.setString(1,email); 
ps.setString(2,password); 
ps.setString(3,desig);
ps.executeQuery(); 
response.sendRedirect("signup_redirect.html"); }
catch(Exception e) 
{ response.sendRedirect("signupfail.html");  } %>
