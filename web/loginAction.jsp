<%@ page language="java" import="uts.*" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%-- 
    Document   : loginAction
    Created on : 12/05/2017, 9:07:50 PM
    Author     : 41815
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
       
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
    </head>

    <body>
        <% String filePath = application.getRealPath("WEB-INF/customers.xml");%>
        <jsp:useBean id="customerApp" class="uts.CustomerApplication" scope="application">
            <jsp:setProperty name="customerApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");
        %>
        <%
            Customers customes = customerApp.getCustomers();
            Customer customer = customes.login(email, password);
        %>


        <div class="header">
            <div class="container">
                <div class="navbar menubar" id="menu">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle menu-button" data-toggle="collapse" data-target="#myNavbar"> <span class="glyphicon glyphicon-align-justify set"></span> </button>
                            <a class="navbar-brand logo" href="#">TicketonGo.com</a> </div>
                        <div class="navdiv">
                            <nav class="collapse navbar-collapse navset" id="myNavbar" role="navigation">
                                <ul class="nav navbar-nav navbar-right navstyle navb">
                                    <li><a href="main.jsp" class="page-scroll active">Home</a></li>
                                    <li><a href="register.jsp" class="page-scroll">Register</a></li>
                                    <li><a href="booking.jsp" class="page-scroll">Booking</a></li>
                                    <li><a href="login.jsp" class="page-scroll">Login</a></li>
                                    <li><a href="admin.jsp" class="page-scroll">Admin</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                        <div class="schbox">
                            <div class="col-md-6 col-sm-12 col-xs-12 appointment"   >
                                <div class="schbox-title">
                                    <h2>Login</h2>
                                </div>

                                <form class="appointform" method="post" action="loginAction.jsp">
                                    <div class=" col-xs-12">
                                        <div class="barfont1" >
                                            <h5>Email Address</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="email" placeholder="Enter a Email"/>
                                        </div>
                                        <div class="barfont1" >
                                            <h5>Password</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" name="password" placeholder="Enter a Password"/>
                                        </div>

                                    </div>

                                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                        <button type="submit" class="btn orange">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        <%
            if (customer != null) {
                session.setAttribute("customer", customer);
                
        %>
         <div > <h4 style="text-align:center">You are logged in as <%= customer.getEmail()%> </h4></div>
         <meta http-equiv="refresh" content="1;url=main.jsp ">
        <%} else {%>

         <div > <h4 style="text-align:center">Login Failed </h4></div>
         <%}%>
    </body>
</html>
