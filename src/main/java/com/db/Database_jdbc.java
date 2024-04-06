package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class Database_jdbc {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("create table credentials(id number(20),name varchar(30),password varchar(50),confirm_password varchar(50))");
		PreparedStatement ps = conn.prepareStatement("insert into credentials values(?,?,?,?)");
		ps.setString(1,"123");
		ps.setString(2, "sumeddha");
		ps.setString(3, "uiooj");
		ps.setString(4, "yuikj");
		ps.execute();
		System.out.println("Executed");
		conn.close();
	}

}
