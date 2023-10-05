

<%@ page language="java" session="false"

contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>

<link href="${pageContext.request.contextPath}/JSP_JS_CSS/css1/indexStyle.css" rel="stylesheet" />

<title>Login Page</title>
</head>
<body>

	<%
	 response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	  response.setHeader("Pragma", "no-cache");
	  response.setHeader("Expires", "0");
 
%>


	<div class="login-box">
		<h2>
			<img src="${pageContext.request.contextPath}/JSP_JS_CSS/images/logo.png" alt="Azure Logo" class="al-logo">
		</h2>

		<form action="${pageContext.request.contextPath}/LoginServlet?fromIndex=true" method="post">


         <input type="hidden" name="csrfToken" value="${pageContext.request.session.id}" />
      
      
      
			<button type="submit" class="azure-button" onclick="login()">
				<span></span> <span></span> <span></span> <span></span> <img
					src="${pageContext.request.contextPath}/JSP_JS_CSS/images1/microsoft-azure.svg" alt="Azure Logo"
					class="azure-logo"> Sign in with Azure
			</button>
   

		</form>





	</div>




</body>
</html>
