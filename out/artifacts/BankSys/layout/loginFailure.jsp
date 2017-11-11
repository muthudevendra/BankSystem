<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 06-Jul-17
  Time: 9:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AlphaAlliance.LoginFailed</title>
</head>
<body>
<br/>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <h1 align="center">Authentication Failed</h1>
    </div>
</div>
<div class="row">
    <center>
    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/sadface.png">
    </center>
</div>
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <h1 align="center">You Have <%= request.getParameter("attempts") %> Attempts Left</h1>
    </div>
</div>
<div class="row">
    <center>
        <a class="btn btn-info" href="/">GO BACK</a>
    </center>
</div>
</body>
</html>
