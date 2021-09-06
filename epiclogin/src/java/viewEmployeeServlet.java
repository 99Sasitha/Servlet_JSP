

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


@WebServlet(urlPatterns = {"/viewEmployeeServlet"})
public class viewEmployeeServlet extends HttpServlet {

    
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
            
            String sql;
            
            sql="select * from employees";
            
            Statement sts=con.createStatement();
            rs=sts.executeQuery(sql);
            
            out.println("<head>\n" +
"        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n" +
"        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\n" +
"        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js\" integrity=\"sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p\" crossorigin=\"anonymous\"></script>\n" +
"<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js\" integrity=\"sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF\" crossorigin=\"anonymous\"></script>\n" +
"\n" +
"        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
"        <title>Epic Technology</title>\n" +
"    </head>");
            
            
            out.println("<body style=\"background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') \">");
            
            response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires","0");
            
            out.println("<header>");
            out.println("<nav class=\"nav nav-pills nav-fill\" style=\"margin-top: 15px;color:white;padding:10px;background-color: beige\">\n" +

"            <a class=\"nav-link \" aria-current=\"page\" href=\"lodin.jsp\" style=\"border-right: gray;border-style: inset\" onclick='addEmployeeConfirm()'>Add Employee</a>\n" +
"  <a class=\"nav-link\" href=\"viewEmployeeServlet\" style=\"border-right: gray;border-style: inset\">View Employees</a>\n" +
                    "            <a class=\"nav-link\" href=\"adminMain.jsp\" style=\"border-right: gray;border-style: inset\">Staff Details</a>\n" +
"  <a class=\"nav-link\" href=\"MoreDetails.jsp\" style=\"border-right: gray;border-style: inset\">More Details</a>\n" +
"  <form action='logoutServlet'><button style=\"color:white;background-color: red;font-weight: bold\">__Log Out__</button></form>\n" +
" \n" +
"</nav>\n" +
"        <hr>");
            
            out.println("</header>");
            
             
            
            out.println("<h1 style='text-align:center;margin:20px;letter-spacing:0.3em'>Employee Details</h1>");
            out.println("<hr>");
            
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            
            out.println("<Center>");
            
          
            out.println("<table border='0' width='1000px' height='100px' cellspacing='0.1' style='background-color: lightskyblue;padding:20px;text-align:center;border-radius:20px'>");
            out.println("<tr>");
            
            out.println("<th style='padding:10px'> Employe Id</th>");
            out.println("<th> First Name</th>");
            out.println("<th> Last Name</th>");
            out.println("<th> Email</th>");
             out.println("<th> Date Time</th>");
             out.println("<th> Login User</th>");
             out.println("<th> Login Admin</th>");
            out.println("<th> Edit</th>");
            out.println("<th> Delete</th>");
            
            
            out.println("</tr>");
            
            
            while(rs.next()){
                
               
            out.println("<tr>");
            out.println("<td>" + rs.getString("empid")+ "</td>");
            out.println("<td>" + rs.getString("firstname")+ "</td>");
            out.println("<td>" + rs.getString("lastname")+ "</td>");
            out.println("<td>" + rs.getString("email")+ "</td>");
             out.println("<td>" + rs.getString("DateTime")+ "</td>");
             out.println("<td>" + rs.getString("loginUser")+ "</td>");
             out.println("<td>" + rs.getString("loginAdmin")+ "</td>");
            
            
            out.println("<td style='text-align:center'>" +"<a href='EditServlet?id="+rs.getString("empid")+"'>"
                    + "<button style='background-color:green;margin:10px;padding:5px;color:white;border-radius:10px'>__Edit__</button>"
                    + "</a>"+"</td>");
            
            
           
            
            
            out.println("<td style='text-align:center'>" +"<a href='DeleteServelet?id="+rs.getString("empid")+"'>"
                    + "<button style='background-color:red;margin:10px;padding:5px;color:white;border-radius:10px' >__Delete__</button></a>"+"</td>");
            
            
            
            
            out.println("</tr>");
            
            }
            
            
            
            
            
            out.println("</table>");
            
            out.println("</center>");
             
            
            out.println("<script>function addEmployeeConfirm(){alert('Are you want to add new user to the System..?You have to login again..')}</script>");
            
            
            
        } catch (Exception e) {
            
            
        }
        
        
        
        
        
        
        
        
        
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
