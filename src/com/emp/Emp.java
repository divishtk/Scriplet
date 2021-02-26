package com.emp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Emp")
public class Emp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Emp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		 System.out.println("GET login servlet");
		  
		  String code;
		  String password;
		  String ic;
		  String iname="";
		  boolean exist=false;
		  boolean flag=false;
		  HttpSession hs=null;
		  try
		  {
			  code = request.getParameter("code");
	            password = request.getParameter("pass");
	            
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection dbConn = DriverManager.getConnection(
	                    "jdbc:mysql://localhost:3306/Employee?useSSL=false&allowPublicKeyRetrieval=true", "root", "ilovemaster");
	            dbConn.setAutoCommit(false);
	            PreparedStatement ps = dbConn.prepareStatement(
	                  "select * from employee where code=? and password=?");
	     
	            ps.setString(1, code);
	            ps.setString(2, password);
	            
	            ResultSet rs = ps.executeQuery();
	            while (rs.next())
	            {
	                exist = true;
	                String codee = rs.getString(1);
	                String pass1 = rs.getString(2);
	                String na1=rs.getString(3);
	                flag = (code.equalsIgnoreCase(code) && password.equalsIgnoreCase(password) ? true : false);
	                if(flag){
	                    hs = request.getSession();
	                    hs.setAttribute("code",code );
	                    hs.setAttribute("pass", pass1);
	                    hs.setAttribute("naa",na1);
	                }

	                
	            
	            }
	            if (exist) {
	                if (flag) {
	                    System.out.println("hi get");
	                    response.sendRedirect("Employee.jsp");
	                }
	               
		  }
	            else
                {
                	
                	response.sendRedirect("error.jsp");
                	
                }
		  }
		  catch(Exception e)
		  {
			  
			  e.printStackTrace();
			  
		  }
		  
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

}
