<%-- 
    Document   : home
    Created on : Aug 24, 2021, 9:35:06 AM
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home Page</title>
    </head>
    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">


        <nav class="nav nav-pills nav-fill" style="margin-top: 15px;color:white;padding:10px;background-color:lightgrey">
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
                    String sql3 = "SELECT * FROM userpages";
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
        <h1 style="text-align: center;margin-bottom: 20px;margin-top: 15px">Welcome Add Employee Page</h1>
        <hr>

        <%
            response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0);

            if (session.getAttribute("username") == null && session.getAttribute("userRole") == null) {

                response.sendRedirect("lodin.jsp");
            }

        %>


        <!--        <form action="logoutServlet">
                    <button class="btn btn-danger" style="margin: 20px">Logout</button>
                </form>-->
        <div class="container" style="background-color:lightgrey;padding: 25px;border-radius: 20px">
            <!--            <a href="viewEmployeeServlet"><button class="btn btn-success" style="margin: 20px">View All Employees</button></a>-->




            <form method="POST" action="employeServlet">





                <label >Log in User:</label>
                <select name="username">
                    <option value="<%=request.getAttribute("username")%>"><%=request.getAttribute("username")%></option>>


                </select>
                <!--    <label >Log in User:</label>
                     <input type="text" class="form-control" name="username"  value="<%=request.getAttribute("username")%>" placeholder="Enter First Name" required>-->



                <div class="form-group">
                    <label >First Name :</label>
                    <input type="text" class="form-control" name="firstname"  placeholder="Enter First Name" required>

                </div>

                <div class="form-group">
                    <label >Last Name :</label>
                    <input type="text" class="form-control" name="lastname" placeholder="Enter Last Name" required>

                </div>


                <div class="form-group">
                    <label >Email address</label>
                    <input type="email" class="form-control" name="email"  placeholder="Enter email" required>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>

                <input type="submit" name="Add" class="btn btn-success">
                <input type="reset"  name="reset" class="btn btn-danger">
            </form>
        </div>

        <script>
            function addEmployeeConfirm() {
                alert('Are you want to add new user to the System..?\n\
You have to login again..');
            }


        </script>





    </body>
</html>
