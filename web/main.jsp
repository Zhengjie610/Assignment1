<%@page import ="uts.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">



<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>TicketonGo.com</title>
        <link rel="stylesheet" type="text/css" href="CssForMain/style.css"/>
        <link rel="stylesheet" type="text/css" href="CssForMain/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="CssForMain/font-awesome.min.css"/>


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
                                    <li><a href="login.jsp" class="page-scroll">Login</a></li>
                                    <li><a href="logout.jsp" class="page-scroll">Log Out</a></li>
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
                            <div class="col-md-6 col-sm-12 col-xs-12 appointment"  >
                                <div class="schbox-title">
                                    <h2>Book Cheap Flights</h2>
                                </div>
                                <form role="form" class="appointform">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="barfont1" >
                                            <h5>Flying from</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="name" placeholder="Enter a City"/>
                                        </div>
                                        <div class="barfont1" >
                                            <h5>Flying to</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" id="email" placeholder="Enter a City"/>
                                        </div>

                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="barfont1" >
                                            <h5>Departing</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" id="date" placeholder="Date"/>
                                        </div>
                                        <div class="barfont1" >
                                            <h5>Returning</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" id="date" placeholder="Date"/>
                                        </div>

                                    </div>
                                    <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                        <button type="submit" class="btn orange">Search</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%
            Customer login = (Customer) session.getAttribute("customer"); //把从set地方拿过来用Get
            //String log = login.getEmail();
        %>  

        <%    if (login == null) { %> 
       
        <div > <h4 style="text-align:center">You are logged in as Viewer </h4></div>
        <%} else {%>
        <div > <h4 style="text-align:center">You are logged in as <%=login.getEmail()%> </h4></div>
        <%}%>
    </body>
</html>
