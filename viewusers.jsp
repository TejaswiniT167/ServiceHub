<%@  page import="java.sql.*" %>
<%!
Connection con;
Statement st;
ResultSet rs;
%>
<%
try
{

Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");

st=con.createStatement();
rs=st.executeQuery("select email from users order by email");
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

<FORM METHOD=POST ACTION="viewuser.jsp">
<CENTER>
<B><FONT SIZE="5" COLOR="">USER DETAILS</FONT></B><br><br>
<TABLE>
<tr>
	<TD><b>Email</TD>
	<td><SELECT NAME="email" required>
	<option>--select user--
	<%
		while(rs.next())
		{
			 String temp=rs.getString(1);
	%>
	<option><%=temp%>

       <%
                }
       %> 
    </SELECT></td>
</TR>
</TABLE>
<br>

<INPUT TYPE="submit" VALUE="SHOW">
<BR><BR>
<INPUT TYPE="button" onClick="window.location='admin.html'" value="BACK">

</CENTER>
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