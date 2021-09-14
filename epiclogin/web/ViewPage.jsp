<%-- 
    Document   : ViewPage
    Created on : Sep 12, 2021, 10:19:51 AM
    Author     : Sasitha Munasinghe
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Technology</title>

        <script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css">



    </head>




    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">


        <nav class="nav nav-pills nav-fill" style="margin-top: 15px;color:white;padding:10px;background-color: beige">
            <a class="nav-link" href="lodin.jsp" style="border-right: gray;border-style: inset" onclick="addEmployeeConfirm()">Add Employee</a>
            <!-----------------------------------------------------------Add Dynamic Pages----------------------------------------------->
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");

                } catch (Exception e) {

                    out.println(e);
                }

            %>

            <%        try {

                    Connection con3 = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");
                    Statement stm3 = con3.createStatement();
                    String sql3 = "SELECT * FROM adminpages";
                    ResultSet rs3 = stm3.executeQuery(sql3);
                    while (rs3.next()) {
                        //            String bookid=rs.getString("bookid");

            %>


            <a class="nav-link" href="<%=rs3.getString("pageurl")%>" style="border-right: gray;border-style: inset"><%=rs3.getString("pagename")%></a>




            <%
                    }
                } catch (Exception e) {

                    out.println(e);
                }
            %>


            <!--_____________________________________________________________________________________________________________________________________-->  


            <form action="logoutServlet">
                <button style="color:white;background-color: red;font-weight: bold">__Log Out__</button>
            </form>

        </nav>

        <%
            response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (session.getAttribute("username") == null && session.getAttribute("userRole") == null) {

                response.sendRedirect("lodin.jsp");
            }

        %>

        <hr>
        <%             try {
                Class.forName("com.mysql.jdbc.Driver");

            } catch (Exception e) {

                out.println(e);
            }

        %>

        <div class="container" style="background-color: lightgray">

            <table id="sasi" >
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
                </thead>
                <%            try {
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3308/epiclogindb", "root", "");
                        Statement stm = con.createStatement();
                        String sql = "SELECT * FROM employees";
                        ResultSet rs = stm.executeQuery(sql);
                        while (rs.next()) {
                            //            String bookid=rs.getString("bookid");

                %>
                <tr>
                    <th scope="row"><%=rs.getString("empid")%></th>
                    <td style='text-align:center'><%=rs.getString("firstname")%></td>
                    <td style='text-align:center'><%=rs.getString("lastname")%></td>
                    <td style='text-align:center'><%=rs.getString("email")%></td>
                    <td style='text-align:center'><%=rs.getString("DateTime")%></td>
                    <td style='text-align:center'><%=rs.getString("loginUser")%></td>
                    <td style='text-align:center'><%=rs.getString("loginAdmin")%></td>
                    <td style='text-align:center'><a href='EditServlet?id=<%=rs.getString("empid")%>'><button style='background-color:green;margin:2px;padding:5px;color:white;border-radius:10px'>__Edit__</button></a></td>
                    <td style='text-align:center'><a href='DeleteServelet?id=<%=rs.getString("empid")%>'><button style='background-color:red;margin:2px;padding:5px;color:white;border-radius:10px' >__Delete__</button></a></td>

                </tr> 






                <%
                        }
                    } catch (Exception e) {

                        out.println(e);
                    }
                %>
            </table>
        </div>
        <script>
            $(document).ready(function () {
                $("#sasi").dataTable();

            })

        </script>
        <script>
            function addEmployeeConfirm() {
                alert('Are you want to add new user to the System..?\n\
      You have to login again..');
            }


        </script>

    </body>
</html>
