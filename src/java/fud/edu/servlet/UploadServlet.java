/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package fud.edu.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author nguye
 */
@MultipartConfig
@WebServlet("/upload")
public class UploadServlet extends HttpServlet {

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("form.jsp").forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //duong dan thu muc tinh tu goc cua website
        File dir = new File("D:\\JavaWeb\\Day3_Lab\\web\\fpoly\\files");
        if(!dir.exists()){
            dir.mkdir();
        }
        //luu cac file upload vao cac thu muc files
        Part photo =request.getPart("photo_file"); //luu hinh
        File photoFile = new File(dir, photo.getSubmittedFileName());
        photo.write(photoFile.getAbsolutePath());
        Part doc = request.getPart("doc_file");
        File docFile = new File(dir, doc.getSubmittedFileName());
        doc.getSubmittedFileName();
        doc.write(docFile.getAbsolutePath());
        
        //chia se cho result.jsp de hien thi
        request.setAttribute("img", photoFile);
        request.setAttribute("doc", docFile);
        
        request.getRequestDispatcher("Results.jsp").forward(request, response);
        
    }


}
