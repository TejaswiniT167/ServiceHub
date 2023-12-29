<%@  page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
String q,email;

%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");

st=con.createStatement();

email=(String)request.getParameter("email");

session.setAttribute("su2",email);

q="select * from users where email='"+email+"'";

rs=st.executeQuery(q);

%>


<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<style>
	body{
		background-image: url("images/bg.jpg");
		background-size: 1250px 750px;
	}
</style>
</HEAD>

<BODY BGCOLOR="#99CCFF">

<%
while(rs.next())
{
%>

<CENTER>
<B><FONT SIZE="5" COLOR="">USER DETAILS</FONT></B><br><br>

<TABLE border="2" style="border-collapse: collapse">
<TR>
	<TD>Email</TD>
	<TD><%=email%></TD>
</tr>
<tr>
	<TD>Password</TD>
	<TD><%=rs.getObject(2)%></TD>
</tr>
</TR>
<TR>
	<TD>Designation</TD>
	<TD><%=rs.getObject(3)%></TD>
</TR>
</TABLE><BR>

<INPUT TYPE="button" onClick="window.location='viewusers.jsp'" value="BACK">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="button" onClick="window.location='updateuser.jsp'" value="UPDATE USER"> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="button" onClick="window.location='deleteuser.jsp'" value="DELETE USER"> 


<%
}
%>


</FORM>
</BODY>
</HTML>

<%
}
catch(Exception e)
{
out.println(e.toString());
}
%>
