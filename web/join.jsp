<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Email List - Join</title>
</head>
<body>
    <h1>Join Our Email List</h1>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add" />

        <label for="firstName">First Name:</label><br/>
        <input type="text" name="firstName" id="firstName" required><br/><br/>

        <label for="lastName">Last Name:</label><br/>
        <input type="text" name="lastName" id="lastName" required><br/><br/>

        <label for="email">Email:</label><br/>
        <input type="email" name="email" id="email" required><br/><br/>

        <input type="submit" value="Join Now">
    </form>
</body>
</html>
