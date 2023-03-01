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
</html>