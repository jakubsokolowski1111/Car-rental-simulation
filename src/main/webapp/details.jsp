<%@ page import="java.util.List" %>
<%@ page import="com.js.car.Car" %><%--
  Created by IntelliJ IDEA.
  User: kkuub
  Date: 09.07.2019
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
</head>
<body>
<%
    List<Car> list = (List<Car>) session.getAttribute("cars");

    String model = (String) session.getAttribute("model");
    switch (model) {
        case "A4":
%>
<picture>
    <img src="https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/640x400/quality/80/https://s.aolcdn.com/commerce/autodata/images/USC90AUC016A021001.jpg"
         style="width: 400px">
</picture>
<%
        break;
    case "A7":
%>
<picture>
    <img src="https://listers.co.uk/img/cap/v/c/new/large/22206/new-audi-a7-sportback-5dr.jpg" style="width: 400px">
</picture>
<%
        break;
    case "126p":
%>
<picture>
    <img src="https://jkstyl.pl/13006-thickbox_default/dywaniki-gumowe-fiat-126p.jpg" style="width: 400px">
</picture>
<%
        break;
    case "CLA":
%>
<picture>
    <img src="https://www.mercedes-benz.pl/passengercars/mercedes-benz-cars/models/cla/coupe/explore/_jcr_content/image.MQ6.4.2x.20190529130540.png"
         style="width: 400px">
</picture>
<%
        break;
    case "307":
%>
<picture>
    <img src="https://ocdn.eu/pulscms-transforms/1/U-Vk9kpTURBXy84NmI5NjM0MWI5NmYwZGEwZjkwMTQzOGYwYWI4YTcyZS5qcGeSlQMADM0CWM0BUZMFzQMUzQG8gaEwAQ"
         style="width: 400px">
</picture>
<%
        break;

}%>


<%
    for (Car car : list) {
        if (car.getId().equals(session.getAttribute("id"))) {
%>
<li><%=car%>
</li>
<% }
}
%>
<br>
<form method="GET" action="rent?id=<%=session.getAttribute("id")%>">
    <input type="submit" value="Rent car.">
</form>
<br>
<form method="GET" action="return?id=<%=session.getAttribute("id")%>">
    <input type="submit" value="Return car.">
</form>
<br>
<form method="GET" action="list">
    <input type="submit" value="Show list of cars."/>
</form>


</body>
</html>
