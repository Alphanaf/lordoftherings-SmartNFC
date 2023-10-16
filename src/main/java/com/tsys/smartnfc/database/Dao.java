package com.tsys.smartnfc.database;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import com.tsys.smartnfc.model.CustomerDetails;

public class Dao {
	static DatabaseConnection db=new DatabaseConnection();
	
public static void stopConnection(Connection con) {
	try {
		con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public void insertUserInfo(CustomerDetails custInfo) throws ClassNotFoundException {
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		
		PreparedStatement pstmt = conn.prepareStatement(Queries.addUser);
		pstmt.setString(1, custInfo.getUserName());
		pstmt.setInt(2, custInfo.getUserPin());
		pstmt.setLong(3, custInfo.getCardNumber());
		pstmt.setString(4,"4.123.61.82");
		pstmt.setString(5, custInfo.getCardType());
		pstmt.setInt(6, custInfo.getAccountNumber());
		
		 pstmt.execute();
		System.out.println("Inserted records into the table...");   
		
		stopConnection(conn);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public void addTransactions(CustomerDetails custInfo) throws ClassNotFoundException {
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		
		PreparedStatement pstmt = conn.prepareStatement(Queries.addTransactions);
		
		pstmt.setInt(1, custInfo.getAmount());
		pstmt.setString(2, custInfo.getUserName());
		pstmt.setString(3, custInfo.getCardType());
		pstmt.execute();
		System.out.println("Inserted records into the Transaction table...");   
		stopConnection(conn);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
public List<CustomerDetails> getCustomer(String tagId) throws ClassNotFoundException {
	
	List<CustomerDetails> custDetails=new ArrayList<CustomerDetails>();
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		PreparedStatement pstmt = conn.prepareStatement(Queries.getUser);
		pstmt.setString(1, tagId);
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next()) {
			CustomerDetails cust=new CustomerDetails();
			  String userName = rs.getString("name");
		      String cardType = rs.getString("cardtype");
		      Long cardNumber =rs.getLong("cardnumber");
		      int userPin=rs.getInt("userpin");
		      cust.setUserName(userName);
		      cust.setCardType(cardType);
		      cust.setCardNumber(cardNumber);
		      cust.setUserPin(userPin);
		      cust.setTagId(tagId);
		      custDetails.add(cust);
		}
		stopConnection(conn);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return custDetails;
	
}

public  List<CustomerDetails> getTransactions() throws ClassNotFoundException {
	List<CustomerDetails> custList=new ArrayList<CustomerDetails>();
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		
		PreparedStatement pstmt = conn.prepareStatement(Queries.getTransactions);
		
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next()) {
			CustomerDetails cust=new CustomerDetails();
			  String userName = rs.getString("userName");
		        int amount = rs.getInt("amount");
		        String cardType = rs.getString("cardtype");
		        cust.setUserName(userName);
		        cust.setAmount(amount);
		        cust.setCardType(cardType);
		        custList.add(cust);
		}
		stopConnection(conn);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return custList;
	
}
public  List<CustomerDetails> getCustomerList() throws ClassNotFoundException {
	List<CustomerDetails> custList=new ArrayList<CustomerDetails>();
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		
		PreparedStatement pstmt = conn.prepareStatement(Queries.getCustomerList);
		
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next()) {
			CustomerDetails cust=new CustomerDetails();
			  String userName = rs.getString("name");
			  String cardType = rs.getString("cardtype");
		      Long cardNumber = rs.getLong("cardnumber");
		
		        cust.setUserName(userName);
		      
		        cust.setCardNumber(cardNumber);
		        cust.setCardType(cardType);
		        custList.add(cust);
		}
		stopConnection(conn);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return custList;
	
}

public String getTagId(String UserName) throws ClassNotFoundException {
	String tagId="";
	try {
		Class.forName("org.h2.Driver");
		Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "root");
		PreparedStatement pstmt = conn.prepareStatement(Queries.getTAGID);
		pstmt.setString(1, UserName);
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next()) {
			  tagId = rs.getString("tagid");
		}
		stopConnection(conn);
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return tagId;
}
 
	

}
