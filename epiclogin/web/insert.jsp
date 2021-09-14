<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>

<%
    String username = request.getParameter("userName");
    String password = request.getParameter("password");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");
        Statement st = con.createStatement();

        if (username.equals("") || password.equals("")) {

            out.println("Error_:----Please Enter Valid Password or Username type to Registration");
            out.println("<a href='registration.jsp'>"
                    + "<button style='margin:20px;padding:20px;background-color:green;border-radius:15px;color:white;font-weight:bold'>__Try again__</button> "
                    + "</a>");
        } else {
            String qry = "insert into students values(null,'" + username + "','" + password + "')";

            st.executeUpdate(qry);

            out.println("<h1>Success Register </h1>  <a href='lodin.jsp'>"
                    + "<button style='margin:20px;padding:20px;background-color:green;border-radius:15px;color:white;font-weight:bold'>Log in</button> "
                    + "</a>");
        }
    } catch (Exception e) {
        out.println(e);
    }

%>

