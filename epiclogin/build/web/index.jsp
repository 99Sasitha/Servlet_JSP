<%-- 
    Document   : index
    Created on : Aug 26, 2021, 10:00:16 AM
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
        <title>Epic</title>
    </head>
    <body style="background-size: cover;background-repeat: no-repeat;background-image:url('http://imagebank.biz/wp-content/uploads/2014/06/129452.jpg') ">
        <h1 style="text-align: center;color:white;letter-spacing: 0.5em;font-weight: bold;background-color: black;padding: 20px">Welcome to Epic Technology</h1>
        <hr>

        <%
            if (session.getAttribute("username") == null && session.getAttribute("userRole") == null) {

                response.sendRedirect("lodin.jsp");
            }

        %>

    <center>
        <img style="border-radius: 25px" class="img-fluid" src="https://www.uplist.lk/wp-content/webpc-passthru.php?src=https://i0.wp.com/www.uplist.lk/wp-content/uploads/2017/07/4-1.jpg&nocache=1?resize=455%2C340&ssl=1" width="1000" height="200"><center>
            <hr>
            <div style='background-color:whitesmoke;border-radius: 25px;height: 100px;width: 600px;margin: 20px'>
                <center>
                    <a href="lodin.jsp"><button type="button" class="btn btn-success btn-lg" style="margin: 25px"> Go=>></button></a>

                </center>
            </div>
            </body>
            </html>
