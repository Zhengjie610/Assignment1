<%-- 
    Document   : makebook
    Created on : 2017-5-20, 16:21:25
    Author     : Administrator
--%>

<%@page import="uts.Flights"%>
<%@page import="uts.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
       
        <!--<meta http-equiv="refresh" content="10">-->
        <title>Make Booking</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
        <script type="text/javascript" src="js/jquery.min.js"></script>
    </head>

    <body>
        
        <% String filePath = application.getRealPath("WEB-INF/flights.xml");%>
        <jsp:useBean id="flightApp" class="uts.FlightApplication" scope="application">
            <jsp:setProperty name="flightApp" property="filePath" value="<%=filePath%>"/>
        </jsp:useBean>
        
        <%
            Flight flight = (Flight) session.getAttribute("flight");
            String flag = request.getParameter("flag");
            
            if( (flag != null) && flag.equals("1")){
                flight.setSeats("unavailable");
                Flights flights = (Flights) session.getAttribute("flights");
                flightApp.updateXML(flights, filePath);
            }
        %>
        <%
            Customer login = (Customer) session.getAttribute("customer"); //把从set地方拿过来用Get
            //String log = login.getEmail();
        %> 
 <%--        
        <%= flag%>
        <%if( (flag != null) && flag.equals("1")){%>
            <div>Booking successfully!</div>
        <%}%>
 --%>
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
        
        <div id ="fltinfo" >
            <div class="banner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                            <div class="schbox">
                                <div class="col-md-6 col-sm-12 col-xs-12 appointment"   >
                                    <div class="schbox-title">
                                        <h2>Booking Flight Info</h2>
                                    </div>
                                    <%    if (login != null) { %> 
                                    <form class="appointform" method="post" action="booking.jsp?flag=1">
                                        <table border="0" style="width:600px;text-align:left;">                
                                            <thead><tr><th style="width:150px;">Item</th><th style="width:320px;">Value</th></tr></thead>
                                            <tbody>
                                                <tr><td>ID: </td><td>${flight.id}</td></tr>
                                                <tr><td>Departure: </td><td>${flight.departure}</td></tr>
                                                <tr><td>Return: </td><td>${flight.returnd}</td></tr>
                                                <tr><td>Price: </td><td>${flight.price}</td></tr>
                                                <tr><td>Origin: </td><td>${flight.origin}</td></tr>
                                                <tr><td>Destination: </td><td>${flight.destination}</td></tr>
                                                <tr><td>Type: </td><td>${flight.type}</td></tr>
                                                <tr><td>Seats: </td><td>${flight.seats}</td></tr>
                                            </tbody>
                                        </table>
                                        <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                                            <button type="submit" class="btn orange">Make Booking</button>
                                            <!--<input type="button" class="btn orange" name="makebook" value="Make Booking" onclick="makebooking();" />-->
                                        </div>
                                        <%if( (flag != null) && flag.equals("1")){%>
                                            <div>Booking Successfully!</div>
                                        <%}%>
                                        <!--<div id = "bknrst">Booking ready!</dir>-->
                                    </form>
                                         <%} else {%>
                                         
                                          <div > <h4 style="text-align:center" clolar="white">You are logged in as Viewer! </h4></div>
                                          <div > <h4 style="text-align:center" clolar="white">No Booking Available </h4></div>
                                        <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!--                <input type="button" class="btn orange" name="makebook" value="makebook" 
              onclick="session.setAttribute('flag','1');$('#bknrst').html('Booking successfully!');window.location.reload();" />-->

    <script type="text/javascript">
        function makebooking(){
//            Flight flight = (Flight) session.getAttribute("flight");
//            
//            flight.setSeats("unavailable");
//            Flights flights = (Flights) session.getAttribute("flights");
//            flightApp.updateXML(flights, filePath); 
            
            $("#bknrst").html("Booking successfully!");
            session.setAttribute("flag","1");
            window.location.reload();
        }

    </script> 
    
    
     
 <%    if (login == null) { %> 

        <div > <h4 style="text-align:center">You are logged in as Viewer </h4></div>
        <%} else {%>
        <div > <h4 style="text-align:center">You are logged in as <%=login.getEmail()%> </h4></div>
        <%}%>
    
    
    </body>
</html>
