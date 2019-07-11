<%@ page import="com.js.car.Car" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: kkuub
  Date: 08.07.2019
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<h1>Cars: </h1>
<body>
<% List<Car> list = (List<Car>) session.getAttribute("cars");%>

<%for (Car car : list) {%>
<li>
    <a href="http://localhost:8080/CarRental_war/details?id=<%=car.getId()%>"><%=car.getMark()%></a>
    <%= car.getModel() %>
    <a> isRented: </a>
    <%= car.isRented() %>

</li>
<%}%>

</body>
</html>
