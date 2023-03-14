<%--
  Created by IntelliJ IDEA.
  User: yusef
  Date: 13/03/2023
  Time: 11.09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<br>

${requestScope.besked}
<br>

<label>${sessionScope.msg}</label>

<br>
<form action="LoginServlet" method="get">
    <label for="navn">angiv navn:</label><br>
    <input type="text" id="navn" name="navn" placeholder="Ace"><br>
    <label for="password">skriv kode:</label><br>
    <input type="text" id="password" name="password" placeholder="123"><br><br>
    <input type="submit" value="Submit">
</form>
<br/>
<h1>Create new user</h1>
<br/>
<br/>
${requestScope.newUserbesked}
<form action="LoginServlet" method="post">

    <label for="newUserName">angiv navn:</label><br>
    <input type="text" id="newUserName" name="newUserName" placeholder="Ace"><br>

    <label for="newUserPassword">skriv kode:</label><br>
    <input type="text" id="newUserPassword" name="newUserPassword" placeholder="123"><br>

    <label for="confirmPassword">confirm password:</label><br>

    <input type="text" id="confirmPassword" name="confirmPassword" placeholder="confirm Password"><br><br>
    <input type="submit" value="Submit">






</body>
</html>
