package com.tsys.smartnfc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tsys.smartnfc.database.Dao;
import com.tsys.smartnfc.model.CustomerDetails;

public class registrationController extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	Dao db=new Dao();
	try {
		List<CustomerDetails> custList= db.getCustomerList();
		
		request.setAttribute("custList", custList);
		RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");  
			    rd.forward(request, response);
		
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
	
	
protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	Dao db=new Dao();
		String userName = request.getParameter("userName");
		String cardType = request.getParameter("cardType");
		int thumb =Integer.parseInt(request.getParameter("thumbId"));
		int userPin = Integer.parseInt(request.getParameter("userPin"));
		Long cardNumber = Long.parseLong(request.getParameter("cardNumber"));
		//int accountNumber = Integer.parseInt(request.getParameter("accountNumber"));
		
		CustomerDetails cust = new CustomerDetails();
		cust.setUserName(userName);
		cust.setCardNumber(cardNumber);
		cust.setCardType(cardType);
		cust.setUserPin(userPin);
		cust.setThumb(thumb);
		//cust.setAccountNumber(accountNumber);
	
		cust.setTagId("4.123.61.82");
		try {
			db.insertUserInfo(cust);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("success", "success");
		doGet(request, response);

		
	} 
	
	

	}

