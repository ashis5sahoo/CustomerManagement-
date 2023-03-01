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
            	<div class="header">
                	<h1>Customer Login Page</h1>
            	</div>
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
		section aside { background-color: #3b3b3b; padding: 1.5%; width: 40%; border-radius: 3px; box-shadow: 0 5px 8px 0 #000000; }
		section aside h3 { font-size: 17px; color: #ffffff; text-align: center; margin-top: 5px;}
        section aside form { font-size: 15px; text-align: justify; margin: 10px 0; padding: 5px; color: #e9e9e9; font-weight: bold;}
        .header { background-color: #cfcfcf; overflow: visible; border-radius: 3px; padding: 15px; }
		.header h1 {font-size: 25px; font-weight: bold; color: #0c0c0c; text-align: center; text-decoration: none; padding: 3px; }
		label { margin: 3px 0 3px 6px;}
        input[type=email], input[type=password] { width: calc(100% - 20px); padding: 8px 10px; font-size: 14px; font-weight: bold; margin: 3px 0 3px 6px; color: #1f1f1f; border: #326630 solid 1px; background-color: #bbb9b9; border-radius: 3px; transition: 0.3s all cubic-bezier(0.175, 0.885, 0.32, 1.275); }
        input[type=email]:focus, input[type=password]:focus { transform: scale(1.1); }
        input[type=submit],[type=button]  { margin: 5% 0 0 10%; font-weight: 500; width: 30%; font-weight: bold; border: none; color: #0c0c0c; background-color: #cfcfcf; padding: 8px; font-size: 18px; border-radius: 3px; cursor: pointer; }
		.footer { margin: 7% 0 0 0; color: #0c0c0c; background-color: #cfcfcf; text-align: center; padding: 3px; border-radius: 3px; }
    </style>
</html>