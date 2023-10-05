<%@ page language="java" session="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>

<link href="/css1/indexStyle.css" rel="stylesheet" />

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
			<img src="/images/logo.png" alt="Azure Logo" class="al-logo">
		</h2>

		<form>
			<div class="user-box">
				<input type="text" name="userName" required=""> <label>Username</label>
			</div>
			<div class="user-box">
				<input type="password" name="Password" required=""> <label>Password</label>
			</div>
			<button type="submit">Submit</button>
			<button type="submit" class="azure-button" onclick="login()">
				<span></span> <span></span> <span></span> <span></span> <img
					src="/images1/microsoft-azure.svg" alt="Azure Logo"
					class="azure-logo"> Sign in with Azure
			</button>
   

		</form>





	</div>

	<script>
      function login() {
     window.location.href = "/LoginServlet";
      
        
    }  

    </script>



</body>
</html>
