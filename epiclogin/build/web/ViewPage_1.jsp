<%-- 
    Document   : ViewPage
    Created on : Sep 12, 2021, 10:19:51 AM
    Author     : Sasitha Munasinghe
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

        <title>Epic Technology</title>





    </head>

    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">
        <%

            response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (session.getAttribute("username") == null && session.getAttribute("userRole") == null) {

                response.sendRedirect("lodin.jsp");
            }

        %>

        <nav class="nav nav-pills nav-fill" style="margin-top: 15px;color:white;padding:10px;background-color: beige">

            <a class="nav-link " aria-current="page" href="homeadmin.jsp" style="border-right: gray;border-style: inset" >Add Employee</a>
            <a class="nav-link" href="ViewPage.jsp" style="border-right: gray;border-style: inset">View Employees</a>
            <a class="nav-link" href="adminMain.jsp" style="border-right: gray;border-style: inset">Staff Details</a>
            <a class="nav-link" href="MoreDetails.jsp" style="border-right: gray;border-style: inset">More Details</a>
            <form action="logoutServlet">
                <button style="color:white;background-color: red;font-weight: bold">__Log Out__</button>
            </form>

        </nav> 



        <hr>

        <div class="container" >
            <!--________________________________________________________________________________________________________________________________________________________-->
            <%                int recordCount = request.getParameter("dropdown") == null ? 3 : Integer.parseInt(request.getParameter("dropdown"));
            %>
            <form action="ViewPage.jsp" id="form1">
                <label>Select Record :</label>
                <select name="dropdown" onchange="form1.submit()">
                    <option value="3" <%=recordCount == 3 ? "selected" : ""%> >3</option>
                    <option value="5" <%=recordCount == 5 ? "selected" : ""%> >5</option>
                    <option value="10" <%=recordCount == 10 ? "selected" : ""%> >10</option>
                </select>

            </form>
            <br>
            <!--_____________________________________________________________________________________________________________________________________________________________________________-->            

            <table class="table table-dark" id="mytable">
                <thead>
                    <tr>
                        <th scope="col" style='text-align:center'>id</th>
                        <th scope="col" style='text-align:center'>First name</th>
                        <th scope="col" style='text-align:center'>Last Name</th>
                        <th scope="col" style='text-align:center'>E mail</th>
                        <th scope="col" style='text-align:center'>Date time</th>
                        <th scope="col" style='text-align:center'>login User</th>
                        <th scope="col" style='text-align:center'>Login Admin</th>
                        <th scope="col" style='text-align:center'>Edit</th>
                        <th scope="col" style='text-align:center'>Delete</th>
                    </tr>
                    <!--_______________________________________________________________________________________________________________________________________________________________-->
                    <%
                        int total = 0;

                        int pageno = 0;
                        int start = 0;

                        try {
                            pageno = request.getParameter("pageno") == null ? 0 : Integer.parseInt(request.getParameter("pageno"));

                            start = pageno * recordCount;
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");
                            String sql = "SELECT * FROM employees limit ?,?";
                            PreparedStatement pst = conn.prepareStatement(sql);
                            pst.setInt(1, start);
                            pst.setInt(2, recordCount);

                            ResultSet rs = pst.executeQuery();
                            while (rs.next()) {
                    %>

                    <!--___________________________________________________________________________________________________________________________________________________________________________-->

                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><%=rs.getString("empid")%></th>
                        <td style='text-align:center'><%=rs.getString("firstname")%></td>
                        <td style='text-align:center'><%=rs.getString("lastname")%></td>
                        <td style='text-align:center'><%=rs.getString("email")%></td>
                        <td style='text-align:center'><%=rs.getString("DateTime")%></td>
                        <td style='text-align:center'><%=rs.getString("loginUser")%></td>
                        <td style='text-align:center'><%=rs.getString("loginAdmin")%></td>
                        <td style='text-align:center'><a href='EditServlet?id=<%=rs.getString("empid")%>'><button style='background-color:green;margin:10px;padding:5px;color:white;border-radius:10px'>__Edit__</button></a></td>
                        <td style='text-align:center'><a href='DeleteServelet?id=<%=rs.getString("empid")%>'><button style='background-color:red;margin:10px;padding:5px;color:white;border-radius:10px' >__Delete__</button></a></td>

                        <%}
                                String query = "SELECT COUNT(*) FROM employees";
                                PreparedStatement pst2 = conn.prepareStatement(query);
                                ResultSet rs2 = pst2.executeQuery();

                                if (rs2.next()) {
                                    total = rs2.getInt(1);
                                }

                                conn.close();
                                pst.close();
                            } catch (Exception e) {
                                out.println(e);

                            }


                        %>

                </tbody>
            </table>
            <!--______________________________________________________________________________________________________________________________________________________-->                        
            <table class="table table-dark">
                <tr>
                    <th colspan="7">

                        All Records :_<%=total%>
                        <%
                            for (int i = 0; i <= total / recordCount; i++) {

                        %>

                        <a href="ViewPage.jsp?pageno=<%=i%>"><button class="btn btn-primary <%=(pageno == i) ? "active" : ""%>">_Page<%=i + 1%>_</button></a>
                        <%}%>
                    </th>
                </tr>
            </table>

            <span style="float:left"><a href="ViewPage.jsp?pageno=<%=pageno - 1%>"><button class="btn btn-dark <%=(start == 0) ? "disabled" : ""%>"><<--Previous</button></a></span>  
            <span style="float:right"><a href="ViewPage.jsp?pageno=<%=pageno + 1%>"><button class="btn btn-dark <%=(start + recordCount > total) ? "disabled" : ""%>" >Next-->></button></a></span>
            <!--______________________________________________________________________________________________________________________________________________________________________________________________________________-->
        </div>

    </body>
</html>