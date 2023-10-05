package servlets;

import java.io.IOException;
import java.time.Duration;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.azure.communication.email.EmailClient;
import com.azure.communication.email.EmailClientBuilder;
import com.azure.communication.email.models.EmailMessage;
import com.azure.communication.email.models.EmailSendResult;
import com.azure.communication.email.models.EmailSendStatus;
import com.azure.core.util.polling.LongRunningOperationStatus;
import com.azure.core.util.polling.PollResponse;
import com.azure.core.util.polling.SyncPoller;

@WebServlet("/EmailSenderServlet")
public class EmailSenderServlet extends HttpServlet {

	private static final Duration POLLER_WAIT_TIME = Duration.ofSeconds(10);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String referrer = request.getHeader("referer");
		if (referrer == null || !referrer.contains(request.getContextPath())) {

			/* response.sendError(HttpServletResponse.SC_FORBIDDEN, "Access Denied"); */

			request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").include(request, response);
			return;
		}
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		HttpSession session = request.getSession(false);

		String referrer = request.getHeader("referer");
		if (referrer == null || !referrer.contains(request.getContextPath())) {

			request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").include(request, response);
			return;
		}

		if (session != null && isUserAuthenticated(session) && isAuthorized(session, "Admin")) {

			String connectionString = "endpoint=https://oil-corp-mailsender.communication.azure.com/;accesskey=8ZcdoYcwiGnX7bONaKF5+q2lVe5llNrJirHL5yKOJUUJ8THriBz8gL2wFtdTerrQFFOclhr+1MkqnDUpeHbFuA==";
			String senderAddress = "DoNotReply@9c3a1dcd-d3d4-44a7-a21f-f43768ec7f0f.azurecomm.net";
			String recipientAddress = "nitin@alteredsecurity.com";

			// Generate random values
			String randomValue = generateRandomValue(6);
			String displayName = "ASTESTN-" + randomValue;
			String mailNickname = "ASTESTN-" + randomValue + "nic";
			String password = generateRandomPassword(10);
			String userPrincipalName = displayName + "@oilcorporation.onmicrosoft.com";

			String emailBody = "Dear recipient,<br><br>" + "Here are the details you requested:<br>" + "<br>"
					+ "\"Display Name\": \"" + displayName + "\",<br>" + "\"Mail Nickname\": \"" + mailNickname
					+ "\",<br>" + "\"Password\": \"" + password + "\",<br>" + "\"User Principal Name\": \""
					+ userPrincipalName + "\"<br>" + "<br><br>" + "Best regards,<br>" + "Your Application";

			EmailClient client = new EmailClientBuilder().connectionString(connectionString).buildClient();

			EmailMessage message = new EmailMessage().setSenderAddress(senderAddress).setToRecipients(recipientAddress)
					.setSubject("Details for " + displayName).setBodyHtml(emailBody);

			try {
				SyncPoller<EmailSendResult, EmailSendResult> poller = client.beginSend(message, null);

				PollResponse<EmailSendResult> pollResponse = null;

				Duration timeElapsed = Duration.ofSeconds(0);

				while (pollResponse == null || pollResponse.getStatus() == LongRunningOperationStatus.NOT_STARTED
						|| pollResponse.getStatus() == LongRunningOperationStatus.IN_PROGRESS) {
					pollResponse = poller.poll();
					Thread.sleep(POLLER_WAIT_TIME.toMillis());
					timeElapsed = timeElapsed.plus(POLLER_WAIT_TIME);

					if (timeElapsed.compareTo(POLLER_WAIT_TIME.multipliedBy(18)) >= 0) {
						throw new RuntimeException("Polling timed out.");
					}
				}

				if (poller.getFinalResult().getStatus() == EmailSendStatus.SUCCEEDED) {


					session.setAttribute("displayName", displayName);
					session.setAttribute("mailNickname", mailNickname);
					session.setAttribute("password", password);
					session.setAttribute("userPrincipalName", userPrincipalName);

					 response.sendRedirect(request.getContextPath() + "/EmailDetailsServlet"); 

				} else {
					throw new RuntimeException(poller.getFinalResult().getError().getMessage());
				}
			} catch (Exception exception) {
				throw new RuntimeException(exception.getMessage());
			}
		} else {

			request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").include(request, response);
		}
	}

	private boolean isUserAuthenticated(HttpSession session) {
		return session.getAttribute("user") != null;
	}

	private boolean isAuthorized(HttpSession session, String role) {
		List<String> roles = (List<String>) session.getAttribute("roles");
		return roles != null && roles.contains(role);
	}

	private String generateRandomValue(int length) {
		String allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		Random random = new Random();
		StringBuilder sb = new StringBuilder(length);

		for (int i = 0; i < length; i++) {
			int randomIndex = random.nextInt(allowedChars.length());
			sb.append(allowedChars.charAt(randomIndex));
		}

		return sb.toString();
	}

	private String generateRandomPassword(int length) {
		String allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()";
		Random random = new Random();
		StringBuilder sb = new StringBuilder(length);

		for (int i = 0; i < length; i++) {
			int randomIndex = random.nextInt(allowedChars.length());
			sb.append(allowedChars.charAt(randomIndex));
		}

		return sb.toString();
	}
}
