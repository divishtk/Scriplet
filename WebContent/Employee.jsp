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
	
	<style>
	
	.login-form
	{
		width:290px;
		margin:50px auto;
		
	
	
	}
	
	</style>
</head>
<body>


	 <%@ page import = "java.sql.*" %>

<%   

// 	HttpSession se=request.getSession();
// 	String c,name,salary,sales;
	
// 	c=request.getParameter("code");
// 	name=request.getParameter("emp");
// 	salary=request.getParameter("sal");
// 	sales=request.getParameter("sales");
	
// 	se.setAttribute("codee",c);
// 	se.setAttribute("na",name);
// 	se.setAttribute("sal",salary);
// 	se.setAttribute("sale",sales);

	
		

String icode="";
	String name="";


try{


	//HttpSession hs=null; 
	

icode=session.getAttribute("code").toString();
name=session.getAttribute("naa").toString();
}


catch(Exception e)
{
	
	System.out.println(e);
	
	
}


%>

	<div class="login-form">
		<form name="new" action="Details.jsp" method="POST">
			
			<h4><center>Your Code is <%=icode %></center></h4>
				<h4><center>Your Name is <%=name %></center></h4>
		
		
			<h2 class="text-center">Employee Details</h2>
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="Enter Employee Code" required="required" name="code">
			</div>
			<div class="form-group">
				<input type="text" class="form-control"
					placeholder="Enter Employee Name" required="required" name="emp">
			</div>
			
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter Salary"
					required="required" name="sal">
			</div>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Enter Unit Of Sales"
					required="required" name="sales">
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
				<input type="submit" class="btn btn-primary btn-block" value="Submit">
			</div>
	</div>






</body>
</html>