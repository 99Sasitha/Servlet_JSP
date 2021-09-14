
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sasitha Munasinghe
 */
@WebServlet(urlPatterns = {"/adminLoginServlet"})
public class adminLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String ausername = request.getParameter("ausername");
        String apassword = request.getParameter("apassword");
        out.println("<title>E p i c__T e c h n o l o g y</title>");
        //database
        try {
            //open connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");

            //get data from student table
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from admins where ausername='" + ausername + "' and apassword='" + apassword + "'");
            if (rs.next()) {
                //if username and password true then go to home page

                response.sendRedirect("viewEmployeeServlet");
            } else {
                //worng password
                response.sendRedirect("adminLogin.jsp");
                out.println("<h2>Incorrect Admin Password or Admin Username<h2>");
//           out.println("Worng Username And Password");

            }

            con.close();

        } catch (Exception e) {

            System.out.println(e.getMessage());
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
}
