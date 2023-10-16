package com.tsys.smartnfc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tsys.smartnfc.database.Dao;
import com.tsys.smartnfc.model.CustomerDetails;

public class HomeController extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	Dao db=new Dao();
	try {
		List<CustomerDetails> custList= db.getTransactions();
		request.setAttribute("custList", custList);
		
		List<CustomerDetails> cust=(List<CustomerDetails>)request.getAttribute("custDetail");
		 if(cust!=null){
			request.setAttribute("custDetail",cust);
			 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			    rd.forward(request, response);
		} 
		 else {
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
		    rd.forward(request, response);
		}
		
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
	
	
protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	System.out.println("In HOme");
	
	Object invalidUser=request.getAttribute("invalidUser");
	List<CustomerDetails> cust=(List<CustomerDetails>) request.getAttribute("custDetail");
	request.setAttribute("custDetail",cust);
	request.setAttribute("invalidUser",invalidUser);
	doGet(request, response);
	
}
	}

