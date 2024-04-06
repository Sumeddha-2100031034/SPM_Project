package com.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */

public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		int id = Integer.parseInt(request.getParameter("idno"));
		String uname = request.getParameter("user[name]");
		String pass = request.getParameter("user[password]");
		String check_pass = request.getParameter("user[password2]");
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","admin");
			Statement stmt = conn.createStatement();
			stmt.execute("create table tab_pro(id number(20),name varchar(20),password varchar(20),confirm_password(20))");
			PreparedStatement ps = conn.prepareStatement("insert into tab_pro values(?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, uname);
			ps.setString(3, pass);
			ps.setString(4, check_pass);
			
			ps.execute();
			PrintWriter pw = response.getWriter();
			pw.write("<html>Success</html>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
