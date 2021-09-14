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
import java.sql.PreparedStatement;
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
@WebServlet(urlPatterns = {"/registerServlet"})
public class registerServlet extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    int row;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            //open connection
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");
            Statement st = con.createStatement();

            //get data from student table
            String username = request.getParameter("userName");
            String password = request.getParameter("password");
//            String userRole=request.getParameter("dropdown");

            pst = con.prepareStatement("insert into students values(null,?,md5(?),'user')");

            pst.setString(1, username);
            pst.setString(2, password);
//            pst.setString(3,userRole);

            row = pst.executeUpdate();

            out.println("<h1>Success Register </h1>  <a href='lodin.jsp'>"
                    + "<button style='margin:20px;padding:20px;background-color:green;border-radius:15px;color:white;font-weight:bold'>Log in</button> "
                    + "</a>");

        } catch (Exception e) {

            out.println("<h3 style='color:red'>Worning! :" + " " + "This Username is Already used! Registration with another Username<h3>" + e);
            out.println(" <a href='registration.jsp'>"
                    + "<button style='margin:20px;padding:20px;background-color:green;border-radius:15px;color:white;font-weight:bold'>__Try Again__</button> "
                    + "</a>");
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
}
