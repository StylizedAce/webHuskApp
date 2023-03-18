<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="login.jsp">Log in</a>

<c:forEach var="topic" items="${requestScope.personer}">

<br/>
    ${topic.value.name}
</c:forEach>

</body>
</html>