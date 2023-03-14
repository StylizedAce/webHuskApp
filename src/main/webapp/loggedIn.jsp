<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yusef
  Date: 13/03/2023
  Time: 11.12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Du er logget ind</title>





</head>
<body>
<c:forEach var="user" items="${applicationScope.users}">

    <label>${user.value.stringArrayList}</label>
    <br>   

</c:forEach>
<%---
    <label>${user}</label>
<label>${applicationScope.users}</label>
---%>


</body>
</html>
