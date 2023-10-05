package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminPageServlet")
public class AdminPageServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
    	
    	HttpSession session = request.getSession(false);

 	    if (session != null && isUserAuthenticated(session) && isAuthorized(session, "Admin")) {
 	    	
 	    	String user=  (String) session.getAttribute("user");	
 			
 	    	session.setAttribute("user",user);
 	     
	      // response.sendRedirect("/WEB/INF/index.html");
 	        
    request.getRequestDispatcher("/WEB-INF/AdminPages/AdminHomePage.jsp").forward(request, response);
 	        
 	       
 	    } else {
 	          if(session!=null) {
 	            session.removeAttribute("user"); 
 	            session.removeAttribute("roles");
 	    		session.invalidate();
 	 	    	
 	          }
 	    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 			response.setHeader("Pragma", "no-cache");
 			response.setHeader("Expires", "0");
 			   
 			  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
 	      }
 	    }
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
     doGet(request, response);
    }

    
    
    
    
    
    
    private boolean isUserAuthenticated(HttpSession session) {
       
        return session.getAttribute("roles") != null;
      
    }

    private boolean isAuthorized(HttpSession session, String role) {
      
        List<String> roles = (List<String>) session.getAttribute("roles");
        return roles != null && roles.contains(role);
    }
}
