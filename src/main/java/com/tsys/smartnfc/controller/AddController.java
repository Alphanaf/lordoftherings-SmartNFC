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


public class AddController extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Dao db=new Dao();
		response.setContentType("text/html");   
		PrintWriter pw = response.getWriter();  
		try {
			List<CustomerDetails> custList= db.getTransactions();
			request.setAttribute("custList", custList);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		
		String PaymentMessage=(String) request.getAttribute("paymentsuccess");
		if(PaymentMessage!= null) {
		
		   out.println("<script type=\"text/javascript\">");
	       out.println("alert('"+PaymentMessage+" Ruppes');");
	       out.println("</script>");
		}else {
			out.println("<script type=\"text/javascript\">");
		       out.println("alert('Customer added SuccessFully');");
		       out.println("</script>");
		}
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
	        rd.include(request, response);  
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("IN ADD POST");
		 response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		
		Dao db=new Dao();
			
		String userName = request.getParameter("userName");
		String cardType = request.getParameter("cardType");
		int userPin = Integer.parseInt(request.getParameter("userPin"));
		Long cardNumber = Long.parseLong(request.getParameter("cardNumber"));
		CustomerDetails cust = new CustomerDetails();
		cust.setUserName(userName);
		cust.setCardNumber(cardNumber);
		cust.setCardType(cardType);
		cust.setUserPin(userPin);
		
		try {
			db.insertUserInfo(cust);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("success", "success");
			doGet(request,response);
        
        out.close();  
		
	}
}
