<%@page import="com.sun.crypto.provider.RSACipher"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
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
.t {
	margin: 200px;
}

.lol
{

margin: 0 auto;
width:290px;

}
</style>
<body>
 <%@ page import = "java.sql.*" %>
	<%
 	String ename;
 	double bonus=0;
	String empcode="";
 	int basic;
 	int saless;


		
		
		
		
	
	String c,name,salary,sales;
	
	
	String coo="";
	String  naa="";
	String saa="";
	String saales="";
	
	PrintWriter o=response.getWriter();


	c=request.getParameter("code");
	name=request.getParameter("emp");
	salary=request.getParameter("sal");
	sales=request.getParameter("sales");
	HttpSession se=request.getSession();

	se.setAttribute("codee",c);
	se.setAttribute("na",name);
	se.setAttribute("sal",salary);
	se.setAttribute("sale",sales);
		 
		
	
		
//ArrayList al = (ArrayList)se.getAttribute("codee");
		empcode=(String)se.getAttribute("codee");
		System.out.println("Code is "+empcode);
		
	
		ename=se.getAttribute("na").toString();
		
		basic=Integer.parseInt(se.getAttribute("sal").toString());
		
		
		saless=Integer.parseInt(se.getAttribute("sale").toString());
		



	try
	{
		
				Class.forName("com.mysql.cj.jdbc.Driver");
				 Connection dbConn = DriverManager.getConnection(
		                    "jdbc:mysql://localhost:3306/Employee?useSSL=false&allowPublicKeyRetrieval=true", "root", "ilovemaster");
				 
	


			
		            PreparedStatement ps = dbConn.prepareStatement("insert into emp (empcode,empname,empsal,empsales) values (?,?,?,?)");
		            
		            
		            ps.setString(1,empcode);
		            ps.setString(2,ename);
		            ps.setInt(3,basic);
		            ps.setInt(4,saless);


					int i=ps.executeUpdate();
					
					if(i>0)
					{
						
						System.out.println("Row Updated");
						
						
					}

					else
					{
						System.out.println("Row Not Updated");
						
					}
					
					
					Statement statement=dbConn.createStatement();
					
					ResultSet rs=statement.executeQuery("select * from emp");
					
					while(rs.next())
					{
						
						
						//coo=rs.getString(1);
						//naa=rs.getString(2);
						//saa=rs.getString(3);
						//saales=rs.getString(4);
						
						
						//se.setAttribute("coo",coo);
						//se.setAttribute("naa",naa);
						//se.setAttribute("saa",saa);
						//se.setAttribute("saales",saales);
						
						
					}
					
					
	}
	catch(Exception e)
	{
		
		System.out.println(e);
		
	}



		
		
		
	%>
	
	
	
	
	
	<div class="t">
	
		
	
		<table class="table table-borderless">
			<thead>
				<tr>
					<th>Employee Codee</th>
					<th>Employee Name</th>
					<th>Salary</th>
					<th>Unit Of Sales</th>
					<th>Total Salary</th>
				</tr>
			</thead>
			<tbody>
			
			<%
			
			 Connection dbConn = DriverManager.getConnection(
	                    "jdbc:mysql://localhost:3306/Employee?useSSL=false&allowPublicKeyRetrieval=true", "root", "ilovemaster");
			 

			Statement statement=dbConn.createStatement();
			
			ResultSet rs=statement.executeQuery("select * from emp");
			
			while(rs.next())
			{
				
				
				//coo=rs.getString(1);
				//naa=rs.getString(2);
				//saa=rs.getString(3);
				//saales=rs.getString(4);
				
				
				//se.setAttribute("coo",coo);
				//se.setAttribute("naa",naa);
				//se.setAttribute("saa",saa);
				//se.setAttribute("saales",saales);
				
				
		
			
			%>
			

				<tr>
					<td>
				
				
<%-- 				<%=empcode  %> --%>
				
<%-- 				<%se.getAttribute("coo"); %> --%>
<%-- 					<%out.println(coo);%> --%>

					
				
					<%=rs.getString("empcode") %>
					
					
					</td>
				
					<td>
					
<%-- 					<%=ename %> --%>
						
<%-- 									<%out.println(naa);%> --%>
										<%=rs.getString("empname") %>
					</td>
					
					
					<td>
					
<%-- 					<%=basic %> --%>

<%-- 										<%out.println(saa);%> --%>
											<%=rs.getString("empsal") %>
					</td>
					
					<td>
<%-- 					<%=sales%> --%>
					
<%-- 										<%out.println(saales);%> --%>
											<%=rs.getString("empsales") %>
					
					</td>
					
					<td>
					<%
						
							if(saless<500)
							{
							bonus=basic+(basic*(0.10));
							}
							else if(saless>500 && saless<1000)
							{
								bonus=basic+(basic*(0.10));
							}
							else if(saless>1000)
							{
								bonus=basic+(basic*(0.20));
							}
							out.println(bonus);
					
					
					
							 %>
							 </td>


				</tr>
				<%
				
			}
				
				%>
				
			</tbody>



		</table>
		<div class="form-group lol" >
				<input type="submit"  onClick="window.location.href='Employee.jsp'" class="btn btn-primary btn-block" value="Go Back" src="Employee.jsp">
				<input type="submit"  onClick="window.location.href='Logout'" class="btn btn-primary btn-block" value="LogOut" src="Employee.jsp">
			 
				
			</div>
		
	
	</div>

</body>
</html>