<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body style="background-image: url('https://media.istockphoto.com/vectors/empty-blank-pastel-faded-pale-very-light-sky-blue-and-white-coloured-vector-id1355217474?b=1&k=20&m=1355217474&s=170667a&w=0&h=iFvjFzoWYJSEL36G41H0uPJbxOQfJJC6_LmMYiM5wVs='); background-size: 100%;">
	<div  style=" text-align: center; padding:30px;">
		<h1>Welcome to Online Bank</h1>
		<form action="AddUser" method="post">
		<div style="padding: 10px;">
		Account Number : <input type="text" name="acc_number" > 
		</div>
		<div style="padding: 10px; padding-left:90px;">
		Email : <input type="email" name="email"> 
		</div>
		<div style="padding: 10px; padding-left: 60px;">
		Password : <input type="password" name="pin" > 
		</div>
		<div style="padding: 10px; padding-left: 55px;">
		Username : <input type="text" name="userName" > 
		</div>
		<div style="padding: 10px; padding-left: 95px;">
		Age : <input type="text" name="age" > 
		</div>
		<div style="padding: 10px; padding-left: 58px;">
		Address : <textarea rows="2" cols="22" name="address" ></textarea>
		</div>
		<button class="btn btn-info">SignUp</button>
	</form>
</div>
</body>
</html>