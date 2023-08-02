 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	
	<style>
		* {box-sizing: border-box}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}

input[type=submit] {
  width: 300px;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
	</style>
</head>
<body>

     	<h1 style="color:white;"> Registration Form</h1>
  	
  	<form action="insert" method= "post">
  	 <h5 style="color:#98FB98;"> Name </h5>  <input type="text" name="name"><br>
  	 <h5 style="color:#98FB98;"> Email </h5>  <input type="text" name="email"><br>
     <h5 style="color:#98FB98;"> Phone Number </h5>  <input type="text" name="phone"><br>
     <h5 style="color:#98FB98;"> User Name </h5>  <input type="text" name="uid"><br>
     <h5 style="color:#98FB98;"> Password </h5>  <input type="password" name="psw"><br>
    
    <input type="submit" name="submit" value="Create New Admin Account">
  </form>	
     	
 
</body>
</html>