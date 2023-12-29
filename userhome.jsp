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
    <title>Cleanco_user_home</title>
    <style>
      .lev1 {
        display: grid;
        grid-template-rows: minmax(1em auto);
        font-family: "Nunito", sans-serif;
      }
      .top {
        /* background-image: -webkit-linear-gradient(
          left,
          white,
          rgb(39, 131, 222)
        ); */
        background-image: url("images/sanit2e3.jpg");
        background-size: cover;
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
      .content {
        display: grid;
        grid-template-columns: 1fr;
        font-size: 1.2em;
      }
      .serv {
        display: grid;
        grid-template-columns: repeat(2, 1fr); /* Two equal columns */
        text-align: center;
        justify-self: center;
        row-gap: 1em;
        padding-top: 1em;
        padding-bottom: 1em;
        background-image: url("images/bg12.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: cover; /* Adjusted for better background handling */
     }
    
     .serv img {
        width: 100%; /* Make images responsive */
        height: 100%; /* Maintain aspect ratio */
     }
  
      body {
        margin: 0em;
      }
      .info {
        padding: 30px;
        background-color: rgb(255, 255, 255);
        text-align: left;
        font-family: "Nunito", sans-serif;
      }
      .subh {
        font-size: 1.9em;
        color: rgb(5, 111, 67);
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
        <div style="padding-left: 70px">
        <%=email%> 
        </div>
        <div><img src="images/user.png" height="40" width="40" style="border-radius: 20px"> </div>
      </div>
      <div class="content">
        <div></div>
        <div
          style="
            background-color: rgb(59, 188, 68);
            text-align: left;
            line-height: 1.4em;
            padding: 0.5em;
            padding-left: 1em;
            padding-right: 1em;
            padding-bottom: 1em;
            color: rgb(0, 0, 0);
          "
        >
          <span style="font-size: 1.5em; line-height: 1.7em"
            >Welcome to cleanco services!</span
          >
          <br />
          We offer trained technicians equipped with world-class equipment to
          thoroughly disinfect your home or office area. Sanitization not only
          cleans the dirt but also removes 99.99 percent of germs, bacteria, and
          viruses. The amount of microorganisms present in space is reduced to a
          safe level, avoiding contamination and harmful effects of unseen
          pathogens. Through sanitization services, you can provide a hygienic
          and safe environment for your customers, employees, loved ones, and
          yourself. We with our professional workers with years of experience in
          the field, strive to provide our utmost best to fullfill your sanitary
          requirements. <br />
        </div>
        <div></div>
      </div>
    </div>
    <div class="serv">
      <div>
        <img
          src="images/home_san.jpg"
          style="
            width: 1fr;
            height: 1fr;
            border-top-left-radius: 2em;
            border-bottom-left-radius: 2em;
          "
        />
      </div>
      <div class="info">
        <div class="subh">Home sanitization</div>
        <br />
        <div style="font-size: 1.3em; line-height: 1.5em">
          Home, the place where you have an obligation to keep clean for you and
          your loved ones' sound health. Our experts in the field can do just
          that! We provide house keeping, bathroom cleaning, carpet cleaning,
          window cleaning, deep cleaning and other essentials in our
          sanitization services.
        </div>
      </div>
      <div class="info">
        <div class="subh">Vehicle sanitization</div>
        <br />
        <div style="font-size: 1.3em; line-height: 1.5em">
          Vehicles, the means of transportation to outside world but, also the
          carriers of germs and other infections from outside to us. We provide
          our deep cleaning services to keep your cars, motor cycles, trucks,
          etc., clean and protected from the outside contamination.
        </div>
      </div>
      <div>
        <img
          src="images/veh_san.jpg"
          style="
            width: 1fr;
            height: 1fr;
            border-top-right-radius: 2em;
            border-bottom-right-radius: 2em;
          "
        />
      </div>
      <div>
        <img
          src="images/com_san.jpg"
          style="
            width: 1fr;
            height: 1fr;
            border-top-left-radius:2em;
            border-bottom-left-radius: 2em;
          "
        />
      </div>
      <div class="info">
        <div class="subh">Commercial sanitization</div>
        <br />
        <div style="font-size: 1.3em; line-height: 1.5em">
          If anything, the recent pandemic proved the need for public sanitaion.
          We provide services for infection control in frequently crowded places
          like shopping malls, bus stops, cinema halls, railway staions,etc.
          Places where sanitization is the key priority for public safety.
        </div>
      </div>
      <div class="info">
        <div class="subh">Workplace sanitization</div>
        <br />
        <div style="font-size: 1.3em; line-height: 1.5em">
          Your work place can be an office, a shop, a construction site, an open
          area or anything else. But, working in a sanitary environment is a
          must for productive work to be done. We provide sanitary serives
          unique to your Workplace based on your demands to fullfill your
          necessities along with common practices like window/vents cleaning,
          furniture cleaning, floor cleanig and other essentials.
        </div>
      </div>
      <div>
        <img
          src="images/work_san.jpeg"
          style="
            width: 1fr;
            height: 1fr;
            border-top-right-radius: 2em;
            border-bottom-right-radius: 2em;
          "
        />
      </div>
    </div>
  </body>
</html>
