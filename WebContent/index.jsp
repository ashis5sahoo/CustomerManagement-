<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Customer Management</title>
	</head>
<body>
	<section>
        <aside>
            <div class="header"><h1> Welcome to Cusomer Management Page</h1></div>
	        <div>
	        	<fieldset>
	        		<legend>Summary</legend>
                    <p>
                    	This web application contains JSP, Servlet with JDBC.<br>
                        It includes the following functions:<br>
                        <b><li>Register new customer details</li></b>
                        <b><li>Login to the registered customer</li></b>
                    </p>
                </fieldset>
            </div>
            <div class="row">
                <div class="div1"><form action="log"><input type="submit" value="Sign In"></form></div>
                <div class="div2"><form action="reg"><input type="submit" value="Sign Up"></form></div>
                <div class="div3"><form action="res"><input type="submit" value="Result"></form></div>
            </div>
            <div class="footer"><footer>&#169; Copyright Techpalle</footer></div>
        </aside>
    </section>
</body>
</html>