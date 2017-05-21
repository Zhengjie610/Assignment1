<%@ page import="uts.*"%>
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
             Customer login = (Customer) session.getAttribute("customer");
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

                    <h3><font color="white">Available Flight:  </font></h3>
                    <table id="tab" border="2">
                        <tr style="width:1050px;height:30px;">
                            <th style="width:150px;">ID</th>
                            <th style="width:150px;">Departure</th>
                            <th style="width:150px;">Returnd</th>
                            <th style="width:100px;">Price</th>
                            <th style="width:100px;">Origin</th>
                            <th style="width:100px;">Destination</th> 
                            <th style="width:100px;">Type</th>
                            <th style="width:100px;">Seats</th>
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
                            <%    if (login == null) { %> 
                            <td><input type="button" class="btn orange" name="makebook" value="Booking Not Available"  /></td>
                            <%} else {%>
                            <td><input type="button" class="btn orange" name="makebook" value="Booking" onclick="window.location='booking.jsp'" /></td>
                            <%}%>
 
                            
                        </tr>
                    </table>                  
         
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
