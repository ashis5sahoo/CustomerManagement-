<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Registration Page</title>
	</head>
<body>
	<section>
        <aside>
        	<div class="header"><h1>Register New Customer</h1></div>
            <div>
            	<h3>Please fill the following credentials</h3>
                <form action="regCustomer" method="post">
                	<div>
                        <label for="tbName">Name:</label>
	                    <input type="text" name="tbName" id="tbNAme"><br>
                	    <label for="tbMail">Email:</label>
	            	    <input type="email" name="tbMail" id="tbMail"><br>
                	    <label for="tbPass">Password:</label>
	                	<input type="password" name="tbPass" id="tbPass"><br>
	                	<label for="tbMob">Mobile:</label>
	            	    <input type="tel" name="tbMob" id="tbMob"><br>
                    </div>
	                <div id='select-container'>
                        <label for="ddlState">State:</label>
	                	<select name="ddlState" id='dropdown'>
                            <option value="" disabled selected>--select--</option>
	                		<option value="Karnataka">Karnataka</option>
	                		<option value="Tamilnadu">Tamilnadu</option>
	                		<option value="Andhra Pradesh">Andhra Pradesh</option>
	                	</select>
                    </div>
	                <input type="submit" value="register">
                    <input type="button" onclick="window.location.href='index.jsp';" value="cancel">
	            </form>
            </div>
            <div class="footer"><footer>&#169; Copyright Techpalle</footer></div>
        </aside>
    </section>
</body>
</html>