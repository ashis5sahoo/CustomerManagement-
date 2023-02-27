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
        body { background-image: linear-gradient(45deg, #46646e, #236b8f); font-family: verdana; background-size: cover; background-attachment: fixed; }
        section { width: 100%; height: 100vh; display: flex; justify-content: center; align-items: center; }
        section aside { width: 40%; background-image: linear-gradient(180deg, #011c25, #273942); padding: 1.5%; border-radius: 3px; box-shadow: 0 5px 8px 0 #00000080; }
        section aside h3 { font-size: 15px; color: #bbb9b9; text-align: center; margin-top: 5px;}
        section aside form { font-size: 15px; text-align: justify; margin: 10px 0; padding: 5px; color: #e9e9e9; font-weight: bold;}
        .header { overflow: visible; background-image: linear-gradient(45deg, #46646e, #236b8f); border-radius: 3px; padding: 0.002vw; }
        .header h1 { padding: 20px; font-size: 28px; font-weight: bold; color: #e9e9e9; text-align: center; text-decoration: none; text-shadow: -2px 2px 4px #000000; }
        label { margin: 3px 0 3px 6px;}
        input[type=email], input[type=password] { width: calc(100% - 20px); padding: 8px 10px; font-size: 14px; font-weight: bold; margin: 3px 0 3px 6px; color: #1f1f1f; border: #326630 solid 1px; background-color: #bbb9b9; border-radius: 3px; transition: 0.3s all cubic-bezier(0.175, 0.885, 0.32, 1.275); }
        input[type=email]:focus, input[type=password]:focus { transform: scale(1.1); }
        input[type=submit],[type=button] { margin: 15% 0 0 10%;font-weight: 500; width: 30%; font-weight: bold; border: none; color: #e6e6e6; background-image: linear-gradient(0deg, #02445a, #225a49); padding: 8px; font-size: 18px; border-radius: 3px; cursor: pointer; text-shadow: -2px 2px 4px #000000; transition: 0.2s all ease-in-out; }
        .footer { margin: 7% 0 0 0; color: #e9e9e9; background-image: linear-gradient(45deg, #46646e, #236b8f); text-align: center; padding: 3px; border-radius: 3px; text-shadow: -2px 2px 4px #000000; }
    </style>
</html>