<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 08-Jun-17
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="header">
    <div class="container">
        <a class="site-logo" href="index.html"><img src="${pageContext.request.contextPath}/layout/assets/corporate/img/logos/logo.png" alt="Metronic FrontEnd"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit">
            <ul>
                <li>
                    <a href="#"><i class="fa fa-home"></i></a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        My Account
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Account Inquery</a></li>
                        <li><a href="#">Account Statement</a></li>
                        <li><a href="#">Transaction History</a></li>
                        <li><a href="#">Shedule Payments</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Fund Transfer
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Own Account</a></li>
                        <li><a href="#">Third-Party Transfer</a></li>
                        <li><a href="#">Scheduled Transfer</a></li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Bill Payments
                    </a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="#">Pay Bills</a></li>
                        <li><a href="#">Payment History</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Request
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Checkbook Request</a></li>
                        <li><a href="#">Loan Request</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        My Profile
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Change Password</a></li>
                        <li><a href="#">Login History</a></li>
                        <li><a href="#">Change Personal Details</a></li>
                        <li><a href="#">Message to the bank</a></li>
                    </ul>
                </li>
                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>
                    <div class="search-box">
                        <form action="#">
                            <div class="input-group">
                                <input type="text" placeholder="Search" class="form-control">
                                <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">Search</button>
                    </span>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>