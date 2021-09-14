/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sasitha Munasinghe
 */
@WebServlet(urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("userName");
        String password = request.getParameter("password");

        //database
        try {
            //open connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");

            //get data from student table
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from students where username='" + username + "' and password=md5('" + password + "') ");

            if (rs.next()) {
                //if username and password true then go to home page

                if (rs.getString("userRole").equals("admin")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", rs.getString("username"));
                    session.setAttribute("userRole", rs.getString("userRole"));

                    request.setAttribute("username", username);
                    RequestDispatcher rd = request.getRequestDispatcher("homeadmin.jsp");
                    rd.forward(request, response);
                } else if (rs.getString("userRole").equals("user")) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", rs.getString("username"));
                    session.setAttribute("userRole", rs.getString("userRole"));

                    request.setAttribute("username", username);
                    RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                    rd.forward(request, response);
                }
            } else {
                //worng password
                response.sendRedirect("lodin.jsp");
                out.println("<h2>Incorrect Password or Username or Incorrect User Role<h2>");
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
