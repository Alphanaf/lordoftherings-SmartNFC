package com.tsys.smartnfc.controller;



import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
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


public class NfcController extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;
	Dao db=new Dao();
 Long modifiedTIme=new File("C:\\NFC\\id.txt").lastModified();
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
		if(PaymentMessage.contains("Received")) {
		
		   out.println("<script type=\"text/javascript\">");
	      // out.println("alert('"+PaymentMessage+" Ruppes');");
	       out.println("Swal.fire('Good job!','You clicked the button!','success')");
	       out.println("</script>");
		}else if(PaymentMessage.equals("Incorrect")){
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Incorrect User Pin');");
		       out.println("</script>");
		}
		else {
			out.println("<script type=\"text/javascript\">");
		       out.println("alert('Customer added SuccessFully');");
		       out.println("</script>");
		}
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
	        rd.include(request, response);  
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		String action=request.getParameter("addCustomer");
		if(action.equals("Authenticate")) {
		try {
		
				String res=gettagID();
		
			if(!res.isBlank() || !res.equals("")) {
				List<CustomerDetails> custList=db.getCustomer(res);
				request.setAttribute("custDetail", custList);
				RequestDispatcher rd=request.getRequestDispatcher("home");  
		        rd.include(request, response);  
				}else {
					List<CustomerDetails> custList= db.getTransactions();
					request.setAttribute("custList", custList);
					out.println("<script type=\"text/javascript\">");
				       out.println("alert('InValid User');");
				       out.println("</script>");
						    RequestDispatcher rd=request.getRequestDispatcher("home");  
						    rd.forward(request, response);
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			
			String userName = request.getParameter("userName");
			String tagId = request.getParameter("tagId");
			System.out.println("Tag Id Is"+tagId);
			int amount = Integer.parseInt(request.getParameter("amountT"));
			int passcode=Integer.parseInt(request.getParameter("userPIN"));
			String cardType = request.getParameter("cardTypeT");
			
			try {
				if(passcode!=getPassword(tagId)){
					String payment="Incorrect";
					request.setAttribute("paymentsuccess", payment);
					doGet(request,response);
				}else {
				
				if(cardType !=null) {
					cardType="****_****_****_"+cardType.substring(12);
				}
				CustomerDetails cust=new CustomerDetails();
				cust.setUserName(userName);
				cust.setAmount(amount);
				cust.setCardType(cardType);
				try {
					db.addTransactions(cust);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				String payment="Received "+amount;
				request.setAttribute("paymentsuccess", payment);
				doGet(request,response);
				}
			} catch (ClassNotFoundException | ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
	}
	
	public int getPassword(String tagId) throws ClassNotFoundException {
		
		List<CustomerDetails> cl= db.getCustomer(tagId);
		return cl.get(0).getUserPin();
		
	}
	
	public String gettagID() throws IOException, InterruptedException {
		
		 long  NewmodifiedTIme=new File("C:\\NFC\\id.txt").lastModified();
		 System.out.println("U"+NewmodifiedTIme);
		 System.out.println("o"+modifiedTIme);
		 String result="0";
		 while(modifiedTIme==NewmodifiedTIme) {
			 Thread.sleep(7000);   
			 System.out.println("wating for file to get updated");
		  try {
				BufferedReader br =new BufferedReader(new FileReader("C:\\NFC\\id.txt"));
			String line=br.readLine();
			while(line !=null) {
				if(line.contains("tagId is : "))
				{
			result=line.split(" ")[3];
			System.out.println("Result is " + result);
				}else {
					result="0";
				}
			line=br.readLine();
			}
			br.close();
			}catch (FileNotFoundException e) {
				System.out.println("File Not Found");
				
			}
		  NewmodifiedTIme=new File("C:\\NFC\\id.txt").lastModified();
		  
		 }
		 modifiedTIme=new File("C:\\NFC\\id.txt").lastModified();
		   return result;
		  
	  }
   
	
}
