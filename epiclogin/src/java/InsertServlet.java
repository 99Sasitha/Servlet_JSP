

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/InsertServlet"})
public class InsertServlet extends HttpServlet {
    
    Connection conn=null;
    PreparedStatement st= null;
    String dburl="jdbc:mysql://localhost:3307/epiclogindb";
    

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String username=request.getParameter("userName");
            String password=request.getParameter("password");
            
            
            
            try {
                Class.forName("com.mysql.jdbc.Drver");
                conn=DriverManager.getConnection(dburl,"root","");
                String q="INSERT INTO student VALUES(null,'"+username+"','"+password+"')";
                
                st=conn.prepareStatement(q);
                
                
                
                st.execute();
                
                System.out.print("Success");
                
                
                
                
                
            } catch (Exception e) {
                e.printStackTrace();
            
        }
        }

    
    }
}
    
   
    
//    @Override
//    public String getServletInfo() {
//        return "Short description";
//    }// </editor-fold>
//
//}
