<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 7/1/2017
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Alpha Alliance PLC.</title>
</head>
<body>
<br>
<div class="row">
    <center>
        <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/error.png">
    </center>
</div>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <h1 align="center">Error</h1>
        <p class="text-center">${errorMessage}</p>
    </div>
</div>
<div class="row">
    <center>
        <a class="btn btn-info" href="/">GO BACK TO THE HOMEPAGE</a>
    </center>
</div>
</body>
</html>
