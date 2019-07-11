<%--
  Created by IntelliJ IDEA.
  User: kkuub
  Date: 10.07.2019
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="POST" action="j_security_check">
    <input type="text" name="j_username" placeholder="Login"/>
    <input type="password" name="j_password" placeholder="Password"/>
    <input type="submit" value="LOGIN" />
</form>
</body>
</html>
