<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>


<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 0;
        }

        .detail-label {
            font-weight: bold;
            color: #333;
        }

        .detail-value {
            margin-bottom: 10px;
        }

        .detail-value:last-child {
            margin-bottom: 0;
        }

        .copy-button {
            display: inline-block;
            padding: 6px 12px;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .copy-button:hover {
            background-color: #0056b3;
        }

        .copy-button:focus {
            outline: none;
        }
        
        .home-button {
            text-align: center;
            margin-top: 20px;
        }
        
        .home-button a {
            display: inline-block;
            padding: 6px 12px;
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            text-decoration: none;
            background-color: #ccc;
            color: #333;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        .home-button a:hover {
            background-color: #ddd;
        }
    </style>
    <script>
        function copyToClipboard(text) {
            const textField = document.createElement('textarea');
            textField.innerText = text;
            document.body.appendChild(textField);
            textField.select();
            document.execCommand('copy');
            textField.remove();
            alert('Copied to clipboard!');
        }
    </script>
</head>
<body>
   <div class="container">
    <h1>User Details</h1>
    <div class="detail-value">
        <span class="detail-label">"Display Name":</span>
        <span class="detail-value-text">"${displayName}"</span>
    </div>
    <div class="detail-value">
        <span class="detail-label">"Mail Nickname":</span>
        <span class="detail-value-text">"${mailNickname}"</span>
    </div>
    <div class="detail-value">
        <span class="detail-label">"Password":</span>
        <span class="detail-value-text">"${password}"</span>
    </div>
    <div class="detail-value">
        <span class="detail-label">"User Principal Name":</span>
        <span class="detail-value-text">"${userPrincipalName}"</span>
    </div>
    <button class="copy-button" onclick="copyToClipboard(
        '\"Display Name\": \"${displayName}\"\\n' +
        '\"Mail Nickname\": \"${mailNickname}\"\\n' +
        '\"Password\": \"${password}\"\\n' +
        '\"User Principal Name\": \"${userPrincipalName}\"'
    )">Copy Details</button>
    
    <div class="home-button">
        <a href="${pageContext.request.contextPath}/AdminPageServlet">Home</a>
    </div>
</div>

</body>
</html>
