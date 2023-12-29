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
    <title>About us</title>
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
        grid-template-columns: 2fr 1fr;
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
          <div
            style="
              font-size: 2.3em;
              padding-left: 15px;
              padding-top: 20px;
              color: rgb(5, 111, 67);
            "
          >
            About us
          </div>
          <div style="font-size: 1.3em; padding-left: 15px">
            <p>
              Cleanco has taken a step forward to help prevent the spread of the
              deadly virus with a range of world-class, disinfecting &
              sanitizing services. With well trained, skilled & professional
              cleaners we help corporate workspaces & residential spaces to stay
              clean & Hygienic with a range of disinfecting & sanitizing tasks
              such as aerial disinfection, sanitation of most-touched surfaces,
              IT assets, stationeries and overall clients property with a strong
              but safe disinfection solution.
            </p>
            <p>
              Cleanco is a top-notch cleaning and sanitation services company in
              Guntur, Nambur and Vijayawada cities with good competency in
              managing environmental and sanitization services reliable sanitize
              treatment, treatment and cleaning of your place and act
              efficiently and cost-effectively to improve your situation.
            </p>
          </div>
        </div>
        <div style="padding: 20px; align-self: center">
          <img src="images/abtus.jpg" width="500" height="350" " />
        </div>
      </div>
    </div>
  </body>
</html>
