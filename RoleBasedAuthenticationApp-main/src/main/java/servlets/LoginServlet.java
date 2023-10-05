package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbutilities.LabConstants;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private static final String AUTHORITY = "https://login.microsoftonline.com/" + LabConstants.TENANT_ID
            + "/oauth2/authorize";
    private static final String SCOPE = "https://login.microsoftonline.com/.default";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
    	
    	
    	doPost(request,response);
    	
    	
    	
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
  
    	 String fromIndex = request.getParameter("fromIndex");

       
         if (fromIndex == null || !fromIndex.equals("true")) {
        	 
        	  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
             
             return;
         }
         String csrfToken = request.getParameter("csrfToken"); 

         HttpSession session = request.getSession(false);

         if (session == null || csrfToken==null ||  !csrfToken.equals(session.getId())) {
             request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").include(request, response);
             return;
         }
		  session.setMaxInactiveInterval(30 * 60);
		 

        String serverPath = request.getRequestURL().toString();
        String redirectUri = serverPath.substring(0, serverPath.lastIndexOf("/")) + "/Servlet2";

        String authUrl = AUTHORITY + "?client_id=" + LabConstants.CLIENT_ID
                + "&response_type=code"
                + "&redirect_uri=" + redirectUri
                + "&scope=" + SCOPE;

        session.setAttribute("session", authUrl);

        response.sendRedirect(authUrl);
    }
}
