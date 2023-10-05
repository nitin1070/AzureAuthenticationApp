package servlets;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutilities.LabConstants;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	   
	    HttpSession session = request.getSession(false);
	    
	    if (session != null) {
	    	
	        session.invalidate();
	       
	       
	    }

	
	    Cookie[] cookies = request.getCookies();
	    if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            cookie.setMaxAge(0);
	            response.addCookie(cookie);
	        }
	    }

	 
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	    response.setHeader("Pragma", "no-cache");
	    response.setHeader("Expires", "0");

	  
		/* String tenantId = "79e6d560-f5b8-4313-bee6-fd086298964f"; */
		/* String clientId = "3ae076e5-5b2d-49cd-a789-76f1b330f0fc"; */
	    String requestUrl = request.getRequestURL().toString();
	    String redirectUri = requestUrl.substring(0, requestUrl.lastIndexOf("/")) + "/index.jsp";

	     String logoutUrl = "https://login.microsoftonline.com/common/oauth2/logout?client_id="
	            + LabConstants.CLIENT_ID + "&post_logout_redirect_uri=" + URLEncoder.encode(redirectUri, "UTF-8");

	          response.sendRedirect(logoutUrl);
	    
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  	    response.setHeader("Pragma", "no-cache");
  	    response.setHeader("Expires", "0");
        doGet(request, response);
    }
}
