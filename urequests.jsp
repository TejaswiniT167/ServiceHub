<%@ page import="java.sql.*" %> 
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page import="java.util.Date" %> 

<%! Connection con; Statement st; ResultSet rs;
%> 

<% try 
{ Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
st=con.createStatement(); 
rs=st.executeQuery("select email,service,fname,phno,place,street,area,city,pin,rdate from requests order by rdate"); 
%>

<html>
    <head>
        <title>Service_requests</title>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
         href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
         rel="stylesheet"
         />
        <style>
            body{
                font-family: "Nunito", sans-serif;
                background-image: url("images/bg.jpg");
                background-size: 1250px 750px;
            }
            .main{
                display: grid;
                grid-template-columns: 1fr 1fr 1fr 1fr 2fr 1fr;
                border: 0px solid black;
            }
            .toph{
                font-size: 2.5em;
                text-align: center;
                padding:25px;
            }
            .top{
                border-bottom: 2px solid black;
                padding: 10px;
                background-color: rgb(0, 175, 85);
            }
            .items{
                border-bottom: 1px solid black;
                padding: 10px;
            }
            
        </style>
    </head>
    <body>
        <div class="toph">
            Service requests
        </div>
        <div class="main">
            <div class="top">Email</div>
            <div class="top">Service</div>
            <div class="top">Name</div>
            <div class="top">Mobile</div>
            <div class="top">Address</div>
            <div class="top">Date</div>
            <%
		    while(rs.next())
		    {
			 String email=rs.getString(1);
             String service=rs.getString(2);
             String name=rs.getString(3);
             String mobile=String.valueOf(rs.getLong(4));
             String place=rs.getString(5);
             String street=rs.getString(6);
             String area=rs.getString(7);
             String city=rs.getString(8);
             String pin=String.valueOf(rs.getInt(9));
             Date date=rs.getDate(10);
             DateFormat dateFormat = new SimpleDateFormat("dd-"+"MM-"+"yy");  
             String strDate = dateFormat.format(date);
	        %>
            <div class="items"><%=email%></div>
            <div class="items"><%=service%></div>
            <div class="items"><%=name%></div>
            <div class="items"><%=mobile%></div>
            <div class="items"><%=place+","+street+","+area+","+city+"-"+pin%></div>
            <div class="items"><%=strDate%></div>
            <%
                }
            %> 
        </div>
    </body>
</html>

<%
}
catch(Exception e)
{
out.println(e.toString());
}
%>