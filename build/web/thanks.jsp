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
            background: linear-gradient(135deg, #74ebd5, #9face6);
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
        }
        .container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
            width: 400px;
            text-align: left;
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 22px;
            color: #333;
        }
        p {
            margin: 8px 0;
            color: #555;
        }
        .info {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            margin: 20px 0;
            box-shadow: inset 0px 2px 5px rgba(0,0,0,0.05);
        }
        .info p {
            margin: 5px 0;
            font-size: 14px;
        }
        .return-button {
            width: 100%;
            padding: 12px;
            border: none;
            background: #6a5acd;
            color: #fff;
            font-weight: bold;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s;
        }
        .return-button:hover {
            background: #5b4acb;
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
            <p><strong>Date of Birth:</strong> ${user.dob}</p>
            <p><strong>Heard About Us:</strong> ${user.source}</p>
            <p><strong>Wants Offers:</strong> 
                <c:choose>
                    <c:when test="${user.offers eq 'yes'}">Yes</c:when>
                    <c:otherwise>No</c:otherwise>
                </c:choose>
            </p>
            <p><strong>Email Announcements:</strong> 
                <c:choose>
                    <c:when test="${user.emailAnnouncements eq 'yes'}">Yes</c:when>
                    <c:otherwise>No</c:otherwise>
                </c:choose>
            </p>
            <p><strong>Preferred Contact Method:</strong> ${user.contactMethod}</p>
        </div>
        
        <p>To enter another email address, click on the Back button in your browser or the Return button shown below.</p>
        
        <form action="emailList" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return" class="return-button">
        </form>
    </div>
</body>
</html>
