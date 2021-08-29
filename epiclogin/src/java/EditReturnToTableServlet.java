

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


@WebServlet(urlPatterns = {"/EditReturnToTableServlet"})
public class EditReturnToTableServlet extends HttpServlet {

    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    int row;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

   
    

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
     
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb","root","");
            
          String id=request.getParameter("id");
          String firstname=request.getParameter("firstname");
          String lastname=request.getParameter("lastname");
          String email=request.getParameter("email");
          
          pst=con.prepareStatement("update employees set firstname =? , lastname = ?, email = ? where empid = ?");
          
         
          pst.setString(1, firstname);
          pst.setString(2, lastname);
          pst.setString(3, email);
          pst.setString(4, id);
          
          row=pst.executeUpdate();
          
          out.println("<title>E p i c__T e c h n o l o g y</title>");
          
          out.println("<font color='green'><h1>Edit Success<h1></font>"
                  + "<a href='viewEmployeeServlet'>"
                  + "<button style='background-color:green;color:white;margin:25px;padding:20px;border-radius:15px'>__Goto View Employee Page__</button>"
                  + "</a>");
           
            
            
            
        } catch (Exception e) {
            
             out.println("<font color='red'>Edit Faild</font>" + e);
        }
        
        
        
        
        
        
        
        
        
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
