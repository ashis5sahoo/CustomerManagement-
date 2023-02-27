<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<!-- <link rel="stylesheet" type="text/css" href="WebContent/indexstyle.css"> -->
		<!-- <link rel="stylesheet" href="http://localhost:8080/indexstyle.css" > -->
		<!-- <link rel="stylesheet" href="<c:url value="/indexstyle.css"/>"> -->
		<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/indexstyle.css"> -->
		<!-- /CustomerManagement/WebContent/indexstyle.css -->
		<!-- <link rel="stylesheet" href="<%=request.getContextPath()%>/indexstyle.css"> -->
		<title>Customer Management</title>
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
	                <div class="column">
                    	<form action="log"><input type="submit" value="Sign In"></form>
                	</div>
                	<div class="column">
	                    <form action="reg"><input type="submit" value="Sign Up"></form>
                	</div>
            	</div>
            	<div class="footer">
	                <footer>&#169; Copyright Techpalle</footer>
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
		p, li {margin-left: calc(20% - 35px - 8px); color: #e9e9e9; }
		legend { margin-left: calc(50% - 35px - 8px); color: #e9e9e9; font-weight: bold; }
		.column { float: left; width: 33%; padding: 5px; margin-left: 15%; }
		.row::after { content: ""; clear: both; display: flex; }
		input[type=submit] { margin: 15% 0 0 10%; font-weight: 500; width: 35%; font-weight: bold; border: none; color: #e6e6e6; background-image: linear-gradient(0deg, #02445a, #225a49); padding: 8px; font-size: 18px; border-radius: 3px; cursor: pointer; text-shadow: -2px 2px 4px #000000; transition: 0.2s all ease-in-out; }
		.footer { margin: 7% 0 0 0; color: #e9e9e9; background-image: linear-gradient(45deg, #46646e, #236b8f); text-align: center; padding: 3px; border-radius: 3px; text-shadow: -2px 2px 4px #000000; }
	</style>
</html>