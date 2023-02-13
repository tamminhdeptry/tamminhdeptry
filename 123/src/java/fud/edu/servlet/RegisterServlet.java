/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package fud.edu.servlet;

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
public class RegisterServlet extends HttpServlet {

    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("Register.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String age = request.getParameter("age");
        String country = request.getParameter("country");
        String gender = request.getParameter("gender");
        String []hobbies = request.getParameterValues("hobbies");
        System.out.println("1111");
        request.setAttribute("username", username );
        request.setAttribute("age", age );
        request.setAttribute("country", country );
        request.setAttribute("gender", gender );
        request.setAttribute("hobbies", hobbies );
        
        request.getRequestDispatcher("RegisterResult.jsp").forward(request, response);
        
        
    }

    
}
