<%-- 
    Document   : register
    Created on : May 7, 2017, 1:00:48 AM
    Author     : ongky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <style>
div.container {
    width: 100%;
    border: 1px;
}

footer {
    padding: 1em;
    color: black;
    clear: left;
    text-align: center;
}

nav {
    float: left;
    max-width: 450px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}

article {
    margin-left: 500px;
    border-left: 1px;
    padding: 2em;
    overflow: hidden;
}
</style>
    <body background="">
        <div id="bodycontent">
		<form method="POST" action="results.jsp">
				<fieldset>
						<legend>TicketonGo.com</legend>
                                                
                                                
                                                
                                                <div class="container">
                                                
<nav>
  <ul>
      <table>
                                                    <h4>Join Us as TicketonGo Member!</h4>
                                                    <tr>
                                                        <td>Full Name</td>
                                                        <td><input type="text" name="name" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email</td>
                                                        <td><input type="text" name="email" /></td>
                                                    </tr>
                                                    <tr>  
                                                        <td>Password</td>
                                                        <td><input type="password" name="password" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Date of Birth</td>
                                                        <td><input type="date" name="dob" /></td>
                                                    </tr>
                                                    
                                                    <tr>
                                                     <td></td>    <td><input type="Submit" value="Join" /></td>
                                                    </tr>
                                                    </table>
  </ul>
</nav>

<article>
  <h4>Quick Booking with Only One Click </h4>
  <img src="icon-touch.png" alt="fast click" style="width:60px;height:50px;">
  <p>As a member of TicketonGo, your booking is our priority.</p>
  
</article>



<i align="left" style="margin-left: 25px;">Already registered?  <a href="login.jsp"><u>Login</u></a></i>

</div>

                                                </fieldset>
       
		</form>
</div>
<footer>&copy; 2017 TicketonGo.com</footer>        
</body>
</html>
