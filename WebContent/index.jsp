<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Customer Management</title>
		<!-- <link rel="stylesheet" type="text/css" href="css/indexstyle.css"> -->
	</head>
	<body>
		<section>
        	<aside>
            	<div class="header">
                	<h1> Welcome to Cusomer Management Page</h1>
            	</div>
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
            	<div class="footer">
	                <footer>&#169; Copyright Techpalle</footer>
            	</div>
        	</aside>
    	</section>
	</body>
	<style>
		* { margin: 0; padding: 0; box-sizing: border-box; }
		body { background-color: #afafaf; font-family: verdana; background-size: cover; background-attachment: fixed; }
		section { width: 100%; height: 100vh; display: flex ; justify-content: center; align-items: center; }
		section aside { background-color: #3b3b3b; padding: 1.5%; width: 60%; border-radius: 3px; box-shadow: 0 5px 8px 0 #000000; }
		.header { background-color: #cfcfcf; overflow: visible; border-radius: 3px; padding: 15px; }
		.header h1 {font-size: 25px; font-weight: bold; color: #0c0c0c; text-align: center; text-decoration: none; }
		fieldset { margin: 5% 15% 0 15%; }
		p, li {margin-left: calc(20% - 35px - 8px); color: #ffffff; }
		legend { margin-left: calc(50% - 35px - 8px); color: #ffffff; font-weight: bold; }
		.row::after { content: ""; clear: both; display: table; }
		.row .div1 { float: left; width: 220px; padding: 3px; margin-left: 100px; }
		.row .div2 { float: left; width: 230px; padding: 3px;margin-left: 20px; }
		.row .div3 { float: right; width: 200px; padding: 3px; }
		input[type=submit] { margin: 15% 0 0 10%; font-weight: 500; width: 35%; font-weight: bold; border: none; color: #0c0c0c; background-color: #cfcfcf; padding: 8px; font-size: 18px; border-radius: 3px; cursor: pointer; }
		.footer { margin: 7% 0 0 0; color: #0c0c0c; background-color: #cfcfcf; text-align: center; padding: 3px; border-radius: 3px; }
	</style>
</html>