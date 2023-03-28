<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body style="background-image: url('https://media.istockphoto.com/vectors/empty-blank-pastel-faded-pale-very-light-sky-blue-and-white-coloured-vector-id1355217474?b=1&k=20&m=1355217474&s=170667a&w=0&h=iFvjFzoWYJSEL36G41H0uPJbxOQfJJC6_LmMYiM5wVs='); background-size: 100%;">
<div  style=" text-align: center; padding:30px;">
		<h1>Welcome to Online Bank</h1>
		<form action="login" method="post">
		<div style="padding: 10px;">
		Email : <input type="email" name="email"> 
		</div>
		<div style="padding: 10px; padding-left: 20px;">
		PIN : <input type="password" name="pin" > 
		</div>
		<button class="btn btn-info" >Login</button>
		</form>
		<c:out value="Dont have and account ??" />
		<a href="SignUp.jsp">SignUp</a>
</div>
</body>
</html>