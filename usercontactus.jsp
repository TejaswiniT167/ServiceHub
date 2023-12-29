<%@pageimport="java.sql.*"%> <%! Connection con; Statement stm; int i; String
email; %> <% try { Class.forName("oracle.jdbc.OracleDriver"); Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
email=(String)session.getAttribute("su1"); } catch(Exception e) {
out.println(e.toString()); } %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Baloo+Tamma+2:wght@400&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@1,500&display=swap"
      rel="stylesheet"
    />
    <title>Contact us</title>
    <style>
      body {
        background-color: rgb(243, 245, 247);
        margin: 0em;
      }
      .lev1 {
        display: grid;
        grid-template-rows: minmax(1em auto);
        font-family: "Nunito", sans-serif;
      }
      .top {
        background-image: url("images/sanit2e3.jpg");
        height: 220px;
        padding-left: 1em;
      }
      .head {
        font-family: "Baloo Tamma 2", cursive;
        font-size: 4.8em;
        line-height: 1em;
        font-weight: bolder;
        padding-top: 10px;
      }
      .nav {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 2fr 41px;
        background-color: rgb(48, 171, 228);
        height: 2.5em;
        text-align: center;
        align-self: center;
        line-height: 2.5em;
        font-size: 1.3em;
      }
      .nav :hover {
        background-color: rgb(0, 146, 214);
      }
      .aboutus {
        display: grid;
        grid-template-columns: 1fr;
      }
    </style>
  </head>
  <body>
    <div class="lev1">
      <div class="top">
        <div class="head">
          <span style="color: rgb(81, 175, 14)">clean</span
          ><span style="color: rgb(31, 177, 213)">co</span>
        </div>
        <div style="font-size: 2.2em; font-family: 'EB Garamond', serif">
          One stop for all your sanitary needs
        </div>
      </div>
      <div class="nav">
        <div>
          <a style="color: black; text-decoration: none" href="userhome.jsp"
            >Home
          </a>
        </div>
        <div>
          <a style="color: black; text-decoration: none" href="requestjsp1.jsp"
            >Request</a
          >
        </div>
        <div>
          <a style="color: black; text-decoration: none" href="logout.html"
            >Logout</a
          >
        </div>
        <div>
          <a style="color: black; text-decoration: none" href="useraboutus.jsp"
            >About us</a
          >
        </div>
        <div>
          <a
            style="color: black; text-decoration: none"
            href="usercontactus.jsp"
            >Contact us</a
          >
        </div>
        <div></div>
        <div style="padding-left: 70px"><%=email%></div>
        <div>
          <img
            src="images/user.png"
            height="40"
            width="40"
            style="border-radius: 20px; padding-top: 4px"
          />
        </div>
      </div>
      <div class="aboutus">
        <div>
          <div style="font-size: 2.3em; padding: 15px; color: rgb(0, 85, 83)">
            Contact:
          </div>
          <div
            style="
              font-size: 1.5em;
              padding-left: 15px;
              background-color: rgb(189, 223, 223);
            "
          >
            Address:
          </div>
          <div style="padding: 15px; font-size: 1.2em">
            Cleanco building, <br />
            7th line, Lakshmipuram, <br />
            near Pantaloons, <br />
            Guntur-522007
          </div>
          <div
            style="
              font-size: 1.5em;
              padding-left: 15px;
              background-color: rgb(189, 223, 223);
            "
          >
            Call us:
          </div>
          <div style="padding: 15px; font-size: 1.2em">
            +918985083224 <br />
            +918331992669 <br />
            0863 584277
          </div>
          <div
            style="
              font-size: 1.5em;
              padding-left: 15px;
              background-color: rgb(189, 223, 223);
            "
          >
            Email us:
          </div>
          <div style="padding: 15px; font-size: 1.2em">
            clean@co.net<br />
            cleanco@gmail.com
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
