<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
	pageEncoding="ISO-8859-1"%>
<%@ page import = "com.techpalle.util.SuccessPage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Success Page</title>
	</head>
	<body>
	<% SuccessPage spJsp = (SuccessPage) request.getAttribute("successDetails"); %>
	    <section>
        	<aside>
	            <div class="header">
                	<h1><%= spJsp.head %></h1>
            	</div>
            	<div>
	                <fieldset>
                    	<legend>Note</legend>
                    	<p><%= spJsp.para %></p>
                	</fieldset>
            	</div>
            	<div class="footer">
	                <footer>&#169; <%= spJsp.foot %></footer>
            	</div>
        	</aside>
    	</section>
	</body>
	<style>
		body { background-image: linear-gradient(45deg, #46646e, #236b8f); font-family: verdana; background-size: cover; background-attachment: fixed; }
		section { width: 100%; height: 100vh; display: flex ; justify-content: center; align-items: center; }
		section aside { background-image: linear-gradient(180deg, #011c25, #273942); padding: 1.5%; width: 60%; border-radius: 3px; box-shadow: 0 5px 8px 0 #00000080; }
		.header { overflow: visible; background-image: linear-gradient(45deg, #46646e, #236b8f); border-radius: 3px; padding: 0.002vw; }
		.header h1 {font-size: 25px; font-weight: bold; color: #e9e9e9; text-align: center; text-decoration: none; padding: 5px; text-shadow: -2px 2px 4px #000000; }
		fieldset { margin: 5% 15% 0 15%; }
		p {text-align: center; color: #e9e9e9; font-size: medium; }
		legend { margin-left: calc(50% - 35px - 8px); color: #e9e9e9; font-weight: bold; font-size: large; }
		.footer { margin: 7% 0 0 0; color: #e9e9e9; background-image: linear-gradient(45deg, #46646e, #236b8f); text-align: center; padding: 3px; border-radius: 3px; text-shadow: -2px 2px 4px #000000; }
	</style>
</html>