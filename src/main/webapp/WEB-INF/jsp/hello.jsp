<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Java Agent - Browser Injection</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    out.println("welcome " + name); %>
</body>
</html>