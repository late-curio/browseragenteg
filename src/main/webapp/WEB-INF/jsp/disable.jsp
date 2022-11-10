<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Java Agent - Browser Injection (Disabled)</title>
</head>
<body>
<h3>Java Agent - Browser Injection (Disabled)</h3>
<p>
<%
    String name = request.getParameter("name");
    if(name == null || name.isEmpty()) {
        name = "Nobody";
    }
    out.println("Wassup " + name);
%>
</p>
</body>
</html>