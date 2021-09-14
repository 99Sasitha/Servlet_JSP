<%-- 
    Document   : registration
    Created on : Aug 24, 2021, 10:25:01 AM
    Author     : Sasitha Munasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="https://media-exp1.licdn.com/dms/image/C560BAQH00MCBWLYYyA/company-logo_200_200/0?e=2159024400&v=beta&t=AubBS-Kij0iEK5qgPl0pnH3N-ZzLVcz1TZX6TpzTZrs"  />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <header>
        <h2 style="text-align: center;background: blue; color: white;padding: 10px" >Student Registration</h2>
    </header>

    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">
        <h1 style="text-align: center;font-weight: bold;letter-spacing: 0.2em;margin: 20px">Registration Page</h1>


        <hr>
        <%
            response.setHeader("Cache-Control", "no-cache,no-strore,must-revalidate");
            response.setHeader("Prahma", "no-chache");
            response.setHeader("Expires", "0");

        %>

        <div class="container" style="background-color: lightcyan;padding: 25px;border-radius: 20px">





            <form action="registerServlet" method="POST" > 

                <center>
                    <table style="text-align: center;">
                        <tr>
                            <th><div class="form-group">

                                    <label > User Name :</label ></div></th>
                            <td>
                                <input type="text" name="userName" placeholder="Enter your username" style="width: 500px" required/></div>
                            </td>
                        </tr>


                        <div class="form-group">
                            <tr>
                                <th>
                                    <label >Password :</abel ></th>
                                <td>
                                    <input type="password" name="password" placeholder="Enter your password" style="width: 500px" required/> 
                                </td>
                            </tr>
                        </div>

                        <!--                <div class="form-group">
                                        <tr>
                                            <th>
                                                <label >Select User Role :</abel ></th>
                                            <td style="text-align:left">
                                                <select name="dropdown" required style="margin-left: 50px ">
                                                    <option value="" >----Select User Role----</option>
                                                    <option value="user">User</option>
                                                    <option value="admin">Admin</option>
                                                    
                                                    </select>
                                            </td>
                                        </tr>
                                                    </div>-->

                        <tr>
                            <td colspan="2">
                                <button name="registerbtn" class="btn btn-success" style="margin: 10px">__Register__</button>


                            </td>
                        </tr>

                    </table>
                </center>
            </form>
            <center>
                <a href="lodin.jsp"><button name="login" class="btn btn-primary" style="margin: 10px">__ Already have Account__</button></a>
            </center>
        </div>
    </body>
</html>
