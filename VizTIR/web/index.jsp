<%-- 
    Document   : signin
    Created on : 20-Mar-2018, 11:22:04 PM
    Author     : admin
--%>
<%@page import=" java.io.File"%>
<%@page import=" java.io.FileOutputStream"%>
<%@page import=" java.io.IOException"%>
<%@page import=" java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<%
    session.invalidate();
%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="assets/img/favicons/favicon.ico">

        <title>Signin</title>

        <!-- Bootstrap core CSS -->
        <link href="dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/signin.css" rel="stylesheet">
    </head>



    <body class="text-center">

        <form class="form-signin" action="all_tasks.jsp" method="POST">
            <img class="mb-4" src="http://d3m.mie.utoronto.ca/wp-content/themes/uoft_bootstrap3/_inc/img/U-of-T-logo.svg" width="300" height="100" alt="UofT">
            <h1 class="h3 mb-3 font-weight-normal">Email address</h1>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required autofocus>
            <!--          <label for="inputUserID" class="sr-only">userID</label>
                      <input type="number" min="01" max="40" id="userid" name="userid" class="form-control" placeholder="UserID" required autofocus>-->
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
            <h2 class="h4 mb-3 font-weight-normal">Go to the <a href="demo.jsp"> CHIIR 2019 demo</a>.</h2>

        </form>

    </body>
</html>
