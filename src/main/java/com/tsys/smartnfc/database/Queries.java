package com.tsys.smartnfc.database;

public class Queries {
public static final String addUser="insert into custinfo (name,userpin,cardnumber,tagid,cardtype,accountname) values(?,?,?,?,?,?)";
public static final String addTransactions="insert into transactions (amount,userName,cardtype)values(?,?,?)";
public static final String getTransactions="select * from transactions";
public static final String getUser="select name,userpin,cardnumber,tagid,cardtype from custinfo where tagid=?";
public static final String getCustomerList="select distinct cardNumber , Name,cardtype  from custinfo";
public static final String getTAGID="select tagid from custinfo where name=?";
}
