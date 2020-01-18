package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.jdbc.Blob;

import modal.ProductsDao;
import modal.PublicityDetailsDao;
import pojo.Products;
import pojo.PublicityDetails;

/**
 * Servlet implementation class AddProduct
 */
@MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*10, 
maxRequestSize=1024*1024*50)
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String getFileName(final Part part) {
	    final String partHeader = part.getHeader("content-disposition");
	    
	    for (String content : part.getHeader("content-disposition").split(";")) {
	        if (content.trim().startsWith("filename")) {
	            return content.substring(
	                    content.indexOf('=') + 1).trim().replace("\"", "");
	        }
	    }
	    return null;
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part filePart = request.getPart("product_image");
		
		 String photo="";
         String path="F:/Projects/Final Year Project/Adzone1.0/WebContent/public/adzoneImages";
         
         File file=new File(path);
         file.mkdir();
         String fileName = getFileName(filePart);
         
         OutputStream out = null;
         
         InputStream filecontent = null;
           
       //  PrintWriter writer = response.getWriter();
           try {
       out = new FileOutputStream(new File(path + File.separator
               + fileName));
       
       filecontent = filePart.getInputStream();
    

       int read = 0;
       final byte[] bytes = new byte[1024];

       while ((read = filecontent.read(bytes)) != -1) {
           out.write(bytes, 0, read);
           photo=path+"/"+fileName;
       }
           }catch(Exception e){
        	   e.printStackTrace();
           }
		/* if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }else
	        {
	        	
	        }*/
		Double sizey = Double.parseDouble(request.getParameter("sizey"));
		String productType = request.getParameter("product_type");
		String productLocation = request.getParameter("product_location");
		PublicityDetailsDao pdd = new PublicityDetailsDao();
		PublicityDetails publicityDetails = pdd.getById(1);
		Double longitude = Double.parseDouble(request.getParameter("lng"));;
		Double latitude = Double.parseDouble(request.getParameter("lat"));;
		Double sizex = Double.parseDouble(request.getParameter("sizex"));;
		String productStatus = "pending";
		Set availableProductses = new HashSet(0);;
		int productLevelHeight = Integer.parseInt(request.getParameter("tier"));
		int productPrice = Integer.parseInt(request.getParameter("product_price"));	
		String productImage = "../public/adzoneImages/"+fileName;
				//"F:/adzoneImages/"+longitude.toString()+publicityDetails.getPublicityName()+publicityDetails.getPublicityId().toString()+".jpg";
		
		//FileOutputStream outStream = new FileOutputStream(productImage);
		//outStream.write(inputStream);
		Set reservedProductses = new HashSet(0);
		Products p = new Products(publicityDetails, productType, productLocation, longitude,  latitude, sizex,sizey, productStatus, productLevelHeight, productImage, productPrice, availableProductses, reservedProductses);
		ProductsDao pd = new ProductsDao();
		pd.save(p);
		response.sendRedirect("Publicity/publicityDashboard.jsp");
	}

}
