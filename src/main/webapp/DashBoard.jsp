<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Dashboard</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body style="background-image: url('https://media.istockphoto.com/vectors/empty-blank-pastel-faded-pale-very-light-sky-blue-and-white-coloured-vector-id1355217474?b=1&k=20&m=1355217474&s=170667a&w=0&h=iFvjFzoWYJSEL36G41H0uPJbxOQfJJC6_LmMYiM5wVs='); background-size: 100%;">
<div style="padding: 80px;">
	<h1>Welcome to Online Bank</h1>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("user")==null)
	{
		response.sendRedirect("Login.jsp");
	}
	%>
	<div>
		<button class="btn btn-info"><a href="Debit.jsp" style="color:white;">Debit Cash</a></button>
	</div> <br />
	<div>
		<button class="btn btn-info" ><a href="Credit.jsp" style="color:white ;">Credit Cash </a></button>
	</div> <br />
	<div>
		<button class="btn btn-info"><a href="Enquiry.jsp" style="color:white ;"> Balance Enquiry </a></button>
	</div> <br />
	<div>
		<button class="btn btn-info"><a href="History.jsp" style="color:white ;"> Transaction History </a></button>
	</div> <br />
	<div style="text-align: right;">
	<form action="logout" method="post">
		<button class="btn btn-danger">LogOut</button>
	</form>
	</div>
</div>		
</body>
</html>