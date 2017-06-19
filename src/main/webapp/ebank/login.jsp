<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/19/2017
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Alpha Alliance PLC. LogIn</title>

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
<!-- Head END -->

<!-- Body BEGIN -->
<body class="corporate">
<div class="pre-header">
    <div class="container">
        <div class="row">
            <!-- BEGIN TOP BAR LEFT PART -->
            <div class="col-md-6 col-sm-6 additional-shop-info">
                <ul class="list-unstyled list-inline">
                    <li><i class="fa fa-phone"></i><span>055678678</span></li>
                    <li><i class="fa fa-envelope-o"></i><span>info@alphallaince.com</span></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="header">
    <div class="container">
        <a class="site-logo" href="index.html"><img src="assets/corporate/img/logos/logo.png" alt="Metronic FrontEnd"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

    </div>
</div>

<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li class="active">Login</li>
        </ul>
        <div class="col-md-9 col-sm-9 col-md-offset-3">
            <h1>Login</h1>
            <div class="content-form-page">
                <div class="row">
                    <div class="col-md-7 col-sm-7">
                        <form action="/login" method="post" class="form-horizontal form-without-legend" role="form">
                            <div class="form-group">
                                <label for="email" class="col-lg-4 control-label">Username <span class="require">*</span></label>
                                <div class="col-lg-8">
                                    <input type="text" name="username" class="form-control" id="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="password" class="col-lg-4 control-label">Password <span class="require">*</span></label>
                                <div class="col-lg-8">
                                    <input type="password" name="password" class="form-control" id="password">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-md-offset-4 padding-left-0">
                                    <a href="page-forgotton-password.html">Forget Password?</a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                    <button type="submit" class="btn btn-primary">Login</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="footer navbar-fixed-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4 padding-top-10">
                2017 © AlphaAlliance. ALL Rights Reserved. <a href="javascript:;">Privacy Policy</a> | <a href="javascript:;">Terms of Service</a>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/layout/assets/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/layout/assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/layout/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/layout/assets/corporate/scripts/back-to-top.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script src="${pageContext.request.contextPath}/layout/assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
<script src="${pageContext.request.contextPath}/layout/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/layout/assets/corporate/scripts/layout.js" type="text/javascript"></script>
</body>
</html>