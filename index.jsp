<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup Form</title>
<style>
body {
	background-image: URL("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJXNuZmbvOQUsa-c21kmT5iIdAH70kc8PaDVhnnBxp_d6_Y0pXvw");
}
.wrap {
	width: auto;
	margin: auto;
	}
form {
	padding: 10px;
	font-family: verdana;
	border: 1px; dotted white;
	margin: 10px;
}
h3 {
	text-align: center;
	background: violet;
	color: white;
}
input {
	padding: 10px;
	margin: 5px;
	border-radius: 5px;
	border: none;
}
input[type=text], input[type=text], input[type=email], input[type=number],
	input[type=password], input[type=password] {
	width: 90%;
}
input[type=submit] {
	width: 95%;
	background: orange;
	cursor: pointer;
	font-size: 18px;
	font-weight: bold;
	color: white;
}
input[type=submit]:hover {
	background: yellow;
	opacity: 3;
}
select {
	padding: 10px;
	width: 32%;
	border-radius: 5px;
}
</style>
<script type="text/javascript">
   
   var invalid =0;
  
   
  
function validation(){
	invalid = 0;
	length = document.getElementById("password").value.length;
	
	 //Name of the user validation
	if(document.getElementById("name").value == "")
	{
		document.getElementById("invalid_1").innerHTML = "You must type in a valid name";
		invalid += 1;
	}
	else{
		document.getElementById("invalid_1").innerHTML;
	}
	
	//Email validation
	if(document.getElementById("email").value.indexOf("@") == -1){
		document.getElementById("invalid_2").innerHTML = "Enter proper email id";
		invalid += 1;
	}
	else{
		document.getElementById("invalid_2").innerHTML;
	}
	
	//Final validation
	if(invalid!=0){
		return false;
	}
	else{
		return true;
	}
}
function checkPass(){
	var pass1 = document.getElementById("password");
	var pass2 = document.getElementById("confirmpassword");
	var message = document.getElementById("confirmMessage");
		if(pass1.value == pass2.value){
		pass2.style.backgroundcolor = goodColor;
		message.innerHTML = "Passwords Match!"
	}
	else{
		pass2.style.backgroundcolor = badColor;
		message.innerHTML = "Passwords do not Match!"
	}
	
}
</script>

</head>
<body>
	<div class="wrap">
		<form name="myform" action="SimpleForm" method="POST" onsubmit="return validation()">
			<h2>Sign up for free</h2>
			<h3>
				<marquee>
					<a href="https://www.facebook.com/">FaceBook</a>
				</marquee>
			</h3>
			<input type="text" name="name" id="name"
				placeholder="Enter your name" maxlength="25">
				<input	type="email" name="email" id="email" placeholder="Enter your email"> 
				<input type="number" name="number" id="number" placeholder="Enter your mobile number" maxlength="10">
			<input type="password" name="password" id="password"
				placeholder="Enter your password" maxlength="10"> <input type="password"
				name="confirmpassword" id="confirmpassword" placeholder="Enter your password again" maxlength="10" onkeyup="checkPass(); return false;">
            <span id ="confirmMessage" class="confirmMessage"></span>

			
			<br> <input type="radio" name="Male" id="Male" value="Male">Male <input
				type="radio" name="Female" id="Female" value="Female">Female <br>
			<br> <input type="submit" value="Submit Now">
		</form>
		<p id="invalid_1"></p>
		<p id="invalid_2"></p>
		<p id="invalid_2"></p>
		
</body>
</html>