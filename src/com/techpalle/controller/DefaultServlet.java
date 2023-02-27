package com.techpalle.controller;
import com.techpalle.dao.CustomerDataAccess;
import com.techpalle.model.Customer;
import com.techpalle.util.SuccessPage;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/")
public class DefaultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String path = request.getServletPath();
		switch(path)
		{
		case "/logCustomer":
			validateCustomer(request, response);
			break;
		case "/regCustomer":
			insertCustomerData(request, response);
			break;
		case "/log":
			getLoginPage(request, response);
			break;
		case "/reg":
			getRegistrationPage(request, response);
			break;
		default:
			getStartUpPage(request, response);
			break;
		}
	}
	private void validateCustomer(HttpServletRequest request, HttpServletResponse response)
	{
//		read the email and password from jsp page
		String m = request.getParameter("tbMailLog");
		String p = request.getParameter("tbPassLog");
//		call the method to validate user data from DAO
		boolean res = CustomerDataAccess.validateCustomer(m, p);
//		check condition and redirect user to success page
		if(res)
		{
			try
			{
				RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
//				store success page data inside request dispatcher
				SuccessPage sp = new SuccessPage();
				request.setAttribute("successDetails", sp);
				rd.forward(request, response);
			}
			catch (IOException | ServletException e) { e.printStackTrace(); }
		}
		else
		{
			getLoginPage(request, response);
		}
	}
	private void insertCustomerData(HttpServletRequest request, HttpServletResponse response)
	{
//		read data from jsp page
		String n = request.getParameter("tbName");
		String e = request.getParameter("tbMail");
		String p = request.getParameter("tbPass");
		long m = Long.parseLong(request.getParameter("tbMob"));
		String s = request.getParameter("ddlState");
//		store data in customer object
		Customer cus = new Customer(n, e, p, m, s);
//		call the insertCustomer() present in dao CustomerDataAccess
		CustomerDataAccess.insertCustomer(cus);
//		redirect the inserted data to login page
		try
		{
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		catch (ServletException | IOException e1) { e1.printStackTrace(); }
	}
	private void getLoginPage(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		catch (IOException | ServletException e) { e.printStackTrace(); }
	}
	private void getRegistrationPage(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			rd.forward(request, response);
		}
		catch (IOException | ServletException e) { e.printStackTrace(); }
	}
	private void getStartUpPage(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		catch (IOException | ServletException e) { e.printStackTrace(); }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}
}
