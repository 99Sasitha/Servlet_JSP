<%-- 
    Document   : home
    Created on : Aug 24, 2021, 9:35:06 AM
    Author     : Sasitha Munasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>home Page</title>
    </head>
     <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">
        <h1 style="text-align: center;margin-bottom: 20px;margin-top: 15px">Welcome Add Employee Page</h1>
        
        <hr>
        
        
        
        <a href="index.jsp"><button class="btn btn-danger" style="margin: 20px">Logout</button></a>
        <div class="container" style="background-color: lightskyblue;padding: 25px;border-radius: 20px">
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
        
        
        
        
        
    </body>
</html>
