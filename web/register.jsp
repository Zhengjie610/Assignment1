<%@page import ="uts.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Register</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
<%
            Customer login = (Customer) session.getAttribute("customer"); //把从set地方拿过来用Get
         
        %> 

    </head>

    <body>
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
                                         <%    if (login != null) { %> 
                                    <li><a href="logout.jsp" class="page-scroll">Log Out</a></li>
                                        <%} else {%>
                                    <li><a href="login.jsp" class="page-scroll">Login</a></li>
                                        <%}%>
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
                                    <h2>Register</h2>
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
                                        <div class="barfont1" >

                                            <h5>Full Name</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="Full Name" placeholder="Enter a Full Name"/>
                                        </div>

                                        <div class="barfont1" >

                                            <h5>Date of Birth</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="date" name="dob" class="form-control"/>
                                        </div>



                                    </div>

                                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                        <button type="submit" class="btn orange">Register</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

         

        <%    if (login == null) { %> 

        <div > <h4 style="text-align:center">You are logged in as Viewer </h4></div>
        <%} else {%>
        <div > <h4 style="text-align:center">You are logged in as <%=login.getEmail()%> </h4></div>
        <%}%>

    </body>
</html>
