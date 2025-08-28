<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Email List - Join</title>
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

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #555;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: 0.3s;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        select:focus {
            border-color: #6a5acd;
            outline: none;
            box-shadow: 0 0 6px rgba(106,90,205,0.5);
        }

        .radio-group,
        .checkbox-group {
            margin-bottom: 18px;
        }

        input[type="submit"] {
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

        input[type="submit"]:hover {
            background: #5b4acb;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Join Our Email List</h1>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add" />

        <!-- Thông tin cá nhân -->
        <label for="firstName">First Name:</label>
        <input type="text" name="firstName" id="firstName" required>

        <label for="lastName">Last Name:</label>
        <input type="text" name="lastName" id="lastName" required>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>

        <label for="dob">Date of Birth:</label>
        <input type="date" name="dob" id="dob">

        <!-- How did you hear about us -->
        <div class="radio-group">
            <label>How did you hear about us?</label>
            <input type="radio" name="source" value="Search engine" checked> Search engine<br>
            <input type="radio" name="source" value="Word of mouth"> Word of mouth<br>
            <input type="radio" name="source" value="Social Media"> Social Media<br>
            <input type="radio" name="source" value="Other"> Other
        </div>

        <!-- Nhận thông tin CDs & offers -->
        <div class="checkbox-group">
            <label>Would you like to receive announcements about new CDs and special offers?</label>
            <input type="checkbox" name="offers" value="yes"> YES, I'd like that.<br>
            <input type="checkbox" name="emailAnnouncements" value="yes"> YES, please send me email announcements.
        </div>

        <!-- Contact method -->
        <label for="contactMethod">Please contact me by:</label>
        <select name="contactMethod" id="contactMethod">
            <option value="emailOrMail">Email or postal mail</option>
            <option value="emailOnly">Email only</option>
            <option value="mailOnly">Postal mail only</option>
        </select>

        <input type="submit" value="Join Now">
    </form>
</div>
</body>
</html>
