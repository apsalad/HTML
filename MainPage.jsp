<!DOCTYPE html>
<html lang="en">
  <head>
    <title>MainPage</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css">
    <script>
function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    var z = document.forms["myForm"]["password"].value;
    var e = document.forms["myForm"]["email"].value;
    if (x == "") {
        alert("Name must be filled out");
        return false;
    }
    else if(!((x>'A' && x<'Z')||(x>'a' && x<'z'))){
      alert("symbols not allowed in name");
      return false;
    }
    if(z.length<8){
      alert("password length is 8");
      return false;
    }
  }
    </script>

  </head>

  <body  style="background-color:#99ff33;
  margin: 10px 20px;
  font-family: Arial;">
    <br><center><h2>Register here</h2></center>

    <marquee direction="right"><a href="https://www.google.co.in">www.xyz.com</a></marquee><hr>

    <form name="myForm" action="LoginPage.jsp" onsubmit="return validateForm()" method="POST">
      <table>
    <tr>
      <td><label>Enter your Name:</label></td>
      <td><input type="text" name="name" placeholder="Enter name here" required></td>
    </tr>
    <tr>
      <td><label>Enter your password:</label></td>
      <td><input type="password" name="password" placeholder="Password here" required></td>
    </tr>
    <tr>
      <td><label>Enter your address:</label></td>
      <td><input type="text" name="address" placeholder="Address here" required></td>
    </tr>
    <tr>
      <td><label>Enter your contact no:</label></td>
      <td><input type="text" name="contact" placeholder="Contact number here" required></td>
    </tr>
    <tr>
      <td><label>Enter your EmailID:</label></td>
      <td><input type="email" name="email" placeholder="Email here" required></td>
    </tr>
    <tr>
      <td><label>Gender:</label></td>
      <td><input type="radio" name="gender" value="Male" required>Male
      <input type="radio" name="gender" value="Female" required>Female</td>
    </tr>
    <tr>
    <td><center><input type="submit" value="Submit"></center></td>
  </tr>
      </table>
    </form>

  </body>
</html>