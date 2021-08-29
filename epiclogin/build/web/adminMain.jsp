<%-- 
    Document   : adminMain
    Created on : Aug 27, 2021, 11:30:42 AM
    Author     : Sasitha Munasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Epic Technology</title>
    </head>
    
<!--    ----------------------------------------------------------------------------------------------------------------------------------->
     <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">
        <nav class="nav nav-pills nav-fill" style="margin-top: 15px;color:white;padding:10px;background-color: beige">
            
            <a class="nav-link " aria-current="page" href="lodin.jsp" style="border-right: gray;border-style: inset" onclick="addEmployeeConfirm()">Add Employee</a>
  <a class="nav-link" href="viewEmployeeServlet" style="border-right: gray;border-style: inset">View Employees</a>
  <a class="nav-link" href="adminMain.jsp" style="border-right: gray;border-style: inset">Staff Details</a>
  <a class="nav-link" href="MoreDetails.jsp" style="border-right: gray;border-style: inset">More Details</a>
  <a class="nav-link" href="lodin.jsp"><button style="color:white;background-color: red;font-weight: bold">__Log Out__</button></a>
 
</nav>
        <hr>
        
        <h2 style="text-align: center">Admin Panel</h2>
        
        <hr>
        
        <center>
       <figure class="figure">
           <img style="border-radius: 50px"src="https://www.uplist.lk/wp-content/webpc-passthru.php?src=https://i0.wp.com/www.uplist.lk/wp-content/uploads/2017/07/4-1.jpg&nocache=1?resize=455%2C340&ssl=1" class="figure-img img-fluid rounded" alt="...">
    <figcaption class="figure-caption">A caption for the above image.</figcaption>
       </figure>
        </center>
     
     <script>
            function addEmployeeConfirm(){
                alert('Are you want to add new user to the System..?\n\
        You have to login again..');
            }
        
        
        </script>
        
    </body>
</html>
