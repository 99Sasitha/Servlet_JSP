<%-- 
    Document   : lodin
    Created on : Aug 24, 2021, 9:09:32 AM
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
        <title>login</title>

    </head>
    <heder style='color: white; text-align: center'>
        <h3 style="letter-spacing: .5em;background-color: blue;margin: 15px;padding: 10px;border-radius: 25px">Epic Technology</h3>
    </heder>




    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://news.fnal.gov/wp-content/uploads/2020/02/2020-02-11_5e42c8469d971_White_background-scaled.jpg') ">
        <h1 style="text-align: center;margin: 20px;font-weight: bold;letter-spacing: 0.2em">Login Page</h1>

        <hr>

        <div class="container" style="align-content: center">






            <div class="container" style="background-color: lightskyblue;padding: 25px;margin-top: 50px;border-radius: 20px">
                <form action="loginServlet" method="post" > 


                    <div class="container" style="background-color: lightskyblue;margin: 20px">
                        <center> <table width="500px" style="text-align: center;">
                                <tr style="margin-bottom: 20px">
                                    <th><div class="form-group">
                                            User Name :</div></th>
                                    <td>
                                        <input type="text" name="userName" placeholder="Enter your username" class="form-control"  required/>
                                    </td>
                                </tr>
                                <tr></tr>
                                <tr>
                                    <th><div class="form-group">
                                            Password :</div></th>
                                    <td>
                                        <input type="password" name="password" placeholder="Enter your password" class="form-control" required/>
                                    </td>
                                </tr>

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
                                        <button name="loginbtn" style="margin: 10px" class="btn btn-success">__login__</button>
                                        <a href="registration.jsp">Register</a>
                                    </td>
                                </tr>



                            </table>


                        </center>

                </form>
            </div>
    </body>


</html>
