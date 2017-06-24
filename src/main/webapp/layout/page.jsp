<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 01-Jun-17
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="include.jsp"%>
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

    <script src="${pageContext.request.contextPath}/layout/assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/layout/assets/plugins/jquery-ui.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/layout/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/layout/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/layout/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/layout/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="${pageContext.request.contextPath}/layout/assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/themes/base/jquery-ui.css" type="text/css" media="all" />

    <script src="${pageContext.request.contextPath}/layout/assets/corporate/scripts/layout.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/layout/assets/pages/scripts/bs-carousel.js" type="text/javascript"></script>

    <script src="${pageContext.request.contextPath}/layout/assets/plugins/operations.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layout/assets/plugins/jquery.dataTables.min.js"></script>

</head>
<body>
    <div id="header">
        <t:insertAttribute name="header"/>
    </div>
    <div id="navigation">
        <t:insertAttribute name="navigation"/>
    </div>
    <div id="content">
        <t:insertAttribute name="body"/>
    </div>
    <div id="footer">
        <t:insertAttribute name="footer"/>
    </div>
</body>
</html>
