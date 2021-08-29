

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/employeServlet"})
//@WebServlet("/employeServlet")
public class employeServlet extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    int row;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb","root","");
            String firstname=request.getParameter("firstname");
            String lastname=request.getParameter("lastname");
            String email=request.getParameter("email");
           String username= request.getParameter("username");
            
            if(!(firstname.equals("")||lastname.equals("")||email.equals(""))){
            
            
            
            
            
            pst=con.prepareStatement("insert into employees(empid,firstname,lastname,email,loginUser,loginAdmin) values(null,?,?,?,?,?) ");
            pst.setString(1, firstname);
            pst.setString(2, lastname);
            pst.setString(3, email);
             pst.setString(4, username);
             pst.setString(5, "-");
            
            row=pst.executeUpdate();
            
            
            
            out.println("<title>E p i c__T e c h n o l o g y</title>");
            
            
            request.setAttribute("username",username);
                RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
                rd.forward(request, response);
            
            out.println("<font color='green'><h1>Employee Added Successfully</h1></font><a href='home.jsp'><button style='margin:20px;padding:15px;border-radius:15px;font-weight:bold;color:white;background-color:green'>__ok__</button></a>");
            }else{
            
            out.println("<h1>Please fill All the Details</h1>");
            
            out.println("<a href='home.jsp'><button style='margin:20px;padding:15px;border-radius:15px;font-weight:bold;color:white;background-color:green'>__Try Again__</button></a>");
            }
            
        } catch (Exception e) {
            
            out.println("<font color='red'>Employee Added Fail__Please Enter Unique Email </font>"+e);
        }
        
        
        
        
        
        
        
        
        
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
