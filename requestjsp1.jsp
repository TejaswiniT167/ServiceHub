<%@pageimport="java.sql.*"%> 
<%! Connection con; 
Statement stm; 
int i; 
String email;
%> 
<% try { Class.forName("oracle.jdbc.OracleDriver"); 
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe","username","password");
email=(String)session.getAttribute("su1"); 
} 
catch(Exception e) 
{
out.println(e.toString()); 
} 
%>

<html>
  <head>
    <title>Request_form</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Baloo+Tamma+2:wght@400&display=swap"
      rel="stylesheet"
    />
    <style>
      body {
        font-family: "Nunito", sans-serif;
        background-image: url("images/req.jpeg");
        background-size: 1250px 750px;
      }
      .top {
        font-size: 4.7em;
        font-weight: 600;
        text-align: center;
        font-family: "Baloo Tamma 2", cursive;
        line-height: 1em;
        padding: 21px;
        text-shadow: 1px 1px 20px #f6f6f6;
      }
      .qn {
        font-size: 1.4em;
      }
      .center-box {
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: rgba(0, 0, 0, 0.4);
        margin: 0em;
      }
      .box {
        border-radius: 1em;
        height: 2em;
        border-width: 0.1em;
        border-color: rgb(19, 47, 98);
        padding-left: 16px;
      }
      .box:hover {
        -ms-transform: scale(1.5); /* IE 9 */
        -webkit-transform: scale(1.5); /* Safari 3-8 */
        transform: scale(1.1);
        transition: width 0.3s, height 0.3s, transform 0.2s;
      }
    </style>
  </head>
  <body>
    <form action="requestjsp2.jsp" method="post">
      <div class="top">
        <span style="color: rgb(45, 180, 0)">clean</span
        ><span style="color: rgb(7, 165, 233)">co</span>
      </div>
      <div class="reqform">
        <table class="center-box">
          <tr>
            <th colspan="2" style="padding: 20px, size=200px">
              <p style="font-size: 30px">Request Form</p>
              <p></p>
            </th>
          </tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr></tr>
          <tr>
            <td class="qn">Email</td>
            <td>
              <input type="text" class="box" name="email" value=<%=email%> readonly>
            </td>
          </tr>
          <tr>
            <td class="qn">Fullname</td>
            <td><input type="text" class="box" name="fname" required /></td>
          </tr>
          <tr>
            <td class="qn">Mobile number</td>
            <td>
               <input type="tel" class="box" name="phno" pattern="[0-9]{10}" minlength='10' maxlength="10" required>
            </td>
          </tr>
          <tr>
            <td class="qn">Address:</td>
          </tr>
          <tr>
            <td class="qn">Building No./Name</td>
            <td><input type="text" class="box" name="place" required /></td>
          </tr>
          <tr>
            <td class="qn">Street</td>
            <td><input type="text" class="box" name="street" required /></td>
          </tr>
          <tr>
            <td class="qn">Area</td>
            <td><input type="text" class="box" name="area" required /></td>
          </tr>
          <tr>
            <td class="qn">Town/City</td>
            <td><input type="text" class="box" name="city" required /></td>
          </tr>
          <tr>
            <td class="qn">Pincode</td>
            <td>
            <input type="tel" class="box" name="pin" pattern="[0-9]{6}" minlength='6' maxlength="6" required>
            </td>
          </tr>
          <tr></tr>
          <tr>
            <td class="qn">Service</td>
            <td>
              <select
                name="service"
                class="box"
                style="padding-left: 5px; width: 170px"
                required
              >
                <option value="" disabled selected>Select service</option>
                <option>Home sanitization</option>
                <option>Vehicle sanitization</option>
                <option>Commercial sanitization</option>
                <option>Workplace sanitization</option>
              </select>
            </td>
          </tr>
          <tr>
            <td colspan="2" style="text-align: center">
              <input
                type="submit"
                value="Submit"
                class="box"
                style="
                  height: 2.5em;
                  width: 7em;
                  font-size: 0.97em;
                  border-radius: 3.5em;
                  color: rgb(252, 252, 252);
                  font-weight: bold;
                  border-width: 0em;
                  background-color: rgb(42, 141, 37);
                  margin: 1em;
                  padding-left: 3px;
                "
              />
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>
