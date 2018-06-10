<!DOCTYPE html>
<html lang="en">
  <head>
    <title>LoginPage</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
  </head>

  <body style="background-color:#99ff33;
  margin: 10px 20px;
  font-family: Arial;"><br><br><br>
      <table>
    <tr>
      <td>Your Name:</td>
      <td><%= request.getParameter("name") %></td>
    </tr>
    <tr>
      <td><label>Your address:</label></td>
      <td><%= request.getParameter("address") %></td>
    </tr>
    <tr>
      <td><label>Your contact no:</label></td>
      <td><%= request.getParameter("contact") %></td>
    </tr>
    <tr>
      <td><label>Your EmailID:</label></td>
      <td><%= request.getParameter("email") %></td>
    </tr>
    <tr>
      <td><label>Gender:</label></td>
      <td><%= request.getParameter("gender") %></td>
    </tr>
      </table>
    </form>

  </body>
</html>