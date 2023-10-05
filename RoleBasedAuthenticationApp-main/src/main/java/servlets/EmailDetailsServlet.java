package servlets;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EmailDetailsServlet")
public class EmailDetailsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session = request.getSession(false);
        
        
        if (session == null || !isUserAuthenticated(session) || !isAuthorized(session, "Admin")) {
            request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
            return;
        }

   
        String referrer = request.getHeader("referer");
        
        if (referrer == null || !referrer.contains(request.getContextPath() + "/AdminPageServlet")) {
            
            request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
            return;
        }

        
        String displayName = (String) session.getAttribute("displayName");
        String mailNickname = (String) session.getAttribute("mailNickname");
        String password = (String) session.getAttribute("password");
        String userPrincipalName = (String) session.getAttribute("userPrincipalName");

       
        request.setAttribute("displayName", displayName);
        request.setAttribute("mailNickname", mailNickname);
        request.setAttribute("password", password);
        request.setAttribute("userPrincipalName", userPrincipalName);
        request.getRequestDispatcher("/WEB-INF/JSP/EmailDetails.jsp").include(request, response);
    }

  
    private boolean isUserAuthenticated(HttpSession session) {
        return session.getAttribute("user") != null;
    }

    private boolean isAuthorized(HttpSession session, String role) {
        List<String> roles = (List<String>) session.getAttribute("roles");
        return roles != null && roles.contains(role);
    }
}
