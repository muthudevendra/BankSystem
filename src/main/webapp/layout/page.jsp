<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 01-Jun-17
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Alpha Alliance PLC.</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta content="Metronic Shop UI description" name="description">
    <meta content="Metronic Shop UI keywords" name="keywords">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/layout/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/pages/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/pages/css/components.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/pages/css/slider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/corporate/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/corporate/css/style-responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/layout/assets/corporate/css/themes/green.css" rel="stylesheet" id="style-color">
    <link href="${pageContext.request.contextPath}/layout/assets/corporate/css/custom.css" rel="stylesheet">
</head>
<body>
    <div id="header">
        <t:insertAttribute name="header"/>
    </div>
    <div id="content">
        <t:insertAttribute name="body"/>
    </div>
</body>
</html>