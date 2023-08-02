<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		
	
<title>Insert title here</title>

	
<style>
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

h1{text-align:center;
color:blue;
}
table {
  border-collapse: collapse;
  width: 100%;
  border-style: solid;
}

th, td {
  text-align: left;
  padding: 9px;
    border: 1px solid #dddddd;
    
	</style>
</head>
<body>
	

     
	<h1 style="color:white;"> Admin Profile </h1>
<table bordercolor="#90EE90", bgcolor="white">
<c:forEach var= "ad" items="${adDetails}">
	
	<c:set var="id" value="${ad.id}"/>
	<c:set var="name" value="${ad.name}"/>
	<c:set var="email" value="${ad.email}"/>
	<c:set var="phone" value="${ad.phone}"/>
	<c:set var="username" value="${ad.userName}"/>
	<c:set var="password" value="${ad.password}"/>

	 
	
<tr> 
<td>ADMIN ID </td>																															
		<td>${ad.id}</td>
</tr>
<tr>
		<td>ADMIN Name</td>
		<td>${ad.name}</td>
</tr>
<tr>
		<td>ADMIN EMAIL</td>
		<td>${ad.email}</td>
</tr>
<tr>
		<td>ADMIN PHONE NUMBER</td>
		<td>${ad.phone}</td>
</tr>
<tr>
		<td>ADMIN USERNAME</td>
		<td>${ad.userName}</td>
</tr>



</c:forEach>
</table>
<c:url value="updateadmin.jsp" var="adupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="uname" value="${username}"/>
	<c:param name="pass" value="${password}"/>
		
</c:url>


<a href="${adupdate}">
<input type="submit" name="update" value="Update My Data">
</a>
	<br>
	<c:url value="deleteadmin.jsp" var="addelete">
		<c:param name="id" value="${id}" />
		<c:param name="name" value="${name}" />
		<c:param name="email" value="${email}" />
		<c:param name="uname" value="${username}" />
		<c:param name="pass" value="${password}" />
	</c:url>
	<a href="${addelete}">
	
	
	<input type="submit" name="delete" value="Delete My Account">
	
	</a>
	
	<form  method="link" action="login.jsp">
	<input type="submit" value="Logout"/>
	


</body>
</html>
	
	