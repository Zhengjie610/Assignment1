<%-- 
    Document   : logout
    Created on : Aug 10, 2016, 2:40:01 PM
    Author     : George
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="refresh" content="0;url=main.jsp ">
        <title>Logout</title>
    </head>
    <body>
        
        <%
                session.invalidate();
        %>
      
       
    </body>
</html>
