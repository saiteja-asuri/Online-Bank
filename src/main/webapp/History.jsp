<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Transaction History</title>
</head>
<body style="background-image: url('https://media.istockphoto.com/vectors/empty-blank-pastel-faded-pale-very-light-sky-blue-and-white-coloured-vector-id1355217474?b=1&k=20&m=1355217474&s=170667a&w=0&h=iFvjFzoWYJSEL36G41H0uPJbxOQfJJC6_LmMYiM5wVs='); background-size: 100%;">
	<div style="padding: 80px;">
	<h1 style="color:blue;">Transaction History</h1>
	<sql:setDataSource var="transacs" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/demo" user="saiteja" password="sai1234" />
	<sql:query var="rs" dataSource="${transacs }"> select * from Transactions where acc_number = "${ user.getAcc_number()}"</sql:query>
	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Amount</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${rs.rows }" var="trs">
		<tr> 
		<td> <c:out value="${trs.dot}" /> </td>
		<td> <c:out value="${trs.amount }" /> </td>
		</tr>
	</c:forEach>
  </tbody>
</table>
</div>
</body>
</html>