<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>

<body bgcolor="#353935">
<style>

{
background-color:black;
}
h1
{
color:green;
text-align:center;
}
p
{
font-family:"Times New Roman";
font-size:20px;
color:red;
}
/* Bordered form */
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
   background-color:white;
  width: 60%;
  padding: 20px 40px;
  margin: 8px 0;
  display: inline-block;
 
}


/* Center the avatar image inside this container */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
}




		input[type=submit],input[type=button]{
  width: 300px;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  input[type=submit]:hover {
  background-color: #90EE90;
  
}  border-radius: 4px;
  cursor: pointer;
}

h1{text-align:center;
color: #90EE90;


</style>


<h1>Admin Login Page</h1>
<form action="log" method="post">
		<h3 style="color:white;"> User Name </h3> <input type="text" name="uid" placeholder="Enter your username"><br>
		<h3 style="color:white;"> Password </h3> <input type="password" name="pass" placeholder="Enter your password"><br>
		<input type="submit" name="submit" value ="Login"> <br>
				
		<input type="Button" value="Create New Account" onclick="window.location='admininsert.jsp'" >
	</form>

</body>
</html>