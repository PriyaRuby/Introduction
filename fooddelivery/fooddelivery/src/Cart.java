import java.io.*;
import java.util.Arrays;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import oracle.sql.ARRAY;

@WebServlet("/Cart")
public class Cart extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			PrintWriter writer =  res.getWriter();
		     res.setContentType("text/html");
		     HttpSession session = req.getSession(true);
		 
		     
		     
			
		     
		     
		    writer.println("<!DOCTYPE html>\r\n" + 
		    		"<html lang=\"en\">\r\n" + 
		    		"  <head>\r\n" + 
		    		"    <title>EatAway-MyCart</title>\r\n" + 
		    		"    <meta charset=\"utf-8\">\r\n" + 
		    		"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n" + 
		    		"    \r\n" + 
		    		"    <link href=\"https://fonts.googleapis.com/css?family=Muli:300,400,600,700\" rel=\"stylesheet\">\r\n" + 
		    		"    <link href=\"https://fonts.googleapis.com/css?family=Indie+Flower\" rel=\"stylesheet\">\r\n" + 
		    		"\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/open-iconic-bootstrap.min.css\">\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/animate.css\">\r\n" + 
		    		"    \r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\r\n" + 
		    		"\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/aos.css\">\r\n" + 
		    		"\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/ionicons.min.css\">\r\n" + 
		    		"\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.css\">\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/jquery.timepicker.css\">\r\n" + 
		    		"\r\n" + 
		    		"    \r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/flaticon.css\">\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/icomoon.css\">\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"css/style.css\">\r\n" + 
		    		"\r\n" + 
		    		"    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n" + 
		    		"  </head>\r\n" + 
		    		"  <body>\r\n" + 
		    		"    \r\n" + 
		    		"    <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light\" id=\"ftco-navbar\">\r\n" + 
		    		"      <div class=\"container\">\r\n" + 
		    		"        <a class=\"navbar-brand\" href=\"index.html\"><img src=\"images/479837.png\" style=\"width:150px; height:60px\" /></a>\r\n" + 
		    		"        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n" + 
		    		"          <span class=\"oi oi-menu\"></span> Menu\r\n" + 
		    		"        </button>\r\n" + 
		    		"\r\n" + 
		    		"        <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\r\n" + 
		    		"          <ul class=\"navbar-nav ml-auto\">\r\n" + 
		    		"             <li class=\"nav-item active\"><a href=\"index.html\" class=\"nav-link\">Home</a></li>\r\n" + 
		    		"            <li class=\"nav-item\"><a href=\"specialties.html\" class=\"nav-link\">Specialties</a></li>            \r\n" + 
		    		"            <li class=\"nav-item\"><a href=\"contact.html\" class=\"nav-link\">Contact</a></li>\r\n" + 
		    		
		    		"          </ul>\r\n" + 
		    		"        </div>\r\n" + 
		    		"      </div>\r\n" + 
		    		"    </nav>\r\n" + 
		    		"    <!-- END nav -->\r\n" + 
		    		"    \r\n" + 
		    		"    <section class=\"home-slider owl-carousel\">\r\n" + 
		    		"      <div class=\"slider-item\" style=\"background-image: url('images/bg_1.jpg');\" data-stellar-background-ratio=\"0.5\">\r\n" + 
		    		"        <div class=\"overlay\"></div>\r\n" + 
		    		"        <div class=\"container\">\r\n" + 
		    		"          <div class=\"row slider-text align-items-center justify-content-center\">\r\n" + 
		    		"            <div class=\"col-md-10 col-sm-12 ftco-animate text-center\">\r\n" + 
		    		"              <p class=\"breadcrumbs\"><span class=\"mr-2\"><a href=\"index.html\">Home</a></span> <span>Cart</span></p>\r\n" + 
		    		"              <h1 class=\"mb-3\">Cart</h1>\r\n" + 
		    		"            </div>\r\n" + 
		    		"          </div>\r\n" + 
		    		"        </div>\r\n" + 
		    		"      </div>\r\n" + 
		    		"    </section>");
		    
		    String trans[] = req.getParameterValues("trans") ;
		    String[] assignedResources = req.getParameterValues("trans");
		     int total=0,t;
		     
		     if (assignedResources != null) {
		         for(String item: assignedResources){
		             String keyValue[]= item.split(":");
		             writer.println("<ul><li><h4 >"+keyValue[0]+" : "+keyValue[1]+
		            		 "</h4></li></ul>");
		             
		             
		             
		             
		             t=Integer.parseInt(keyValue[1]);
		            
			             writer.println("<br>");
		             total=t+total;
		             
		            
		         }
		        
		     }
	
		     writer.println("<h4 Style=\"color:red;\">Total:" +total+"</h4>");
		     session.setAttribute("total", total);
/*		     res.sendRedirect("cart.jsp");
*/		     writer.println("<span style=\"float:right\"><a href=\"cart.jsp\" class=\"btn btn-primary btn-outline-primary p-3\">Go to Payment</a></span>");
		    
		    writer.print("<br><br><footer class=\"ftco-footer ftco-bg-dark ftco-section\">\r\n" + 
		    		"      <div class=\"container\">\r\n" + 
		    		"          <div class=\"row mb-5\">\r\n" + 
		    		"              <div class=\"col-md\">\r\n" + 
		    		"                  <div class=\"ftco-footer-widget mb-4\">\r\n" + 
		    		"                      <h2 class=\"ftco-heading-2\">EAT AWAY</h2>\r\n" + 
		    		"                      <p>We give it our best and are open to the outcomes. We look to raise the bar of performance consistently and reward merit disproportionately.</p>\r\n" + 
		    		"                      <ul class=\"ftco-footer-social list-unstyled float-md-left float-lft\">\r\n" + 
		    		"                          <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-twitter\"></span></a></li>\r\n" + 
		    		"                          <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-facebook\"></span></a></li>\r\n" + 
		    		"                          <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-instagram\"></span></a></li>\r\n" + 
		    		"                      </ul>\r\n" + 
		    		"                  </div>\r\n" + 
		    		"              </div>\r\n" + 
		    		"              \r\n" + 
		    		"              <div class=\"col-md\">\r\n" + 
		    		"                  <div class=\"ftco-footer-widget mb-4\">\r\n" + 
		    		"                      <h2 class=\"ftco-heading-2\">Contact Information</h2>\r\n" + 
		    		"                      <ul class=\"list-unstyled\">\r\n" + 
		    		"                          <li><a href=\"#\" class=\"py-2 d-block\">\r\n" + 
		    		"   \r\n" + 
		    		"    Mphasis Ltd. EON free Zone. Cluster C, Kharadi Knowledge Park SEZ Plot No.1, Survey No.77, MIDC Rd, Kharadi, Pune, Maharashtra 411014\r\n" + 
		    		"</a></li>\r\n" + 
		    		"                          <li><a href=\"#\" class=\"py-2 d-block\">+ 1235 2355 98</a></li>\r\n" + 
		    		"                          <li><a href=\"#\" class=\"py-2 d-block\">eataway@tummy.com</a></li>\r\n" + 
		    		"                          <li><a href=\"#\" class=\"py-2 d-block\">whistleblower@mphasis.com </a></li>\r\n" + 
		    		"                      </ul>\r\n" + 
		    		"                  </div>\r\n" + 
		    		"              </div>\r\n" + 
		    		"              <div class=\"col-md\">\r\n" + 
		    		"                  <div class=\"ftco-footer-widget mb-4\">\r\n" + 
		    		"                      <h2 class=\"ftco-heading-2\">Newsletter</h2>\r\n" + 
		    		"                      <p>Far far away, behind the word mountains, far from the countries.</p>\r\n" + 
		    		"                      <form action=\"#\" class=\"subscribe-form\">\r\n" + 
		    		"                          <div class=\"form-group\">\r\n" + 
		    		"                              <span class=\"icon icon-paper-plane\"></span>\r\n" + 
		    		"                              <input type=\"text\" class=\"form-control\" placeholder=\"Subscribe\">\r\n" + 
		    		"                          </div>\r\n" + 
		    		"                      </form>\r\n" + 
		    		"                  </div>\r\n" + 
		    		"              </div>\r\n" + 
		    		"          </div>\r\n" + 
		    		"        <div class=\"row\">\r\n" + 
		    		"          <div class=\"col-md-12 text-center\">\r\n" + 
		    		"\r\n" + 
		    		"            \r\n" + 
		    		"          </div>\r\n" + 
		    		"        </div>\r\n" + 
		    		"      </div>\r\n" + 
		    		"    </footer>\r\n" + 
		    		"      \r\n" + 
		    		"\r\n" + 
		    		"  \r\n" + 
		    		"\r\n" + 
		    		"  <!-- loader -->\r\n" + 
		    		"  <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\r\n" + 
		    		"\r\n" + 
		    		"\r\n" + 
		    		"  <script src=\"js/jquery.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/jquery-migrate-3.0.1.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/popper.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/bootstrap.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/jquery.easing.1.3.js\"></script>\r\n" + 
		    		"  <script src=\"js/jquery.waypoints.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/jquery.stellar.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/owl.carousel.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/jquery.magnific-popup.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/aos.js\"></script>\r\n" + 
		    		"  <script src=\"js/jquery.animateNumber.min.js\"></script>\r\n" + 
		    		"  <script src=\"js/bootstrap-datepicker.js\"></script>\r\n" + 
		    		"  <script src=\"js/jquery.timepicker.min.js\"></script>\r\n" + 
		    		"  <script src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\r\n" + 
		    		"  <script src=\"js/google-map.js\"></script>\r\n" + 
		    		"  <script src=\"js/main.js\"></script>\r\n" + 
		    		"    \r\n" + 
		    		"  </body>\r\n" + 
		    		"</html>");
		     
		     
		     
		     writer.close();
					
		    
		}
		catch(Exception ae) {
		
	}


	}

}
