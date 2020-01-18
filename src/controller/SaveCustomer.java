package controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modal.CustomerInfoDao;
import pojo.CustomerInfo;

/**
 * Servlet implementation class SaveCustomer
 */
@WebServlet("/SaveCustomer")
public class SaveCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String customerName = request.getParameter("customer_name");
		 String customerContact = request.getParameter("customer_email");
		 String customerEmail = request.getParameter("customer_contact");
		 String customerAddress = request.getParameter("customer_address");
		 String city = request.getParameter("customer_city");
		 String state = request.getParameter("customer_state");
		 int pincode = Integer.parseInt(request.getParameter("pincode"));
		 String password = request.getParameter("customer_pwd");
		 
		 Set reservedProductses = new HashSet(0);
		CustomerInfo ci = new CustomerInfo(customerName, customerContact, customerEmail, customerAddress, city, state, pincode, password, reservedProductses );
		CustomerInfoDao cid = new CustomerInfoDao();
		cid.save(ci);
		response.sendRedirect("Customer/customerDashboard.jsp");
	}

}
