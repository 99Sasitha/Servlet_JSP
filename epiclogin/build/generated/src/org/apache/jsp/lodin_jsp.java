package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class lodin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js\" integrity=\"sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js\" integrity=\"sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>login</title>\n");
      out.write("    </head>\n");
      out.write("    <header>\n");
      out.write("        <h2 style=\"text-align: center;background: blue;color: white;padding: 10px\" >Student Login Page</h2>\n");
      out.write("    </header>\n");
      out.write("    <body>\n");
      out.write("        <h1 style=\"text-align: center\">Login Page</h1>\n");
      out.write("        \n");
      out.write("        <hr>\n");
      out.write("        <div class=\"container\" style=\"align-content: center\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <div class=\"container\" style=\"background-color: lightskyblue;padding: 25px;border-radius: 20px\">\n");
      out.write("            <form action=\"loginServlet\" method=\"post\" > \n");
      out.write("                \n");
      out.write("<!--       <div class=\"container\" style=\"background-color: lightskyblue;padding: 25px;border-radius: 20px\">\n");
      out.write("                \n");
      out.write("                \n");
      out.write("    <div class=\"form-group\">\n");
      out.write("    <label >Username :</label>\n");
      out.write("    <input type=\"text\" class=\"form-control\" name=\"username\"  placeholder=\"Enter Username\">\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("            \n");
      out.write("      <div class=\"form-group\">\n");
      out.write("    <label >Password :</label>\n");
      out.write("    <input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"Enter password\">\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <button name=\"loginbtn\" style=\"margin: 10px\" class=\"btn btn-success\">login</button>\n");
      out.write("  <a href=\"registration.jsp\">Register</a>\n");
      out.write("          </form>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("                -->\n");
      out.write("                \n");
      out.write("<!--                ----------------------------------------------------------------------------------------------------------->\n");
      out.write("                <div class=\"container\" style=\"background-color: lightskyblue;margin: 20px\">\n");
      out.write("            <table style=\"text-align: center;\">\n");
      out.write("                <tr>\n");
      out.write("                    <td><div class=\"form-group\">\n");
      out.write("                            User Name :</div></td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"userName\" placeholder=\"Enter your username\" class=\"form-control\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td><div class=\"form-group\">\n");
      out.write("                        Password :</div></td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" name=\"password\" placeholder=\"Enter your password\" class=\"form-control\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\">\n");
      out.write("                        <button name=\"loginbtn\" style=\"margin: 10px\" class=\"btn btn-success\">login</button>\n");
      out.write("                        <a href=\"registration.jsp\">Register</a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("                    </div>\n");
      out.write("        </form>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("   \n");
      out.write("</html>\n");
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
