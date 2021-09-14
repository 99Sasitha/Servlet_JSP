package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class ViewPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link rel=\"icon\" href=\"https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs\"  />\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <title>Epic Technology</title>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel='stylesheet' href='https://cdn.datatables.net/1.10.12/css/jquery.datatables.min.css'>\n");
      out.write("        <script type='text/javascript' src='https:code.jquery.com/jquery-1.12.3 min.js'></script>\n");
      out.write("        <script type='text/javascript' src='https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js'></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body style=\"background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') \">\n");
      out.write("    <center>\n");
      out.write("        <nav class=\"nav\" style=\"margin-top: 15px;color:white;padding:10px;background-color: beige\">\n");
      out.write("\n");
      out.write("            <a class=\"nav-link \" aria-current=\"page\" href=\"lodin.jsp\" style=\"border-right: gray;border-style: inset; margin-left: 25px\"  onclick=\"addEmployeeConfirm()\">Add Employee</a>\n");
      out.write("            <a class=\"nav-link\" href=\"viewEmployeeServlet\" style=\"border-right: gray;border-style: inset;margin-left: 25px\">View Employees</a>\n");
      out.write("            <a class=\"nav-link\" href=\"adminMain.jsp\" style=\"border-right: gray;border-style: inset ;margin-left: 25px\">Staff Details</a>\n");
      out.write("            <a class=\"nav-link\" href=\"MoreDetails.jsp\" style=\"border-right: gray;border-style: inset;margin-left: 25px\">More Details</a>\n");
      out.write("            <form action=\"logoutServlet\">\n");
      out.write("                <button style=\"color:white;background-color: red;font-weight: bold;margin-left: 25px\">__Log Out__</button>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </nav> \n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("    <h1>View Data</h1>\n");
      out.write("    <hr>\n");
      out.write("\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <table class=\"table\" id=\"mytable\">\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>id</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>First name</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>Last Name</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>E mail</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>Date time</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>login User</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>Login Admin</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>Edit</th>\n");
      out.write("                    <th scope=\"col\" style='text-align:center'>Delete</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");
                    String sql = "SELECT * FROM employees";

                    Statement stm = conn.createStatement();
                    ResultSet rs = stm.executeQuery(sql);
                    while (rs.next()) {
                
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <th scope=\"row\">");
      out.print(rs.getString("empid"));
      out.write("</th>\n");
      out.write("                    <td style='text-align:center'>");
      out.print(rs.getString("firstname"));
      out.write("</td>\n");
      out.write("                    <td style='text-align:center'>");
      out.print(rs.getString("lastname"));
      out.write("</td>\n");
      out.write("                    <td style='text-align:center'>");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("                    <td style='text-align:center'>");
      out.print(rs.getString("DateTime"));
      out.write("</td>\n");
      out.write("                    <td style='text-align:center'>");
      out.print(rs.getString("loginUser"));
      out.write("</td>\n");
      out.write("                    <td style='text-align:center'>");
      out.print(rs.getString("loginAdmin"));
      out.write("</td>\n");
      out.write("                    <td style='text-align:center'><a href='EditServlet?id=");
      out.print(rs.getString("empid"));
      out.write("'><button style='background-color:green;margin:10px;padding:5px;color:white;border-radius:10px'>__Edit__</button></a></td>\n");
      out.write("                    <td style='text-align:center'><a href='DeleteServelet?id=");
      out.print(rs.getString("empid"));
      out.write("'><button style='background-color:red;margin:10px;padding:5px;color:white;border-radius:10px' >__Delete__</button></a></td>\n");
      out.write("\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
