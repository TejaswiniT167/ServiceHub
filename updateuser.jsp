<%@  page import="java.sql.*" %>
<%!
Connection con;
Statement stm;
ResultSet rs;
String q,email;

%>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");

email=session.getAttribute("su2").toString();
q="select * from users where email=?";
PreparedStatement  stm = con.prepareStatement(q);
stm.setString(1,email);
rs=stm.executeQuery();

%>

<html>
<HEAD>
<TITLE>update_user</TITLE>
<style>
	body{
		background-image: url("images/bg.jpg");
		background-size: 1250px 750px;
	}
</style>
</HEAD>

<BODY BGCOLOR="#99CCFF">
<FORM METHOD=POST ACTION="updateuser1.jsp">
<%
while(rs.next())
{
%>

<CENTER>
<B><FONT SIZE="5" COLOR="">USER DETAILS</FONT></B><br><br>

<TABLE border="2" style="border-collapse: collapse">
<TR>
	<TD><B>Email</TD>
	<TD><b><%=email%><input type="hidden" name="email" value="<%=email%>"></TD>
</tr>
<tr>
	<TD><B>Password</TD>
	<TD><INPUT TYPE="text" NAME="password" value="<%=rs.getObject(2)%>" size=15 maxlength=12></TD>
</TR>
<TR>
	<TD><B>Designation</TD>
	<TD><SELECT NAME="desig">
	<option><%=rs.getObject(3)%>
	<OPTION>administrator</OPTION>
	<OPTION>staff</OPTION>
	<OPTION>customer</OPTION>
	</SELECT></TD>
</TR>
</TABLE><BR>


<input type="submit" value="UPDATE">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="button" onClick="window.location='viewusers.jsp'" value="BACK">

<%
}
%>


</FORM>
</BODY>
</html>

<%
}
catch(Exception e)
{
out.println(e.toString());
}
%>
