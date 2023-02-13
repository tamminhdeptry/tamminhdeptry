/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package fud.edu.servlet;

import fud.edu.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author nguye
 */
public class LoginServlet extends HttpServlet {

   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("MESSAGE", "");
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userName = request.getParameter("txtUserName");
        String password = request.getParameter("txtPassword");
        
        User u = new User(userName, password);
        if(u.checkLogin(userName, password)){
            request.getRequestDispatcher("Results.jsp").forward(request, response);
        }else{
            request.setAttribute("MESSAGE", "Username and password not exist");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }

    

}
