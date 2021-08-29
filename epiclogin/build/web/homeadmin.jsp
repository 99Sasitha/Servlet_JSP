<%-- 
    Document   : homeadmin
    Created on : Aug 27, 2021, 11:20:05 AM
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
   <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">
        <nav class="nav nav-pills nav-fill" style="margin-top: 15px;color:white;padding:10px;background-color: beige">
            <a class="nav-link" href="adminMain.jsp" style="border-right: gray;border-style: inset">Home</a>
            <a class="nav-link " aria-current="page" href="homeadmin.jsp" style="border-right: gray;border-style: inset" >Add Employee</a>
  <a class="nav-link" href="viewEmployeeServlet" style="border-right: gray;border-style: inset">View Employees</a>
  <a class="nav-link" href="MoreDetails.jsp" style="border-right: gray;border-style: inset">More Details</a>
  <a class="nav-link" href="index.jsp"><button style="color:white;background-color: red;font-weight: bold">__Log Out__</button></a>
 
</nav>
        <hr>
        
        
        <h1 style="text-align: center;margin-bottom: 20px;margin-top: 15px">Welcome Add Employee Page</h1>
        
        <hr>
        
        
        
        
        <div class="container" style="background-color: lightskyblue;padding: 25px;border-radius: 20px">
            <a href="viewEmployeeServlet"><button class="btn btn-success" style="margin: 20px">View All Employees</button></a>
            
        
        <form method="POST" action="adminEmployeeServlet">
            
            
            
            <label >Log in Admin :</label>
            <select name="username">
                <option value="<%=request.getAttribute("username")%>"><%=request.getAttribute("username")%></option>>
                
                
            </select>
  <div class="form-group">
      
      
<!--      <label >Log in User:</label>
      <input type="text" class="form-control" name="username"  value="<%=request.getAttribute("username")%>" placeholder="Enter First Name" checked>-->
      
      
      
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
        
        
        
        
        
    </body>
</html>

