package servlets;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import dbutilities.LabConstants;

//Import statements

@WebServlet("/Servlet2")
public class Servlet2 extends HttpServlet {


	
	private static final String AUTHORITY = "https://login.microsoftonline.com/"+LabConstants.TENANT_ID+"/oauth2/authorize";
	private static final String TOKEN_ENDPOINT = "https://login.microsoftonline.com/"+LabConstants.TENANT_ID+"/oauth2/token";
	
	private static final String GRAPH_API_ENDPOINT = "https://graph.microsoft.com/v1.0/me";
	private static final String SCOPE = "https://login.microsoftonline.com/.default";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");

		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String serverPath = request.getRequestURL().toString();
		String REDIRECT_URI = serverPath.substring(0, serverPath.lastIndexOf("/")) + "/Servlet2";

		HttpSession session = request.getSession(false);
		
		if (session != null) {

			String code = request.getParameter("code");

			if (code != null) {
				String tokenUrl = TOKEN_ENDPOINT;
				String postParams = "client_id=" + LabConstants.CLIENT_ID + "&client_secret="
						+ URLEncoder.encode(LabConstants.CLIENT_SECRET, "UTF-8") + "&redirect_uri="
						+ URLEncoder.encode(REDIRECT_URI, "UTF-8") + "&code=" + code + "&grant_type=authorization_code";

				URL url = new URL(tokenUrl);

				HttpURLConnection conn = (HttpURLConnection) url.openConnection();

				conn.setRequestMethod("POST");

				conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
				conn.setDoOutput(true);

				conn.getOutputStream().write(postParams.getBytes("UTF-8"));

				if (conn.getResponseCode() == HttpURLConnection.HTTP_OK) {

					InputStream inputStream = conn.getInputStream();

					String responseJson = readResponse(inputStream);

					String accessToken = extractAccessToken(responseJson);

					if (accessToken != null) {
						String idToken = extractIdToken(responseJson);

						if (idToken != null) {

							String upn = extractClaimFromIdToken(idToken, "upn");

							List<String> roles = extractClaimListFromIdToken(idToken, "roles");

							if (roles != null && !roles.isEmpty() && upn != null && !upn.isEmpty()) {

								session.setAttribute("roles", roles);

								System.out.println("App role is: " + roles);
								System.out.println("upn is: " + upn);

								String destinationPage = "";

								for (String role : roles) {

									if (role.equals("Admin") && upn.equals(upn)) {

										session.setAttribute("user", upn);
										destinationPage = "/AdminPageServlet";
										break;
									} else if (role.equals("Member") && upn.equals(upn)) {
										session.setAttribute("user", upn);
										destinationPage = "/TesterPageServlet";
										break;
									}

									else if (role.equals("User") && upn.equals(upn)) {
										session.setAttribute("user", upn);
										destinationPage = "/UserPageServlet";
										break;
									} else {
										System.out.println("App role is not assigned !!");

										  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);

									}
								}

								if (!destinationPage.isEmpty()) {

									response.sendRedirect(request.getContextPath() + destinationPage);
								}

								else {
									  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
									System.out.println("User doesn't have a valid role for access.");
								}

								return;
							} else {
								  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
								System.out.println("Problem in Azure AD Token to get app roles");
								System.out.println("Error while getting upn from id_token");
							}

						} else {
							  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
							System.out.println("Problem in Azure AD Token to extract id_token");
						}
					} else {
						  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
						System.out.println("Problem in Azure AD Token to obtain access token");
					}
				} else {
					  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
					System.out.println("Please login again");
				}
			} else {
				  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
				System.out.println("No authorization code available");
			}

		}

		else {

			  request.getRequestDispatcher("/WEB-INF/JSP/Error.jsp").forward(request, response);
			

		}
	}

	private String readResponse(InputStream inputStream) throws IOException {
		BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
		StringBuilder responseBuilder = new StringBuilder();
		String line;
		while ((line = reader.readLine()) != null) {
			responseBuilder.append(line);
		}
		reader.close();
		return responseBuilder.toString();
	}

	private String extractAccessToken(String responseJson) {
		try {
			JSONObject jsonObject = new JSONObject(responseJson);
			return jsonObject.getString("access_token");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	private String extractIdToken(String responseJson) {
		try {
			JSONObject jsonObject = new JSONObject(responseJson);
			return jsonObject.getString("id_token");

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	private String extractClaimFromIdToken(String idToken, String claimName) {
		try {
			String[] tokenParts = idToken.split("\\.");
			String base64EncodedClaims = tokenParts[1];

			byte[] decodedBytes = Base64.getUrlDecoder().decode(base64EncodedClaims);
			String decodedClaims = new String(decodedBytes);

			JSONObject jsonObject = new JSONObject(decodedClaims);
			return jsonObject.getString(claimName);
		} catch (JSONException e) {
			e.printStackTrace();
			return null;
		}
	}

	private List<String> extractClaimListFromIdToken(String idToken, String claimName) {
		try {
			String[] tokenParts = idToken.split("\\.");
			String base64EncodedClaims = tokenParts[1];

			byte[] decodedBytes = Base64.getUrlDecoder().decode(base64EncodedClaims);
			String decodedClaims = new String(decodedBytes);

			JSONObject jsonObject = new JSONObject(decodedClaims);
			JSONArray jsonArray = jsonObject.getJSONArray(claimName);

			List<String> claims = new ArrayList<>();

			for (int i = 0; i < jsonArray.length(); i++) {
				claims.add(jsonArray.getString(i));
			}

			return claims;
		} catch (JSONException e) {
			e.printStackTrace();
			return null;
		}
	}
}
