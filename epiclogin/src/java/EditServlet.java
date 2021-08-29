

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/EditServlet"})
public class EditServlet extends HttpServlet {

   
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
        
        String id=request.getParameter("id");//get id
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb","root","");
            pst=con.prepareStatement("select *from employees where empid= ?");
            pst.setString(1, id);
             rs=pst.executeQuery();
             
             while(rs.next()){
                 
                 out.println("<title>E p i c__T e c h n o l o g y</title>");
                   out.println("<h1 style='text-align:center;margin:20px;letter-spacing:0.3em'>Edit Employee Details</h1>");
             out.println("<hr>");
             
             out.println("<body style=\"background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') \">");
             
             
             
              out.println("</table  >");
             out.println("</form  >");
             out.println("<a href='viewEmployeeServlet'>"
                  + "<button style='margin:20px;padding:15px;border-radius:15px;font-weight:bold;color:white;background-color:red'>__Cancel__</button>"
                  + "</a>");
             
             out.println("<form action='EditReturnToTableServlet' method='POST' style='margin:25px; margin-right:50%; background-color:lightgreen;border-radius:20px;'>");
             out.println("<table style='text=align:center;padding:20px' >");
             out.println("<tr style='padding:15px'><td>Employee ID : </td>  <td><input required type='text' name='id' value='"+rs.getString("empid")+"'></td> </tr>");
             out.println("<tr><td>First Name : </td>  <td><input required type='text' name='firstname' value='"+rs.getString("firstname")+"'></td> </tr>");
             out.println("<tr><td>Last Name : </td>  <td><input required type='text' name='lastname' value='"+rs.getString("lastname")+"'></td> </tr>");
             out.println("<tr><td>Email : </td>  <td><input  required type='text' name='email' value='"+rs.getString("email")+"'></td> </tr>");
             
             
             out.println("<tr><td colspan='2'><input type='submit' name='submit' value='__Save__' style='margin:20px;padding:15px;border-radius:15px;font-weight:bold;color:white;background-color:green'></td> </tr>");
             
             
             
              
             
             
             
             
            
             
             }
            
            
            
            
            
        } catch (Exception e) {
            
            out.println(e);
        }
        
        
        
        
        
        
        
        
        
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
