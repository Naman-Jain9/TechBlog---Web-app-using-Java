/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tech.blog.servlet;
        
       

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@MultipartConfig
public class RegisterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
            //fetching form data
            String check = request.getParameter("check");
           // out.println(check);
            if(check==null){
                out.println("check terms and conditions");
            }
            else{
                //baki ka yha nikalna h
                String name = request.getParameter("user_name");
                String email = request.getParameter("user_email");
                String password = request.getParameter("user_password");
                String gender = request.getParameter("gender");
                
                //create user obj and set data to user obj
                User user = new User(name,email,password,gender);
                
                
                
                //insert into db  with the help of NewClass class in which we already writen 
                //jdbc code
               UserDao dao = new UserDao(ConnectionProvider.getConnection());
             if(dao.saveUser(user)){
                   //out.println("done");
                   //storing session using HttpSession
	    	  HttpSession httpSession =request.getSession();
	    	  httpSession.setAttribute("MessageAfterRegis","You have successfully regstered.");
	    	  							//MessageAfterRegis is key
	    	  response.sendRedirect("Registerpage.jsp");
	    	  return;
               }
               else{
                 
                 //storing session using HttpSession
	    	  HttpSession httpSession =request.getSession();
	    	  httpSession.setAttribute("MessageAfterRegis","Check terms and conditions to tegister successfuly");
	    	  							//MessageAfterRegis is key
	    	  response.sendRedirect("Registerpage.jsp");
	    	  return;
                  // out.println("error")
               }
            }
            
            
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

   /* private NewClass NewClass(Connection connection) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }*/

}
