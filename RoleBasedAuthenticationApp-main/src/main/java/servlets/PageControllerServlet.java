package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



//import statements

@WebServlet("/PageControllerServlet")
public class PageControllerServlet extends HttpServlet {

 protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

	 String referrer = request.getHeader("referer");
     if (referrer == null || !referrer.contains(request.getContextPath())) {
      
         response.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied");
         return;
     }
     doPost(request,response);
 }
	 
	 
	 
 protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
   
	 String referrer = request.getHeader("referer");
     if (referrer == null || !referrer.contains(request.getContextPath())) {
      
         response.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied");
         return;
     }
    	 
         HttpSession session = request.getSession(false);
         
         if (session != null && session.getAttribute("user") != null) {
             String user = (String) session.getAttribute("user");

            
             if (isUserAuthorized(user)) {
                 
          	  request.getRequestDispatcher("/WEB-INF/AdminPages/AdminHomePage.jsp").forward(request, response);
            	
                 
             } else {
                 
                 response.sendRedirect(request.getContextPath() + "/logout");
                 System.out.println("User doesn't have a valid role for access.");
             }
         } 
        	 else {
                 // Direct access to the servlet is not allowed
                 response.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied");
             }
         }



 private boolean isUserAuthorized(String user) {
    
     return user.equals("user");
 }
 
 
}
