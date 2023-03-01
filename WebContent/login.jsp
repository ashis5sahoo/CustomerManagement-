<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login Page</title>
	</head>
<body>
	<section>
        <aside>
            <div class="header"><h1>Customer Login Page</h1></div>
            <div>
            	<h3>Please check the auto filled credentials</h3>
            	<form action="logCustomer" method="post">
            		<label for="tbMail">Email:</label>
	            	<input type="email" name="tbMailLog" id="tbMail" value="<%=request.getParameter("tbMail")%>"><br><br>
	            	<label for="tbPass">Password:</label>
	            	<input type="password" name="tbPassLog" id="tbPass" value="<%=request.getParameter("tbPass")%>">
	            	<input type="submit" value="login">
                	<input type="button" onclick="window.location.href='index.jsp';" value="cancel">
            	</form>
            </div>
            <div class="footer"><footer>&#169; Copyright Techpalle</footer></div>
        </aside>
    </section>
</body>
</html>