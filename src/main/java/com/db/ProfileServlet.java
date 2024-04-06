package com.db;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String id = request.getParameter("idno");
    String fullName = request.getParameter("user[name]");
    
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<head>");
    out.println("<title>Profile Page</title>");
    out.println("</head>");
    out.println("<body>");
    out.println("<h1>Welcome, " + id + "!</h1>");
    out.println("<p>Username: " + fullName + "</p>");
    out.println("</body>");
    out.println("</html>");
  }
}

