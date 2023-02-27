package com.techpalle.dao;
import java.sql.*;
import com.techpalle.model.Customer;
public class CustomerDataAccess
{
	private static Connection con = null; private static PreparedStatement ps = null; private static ResultSet rs = null;
	private static final String dbDriver = "com.mysql.cj.jdbc.Driver";
	private static final String dbUrl = "jdbc:mysql://localhost:3306/jdbcproject";
	private static final String dbUsername = "root";
	private static final String dbPassword = "Ashis_admin$5";
	private static final String insert = "INSERT INTO customer(cname, cemail, cpassword, cmobile, cstate) VALUES(?, ?, ?, ?, ?)";
	private static final String validate = "SELECT cemail, cpassword FROM customer WHERE cemail = ? AND cpassword = ?";
	public static boolean validateCustomer(String mail, String pass)
	{
		boolean b = false;
		try
		{
			Class.forName(dbDriver);
			con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
			ps = con.prepareStatement(validate);
			ps.setString(1, mail);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			if(rs != null)
			{
				rs.next();
				String m = rs.getString("cemail");
				String p = rs.getString("cpassword");
				if(m.equals(mail) && p.equals(pass)) { b = true; }
			}
		}
		catch (ClassNotFoundException | SQLException e) { e.printStackTrace(); }
		finally
		{
			try { if(rs != null) { rs.close(); } if(ps != null) { ps.close(); } if(con != null) { con.close(); } }
			catch (SQLException e) { e.printStackTrace(); }
		}
		return b;
	}
	public static void insertCustomer(Customer cus)
	{
		try
		{
			Class.forName(dbDriver);
			con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
			ps = con.prepareStatement(insert);
			ps.setString(1, cus.getName());
			ps.setString(2, cus.getMail());
			ps.setString(3, cus.getPassword());
			ps.setLong(4, cus.getMobile());
			ps.setString(5, cus.getState());
			ps.executeUpdate();
			System.out.println("data inserted successfully to the 'customer' table\n");
		}
		catch (ClassNotFoundException e) { e.printStackTrace(); }
		catch (SQLException e)
		{
			if(e instanceof SQLIntegrityConstraintViolationException)
			{
				System.out.println("duplicate entry of user email\n");
			}
		}
		finally
		{
			try { if(ps != null) { ps.close(); } if(con != null) { con.close(); } }
			catch (SQLException e) { e.printStackTrace(); }
		}
	}
}
