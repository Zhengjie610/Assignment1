<%@page import="uts.Flight"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Results</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>

        <style>
            #tab{color:#c7254e;font-size:18px;font-family:"Times New Roman";text-algn:center;background-color:#FFFFFF}
        </style>
        
    </head>

    <body>
        <%
            Flight flight = (Flight) session.getAttribute("flight");
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
                <div class="row center-block">

                    <h3>Available Flight: </h3>
                    <table id="tab" border="2">
                        <tr style="width:1050px;height:30px;">
                            <th style="width:150px;">id</th>
                            <th style="width:150px;">departure</th>
                            <th style="width:150px;">returnd</th>
                            <th style="width:100px;">price</th>
                            <th style="width:100px;">origin</th>
                            <th style="width:100px;">destination</th> 
                            <th style="width:100px;">type</th>
                            <th style="width:100px;">seats</th>
                            <th style="width:100px;"></th>
                        </tr>
                        <tr>
                            <td>${flight.id}</td>
                            <td>${flight.departure}</td>
                            <td>${flight.returnd}</td>
                            <td>${flight.price}</td>
                            <td>${flight.origin}</td>
                            <td>${flight.destination}</td> 
                            <td>${flight.type}</td>
                            <td>${flight.seats}</td>
                            <td><input type="button" class="btn orange" name="makebook" value="booking" onclick="window.location='booking.jsp'" /></td>
                        </tr>
                    </table>                  

                </div>
            </div>
        </div>
    </body>
</html>
