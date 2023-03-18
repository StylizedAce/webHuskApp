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
    <table class="table">
        <thead>
        <tr>
            <th scope="col">name</th>
            <th scope="col">First</th>
            <th scope="col">Second</th>
            <th scope="col">Third</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${applicationScope.users}">
        <tr>
               <td> ${user.value.name} </td>
            <td> ${user.value.stringArrayList.get(0)} </td>
            <td> ${user.value.stringArrayList.get(1)} </td>
            <td> ${user.value.stringArrayList.get(2)} </td>
                <br>

            </c:forEach>
        </tr>
        </tbody>
    </table>




<a href = "../index.jsp">Tilbage til forsiden</a>
<%---
    <label>${user}</label>
<label>${applicationScope.users}</label>
---%>


</body>
</html>
