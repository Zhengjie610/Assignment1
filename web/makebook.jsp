<%-- 
    Document   : makebook
    Created on : 2017-5-20, 16:21:25
    Author     : Administrator
--%>

<%@page import="uts.Flights"%>
<%@page import="uts.Flight"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Make booking</title>
    </head>
    <body>
        
        <% String filePath = application.getRealPath("WEB-INF/flights.xml");%>
        <jsp:useBean id="flightApp" class="uts.FlightApplication" scope="application">
            <jsp:setProperty name="flightApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        <%
            Flight flight = (Flight) session.getAttribute("flight");
            flight.setSeats("unavailable");
            Flights flights = (Flights) session.getAttribute("flights");
            flightApp.updateXML(flights, filePath);
        %>
        <h1>Make booking!</h1>
        
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
        
        <p>Booking successfully!</p>
    </body>
</html>
