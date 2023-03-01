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
            	<input type="button" onclick="window.location.href='index.jsp';" value="Home">
            	<div class="footer">
	                <footer>&#169; <%= spJsp.foot %></footer>
            	</div>
        	</aside>
    	</section>
	</body>
	<style>
		* { margin: 0; padding: 0; box-sizing: border-box; }
        body { background-color: #afafaf; font-family: verdana; background-size: cover; background-attachment: fixed; }
		section { width: 100%; height: 100vh; display: flex ; justify-content: center; align-items: center; }
		section aside { background-color: #3b3b3b; margin: 0 auto; padding: 1.5%; width: 55%; border-radius: 3px; box-shadow: 0 5px 8px 0 #000000; }
		.header { background-color: #cfcfcf; border-radius: 8px; padding: 15px; }
		.header h1 { font-size: 25px; font-weight: bold; color: #0c0c0c; text-align: center; text-decoration: none; }
		fieldset { margin: 5% 15% 0 15%; }
		p { color: #e9e9e9; padding: 3px; text-align: center; }
		legend { margin-left: calc(50% - 28px - 8px); color: #e9e9e9; font-weight: bold; }
		input[type=button]  { margin: 4% 0 0 45%; width: fit-content; font-weight: bold; border: none; color: #0c0c0c; background-color: #cfcfcf; padding: 4px;font-size: 18px; border-radius: 3px; cursor: pointer; }
		.footer { margin: 7% 0 0 0; color: #0c0c0c; background-color: #cfcfcf; text-align: center; padding: 3px; border-radius: 3px; }
	</style>
</html>