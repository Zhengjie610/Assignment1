<%-- 
    Document   : results
    Created on : May 7, 2017, 1:12:40 AM
    Author     : ongky
--%>

<%@page import="uts.CustomersPrinter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body bgcolor="#9ae59a">

        <div>



            <% String filePath = application.getRealPath("WEB-INF/flights.xml");%>

            <%
 
                CustomersPrinter.html.print(filePath, out);
            %>

        </div>



        <form method="post" action="welcome.jsp">

            <table>      
                <tr><td></td><td><input type="submit" value="Register"></td></tr>
            </table>            
        </form>
    </body>
</html>