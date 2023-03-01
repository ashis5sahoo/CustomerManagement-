<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Display Page</title>
	</head>
	<body>
	<%
		Connection con = null; PreparedStatement ps = null; ResultSet rs = null;
		final String dbDriver = "com.mysql.cj.jdbc.Driver";
		final String dbUrl = "jdbc:mysql://localhost:3306/jdbcproject";
		final String dbUsername = "root";
		final String dbPassword = "Ashis_admin$5";
		String display = "SELECT * FROM customer";
		try
		{
			Class.forName(dbDriver);
			con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
			ps = con.prepareStatement(display);
			rs = ps.executeQuery();
			rs.next();
	%>
	<section>
		<aside>
			<div class="header"><h1> Cusomer Management Display Page</h1></div>
			<div>
				<table class="display" border="1">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>E-mail</th>
					<th>Password</th>
					<th>Mobile</th>
					<th>State</th>
				</tr>
	<%
			do
			{
	%>
				<tr>
					<td><%= rs.getString("cid") %></td>
					<td><%= rs.getString("cname") %></td>
					<td><%= rs.getString("cemail") %></td>
					<td><%= rs.getString("cpassword") %></td>
					<td><%= rs.getLong("cmobile") %></td>
					<td><%= rs.getString("cstate") %></td>
				</tr>
	<%
			}
			while(rs.next());
	%>
			</table>
	<%
		}
		catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }
	%>
			</div>
				<input type="button" onclick="window.location.href='index.jsp';" value="Home">
			<div class="footer"><footer>&#169; Copyright Techpalle</footer></div>
		</aside>
	</section>
</body>
    <style>
    	* { margin: 0; padding: 0; box-sizing: border-box; }
        body { background-color: #afafaf; font-family: verdana; background-size: cover; background-attachment: fixed; }
        section { width: 100%; height: 100vh; display: flex ; justify-content: center; align-items: center; }
        section aside { background-color: #3b3b3b; padding: 1.5%; width: 60%; border-radius: 3px; box-shadow: 0 5px 8px 0 #00000080; }
        .header { overflow: visible; background-color: #cfcfcf; border-radius: 3px; padding: 15px; }
        .header h1 {font-size: 25px; font-weight: bold; color: #e9e9e9; text-align: center; text-decoration: none; }
        .display { margin: 3% 0 0 0; display: flex ; justify-content: center; align-items: center; border: hidden; padding: 2px; color: #e9e9e9; font-weight: lighter; font-family: Verdana; }
        table, th, td { padding: 3px; border: 2px solid; border-color: #236b8f; border-collapse: collapse; }
        input[type=button] { margin: 5% 0 0 38%; font-weight: 500; width: 25%; font-weight: bold; border: none; color: #e6e6e6; background-image: linear-gradient(0deg, #02445a, #225a49); padding: 8px; font-size: 18px; border-radius: 3px; cursor: pointer; text-shadow: -2px 2px 4px #000000; transition: 0.2s all ease-in-out; }
        .footer { margin: 7% 0 0 0; color: #e9e9e9; background-color: #cfcfcf; text-align: center; padding: 3px; border-radius: 3px; }
    </style>
</html>