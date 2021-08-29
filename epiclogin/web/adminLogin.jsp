<%-- 
    Document   : adminLogin
    Created on : Aug 26, 2021, 9:26:29 AM
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
        <title>Admin Login Page</title>
    </head>
    <body>
        <h1 style="text-align: center;margin: 20px;letter-spacing: 0.2em;font-weight: bold">Admin Login </h1>
        <hr>
        
        <a href="index.jsp"><button style="padding: 15px;margin: 20px;border-radius: 20px;font-weight: bold " class="btn btn-primary">__Home__</button></a>
        
        <div class="container" style="background-color: lightskyblue;padding: 25px;border-radius: 20px ;">
            
            
        
        <form action="adminLoginServlet" method="POST">
  <div class="mb-3">
    <label  class="form-label">Username : </label>
    <input type="text" class="form-control" name="ausername" placeholder="Enter Username">
  </div>
            
            
  <div class="mb-3">
    <label  class="form-label">Password</label>
    <input type="password"  class="form-control" name="apassword" placeholder="Enter Password">
  </div>
  
  <button type="submit" class="btn btn-success">Log in</button>
  
</form>
        </div>
        
    </body>
</html>
