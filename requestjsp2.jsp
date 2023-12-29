<%@ page import ="java.sql.*"%> 
<% 
String email=request.getParameter("email");
String fname=request.getParameter("fname"); 
Long phno=Long.parseLong(request.getParameter("phno"));
String place=request.getParameter("place");
String street=request.getParameter("street");
String area=request.getParameter("area");
String city=request.getParameter("city");
int pin=Integer.parseInt(request.getParameter("pin"));
String service=request.getParameter("service");
Statement st;

try { Class.forName("oracle.jdbc.OracleDriver"); 
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
PreparedStatement ps=conn.prepareStatement("insert into requests values(?,?,?,?,?,?,?,?,?,?)"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
st=con.createStatement(); 
String q="select to_date(sysdate,'dd/mm/yyyy')from dual";
ResultSet rs=st.executeQuery(q);

while(rs.next())
{

ps.setString(1,email); 
ps.setString(2,service); 
ps.setString(3,fname);
ps.setLong(4,phno); 
ps.setString(5,place);
ps.setString(6,street); 
ps.setString(7,area); 
ps.setString(8,city); 
ps.setInt(9,pin);
ps.setDate(10,rs.getDate(1));

int i=ps.executeUpdate();

if(i!=0) 
{ response.sendRedirect("requestsuccess.html"); } 
else {
response.sendRedirect("requestfail.html"); } 
} 
}
catch(Exception e) 
{
out.println(e);  
} 
%>
