<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Murach's Java Servlets and JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        .container {
            max-width: 500px;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        h1 {
            color: #2c5aa0;
            margin-bottom: 20px;
        }
        .info {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 3px;
            margin: 20px 0;
        }
        .info p {
            margin: 5px 0;
        }
        .return-button {
            background-color: #2c5aa0;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 15px;
        }
        .return-button:hover {
            background-color: #1e3f73;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Thanks for joining our email list</h1>
        
        <p>Here is the information that you entered:</p>
        
        <div class="info">
            <p><strong>Email:</strong> ${user.email}</p>
            <p><strong>First Name:</strong> ${user.firstName}</p>
            <p><strong>Last Name:</strong> ${user.lastName}</p>
        </div>
        
        <p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>
        
        <form action="emailList" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return" class="return-button">
        </form>
    </div>
</body>
</html>