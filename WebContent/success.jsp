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
</html>