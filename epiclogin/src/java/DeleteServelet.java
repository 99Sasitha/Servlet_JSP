/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

/**
 *
 * @author Sasitha Munasinghe
 */
@WebServlet(urlPatterns = {"/DeleteServelet"})
public class DeleteServelet extends HttpServlet {

  Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

   
    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
     
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb","root","");
            
          String id=request.getParameter("id");
          
          
          pst=con.prepareStatement("delete from employees where empid= ?");
          
         
          
          pst.setString(1, id);
          
          row=pst.executeUpdate();
          
          response.sendRedirect("viewEmployeeServlet");
          
          
           
            
            
            
        } catch (Exception e) {
            
             out.println("<font color='red'><h1>_____Delete Faild_____</h1></font>" + e);
        }
        
        
        
        
        
        
        
        
        
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
