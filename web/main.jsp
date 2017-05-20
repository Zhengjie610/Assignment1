<%@page import="java.util.Date"%>
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
         <% String filePath = application.getRealPath("WEB-INF/flights.xml");%>
        <jsp:useBean id="flightApp" class="uts.FlightApplication" scope="application">
            <jsp:setProperty name="flightApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            String origin = request.getParameter("origin");
            String destination = request.getParameter("destination");
            String departure = request.getParameter("departure");
            String returnd = request.getParameter("returnd");            
        %>
        <%
            Flights flights = flightApp.getFlights();
            session.setAttribute("flights", flights);
        %>       
        <jsp:useBean id="flightService" class="uts.FlightServiceImpl" scope="application">
            <jsp:setProperty name="flightService" property="flights" value="<%=flights%>"/>
        </jsp:useBean>        
        <%
            Flight flight = flightService.search(origin, destination, departure, returnd);
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
                                <form class="appointform" method="post" action="main.jsp">
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="barfont1" >
                                            <h5>Flying from</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="origin" name="origin" placeholder="Enter a City"/>
                                        </div>
                                        <div class="barfont1" >
                                            <h5>Flying to</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="destination" name="destination" placeholder="Enter a City"/>
                                        </div>

                                    </div>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <div class="barfont1" >
                                            <h5>Departing</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" id="departure" name="departure" placeholder="Date"/>
                                        </div>
                                        <div class="barfont1" >
                                            <h5>Returning</h5>
                                        </div>
                                        <div class="form-group">
                                            <input type="date" class="form-control" id="returnd" name="returnd" placeholder="Date"/>
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

        <%  if (flight == null) { %>        
            <div > <h4 style="text-align:center">No available flight! </h4></div>        
        <%} else {%>
            <%
                String seats = flight.getSeats();
            %>
            <%  if(seats.equalsIgnoreCase("available")){
                session.setAttribute("flight", flight);
            %> 
                <meta http-equiv="refresh" content="1;url=booking.jsp ">
            <%} else {%>
                <div > <h4 style="text-align:center">No available seats! </h4></div> 
            <%}%>
        <%}%>
    </body>
</html>
