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
	            <div class="header">
                	<h1>Register New Customer</h1>
            	</div>
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
        input[type=text], input[type=email], input[type=password], input[type=tel] { width: calc(100% - 20px); padding: 8px 10px; font-size: 14px; font-weight: bold; margin: 3px 0 3px 6px; color: #1f1f1f; border: #326630 solid 1px; background-color: #bbb9b9; border-radius: 3px; transition: 0.3s all cubic-bezier(0.175, 0.885, 0.32, 1.275); }
        input[type=text]:focus, input[type=email]:focus, input[type=password]:focus, input[type=tel]:focus { transform: scale(1.1); }
        input[type=submit],[type=button] { margin: 15% 0 0 10%;font-weight: 500; width: 30%; font-weight: bold; border: none; color: #e6e6e6; background-image: linear-gradient(0deg, #02445a, #225a49); padding: 8px; font-size: 18px; border-radius: 3px; cursor: pointer; text-shadow: -2px 2px 4px #000000; transition: 0.2s all ease-in-out; }
        option { width: calc(100% - 20px); padding: 8px 10px; font-size: 14px; font-weight: bold; margin: 3px 0 3px 6px; color: #1f1f1f; border: #326630 solid 1px; background-color: #bbb9b9; border-radius: 3px; transition: 0.3s all cubic-bezier(0.175, 0.885, 0.32, 1.275); }
        #select-container { height: 40px; position: relative; width: calc(100% - 20px); font-size: 14px; font-weight: bold; }
        #dropdown { border: 1px solid #326630; border-radius: 3px; background-color: #bbb9b9; color: #1f1f1f; cursor: pointer; height: 100%; outline: none; padding: 8px 10px; width: 100%; margin: 3px 0 3px 6px; }
        #dropdown option {background: #46646e; color: #1f1f1f; }
        .footer { margin: 7% 0 0 0; color: #e9e9e9; background-image: linear-gradient(45deg, #46646e, #236b8f); text-align: center; padding: 3px; border-radius: 3px; text-shadow: -2px 2px 4px #000000; }
    </style>
</html>