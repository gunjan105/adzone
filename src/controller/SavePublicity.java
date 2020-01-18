package controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modal.PublicityDetailsDao;
import pojo.PublicityDetails;

/**
 * Servlet implementation class SavePublicity
 */
@WebServlet("/SavePublicity")
public class SavePublicity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SavePublicity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String publicityName = request.getParameter("customer_name");
		String publicityEmail = request.getParameter("customer_email");
		String publicityContact = request.getParameter("customer_contact");
		String publicityType = request.getParameter("customer_email");
		String publicityAddress = request.getParameter("customer_address");
		String city = request.getParameter("customer_city");
		String state = request.getParameter("customer_state");
		int pincode =Integer.parseInt(request.getParameter("pincode"));
		String adhaarNo = request.getParameter("customer_aadhaar");
		String publicityRegistrationNumber = request.getParameter("customer_license");
		String password = request.getParameter("password");
		String websiteLink = request.getParameter("website");
		int numOfHoarding =Integer.parseInt(request.getParameter("num_of_hoarding"));
		Date publicityRegisterDate = new Date();
		String publicityStatus = "pending" ;
		int publicityRating = -1;
		Set productses = new HashSet(0);
		PublicityDetails pd = new PublicityDetails(publicityName, publicityAddress, publicityContact, publicityEmail, publicityRegistrationNumber, adhaarNo, websiteLink, password, publicityRegistrationNumber, state, pincode, publicityType, numOfHoarding, publicityRegisterDate, publicityRating, publicityStatus,productses);
		PublicityDetailsDao pdd = new PublicityDetailsDao();
		pdd.save(pd);
		response.sendRedirect("Publicity/publicityDashboard.jsp");
	}

}
