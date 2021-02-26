<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
</head>
<style>
.login-form
{
margin:200px auto;
width:400px;
}
</style>
<body>



	<div class="login-form">
		<form name="new" action="Emp" method="GET">
			<h2 class="text-center">Login Page</h2>
			
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="Enter User Code" required="required" name="code">
			</div>
			
			<div class="form-group">
				<input type="password" class="form-control" placeholder="Enter Password"
					required="required" name="pass">
			</div>
			
			 
			<center>
			<!-- 	<div class="form-group">
					<label for="sel1">Unit Of Sales</label> <select class="form-control"
						name="rank">
						<option>500</option>
						<option>1000</option>
						<option>3</option>
					</select>
				</div> -->

			</center>
			<br>
			<div class="form-group">
				<input type="submit" class="btn warning btn-block" value="Submit">
			</div>
	</div>




</body>
</html>