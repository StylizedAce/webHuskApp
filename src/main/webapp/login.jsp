<%--
  Created by IntelliJ IDEA.
  User: yusef
  Date: 13/03/2023
  Time: 11.09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>

<br>

<br>

<label>${sessionScope.msg}</label>

<br>
<form method="post" action="LoginServlet" >
    <label for="name">angiv navn:</label><br>
    <input type="text" id="name" name="name" placeholder="Ace"><br>
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





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
