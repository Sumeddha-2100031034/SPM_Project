package com.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  
  private static final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
  private static final String DB_USER = "your_db_username";
  private static final String DB_PASSWORD = "your_db_password";

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try {
      // Load the Oracle JDBC driver
      Class.forName("oracle.jdbc.driver.OracleDriver");
      
      // Establish a connection to the Oracle database
      Connection connection = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
      
      // Prepare a SQL query to validate user credentials
      String query = "SELECT * FROM users WHERE username=? AND password=?";
      PreparedStatement statement = connection.prepareStatement(query);
      statement.setString(1, username);
      statement.setString(2, password);
      
      // Execute the query
      ResultSet resultSet = statement.executeQuery();
      
      // Check if the login is successful
      if (resultSet.next()) {
        String id = resultSet.getString("idno");
        String usern = resultSet.getString("user[name]");
        
        // Redirect to the profile page
        response.sendRedirect("ProfileServlet?username=" + username);
      } else {
        // Login failed, redirect back to the login page
        response.sendRedirect("login.jsp");
      }
      
      // Clean up resources
      resultSet.close();
      statement.close();
      connection.close();
      
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}

