<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enquiry</title>
</head>
<body style=" text-align:center; font-size: 20px" 
 background-image: url('https://media.istockphoto.com/vectors/empty-blank-pastel-faded-pale-very-light-sky-blue-and-white-coloured-vector-id1355217474?b=1&k=20&m=1355217474&s=170667a&w=0&h=iFvjFzoWYJSEL36G41H0uPJbxOQfJJC6_LmMYiM5wVs='); background-size: 100%;">
	Account Number : <c:out value="${user.getAcc_number() }" /> <br />
	Email : <c:out value="${user.getEmail()}" /> <br />
	Balance : <c:out value="${user.getBalance() }" /> <br />
	<h5>Thank You visit Again</h5>
</body>
</html>