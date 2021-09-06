<%-- 
    Document   : MoreDetails
    Created on : Aug 27, 2021, 1:41:16 PM
    Author     : Sasitha Munasinghe
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Technology</title>
    </head>
    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">
        <nav class="nav nav-pills nav-fill" style="margin-top: 15px;color:white; padding:10px;background-color: beige">

            <a class="nav-link " aria-current="page" href="lodin.jsp" style="border-right: gray;border-style: inset" onclick="addEmployeeConfirm()">Add Employee</a>
              
            <a class="nav-link" href="viewEmployeeServlet" style="border-right: gray;border-style: inset">View Employees</a>
            <a class="nav-link" href="adminMain.jsp" style="border-right: gray;border-style: inset">Staff Details</a>
  <a class="nav-link" href="MoreDetails.jsp" style="border-right: gray;border-style: inset">More Details</a>
  <form action="logoutServlet">
  <button style="color:white;background-color: red;font-weight: bold">__Log Out__</button>
 </form>
</nav>
        <%
        
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires","0");
        %>
        
        <script>
            function addEmployeeConfirm(){
                alert('Are you want to add new user to the System..?\n\
        You have to login again..');
            }
        
        
        </script>
        <hr>
        <h1>More About !</h1>
    </body>
</html>
