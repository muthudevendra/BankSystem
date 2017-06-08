<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 08-Jun-17
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="header">
    <div class="container">
        <a class="site-logo" href="index.html"><img src="${pageContext.request.contextPath}/layout/assets/corporate/img/logos/logo.png"
                                                    alt="Metronic FrontEnd"></a>

        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit">
            <ul>
                <li class="dropdown active">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Home
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="index.html">Home</a></li>
                    </ul>
                </li>
                <li class="dropdown dropdown-megamenu">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Mega Menu
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="header-navigation-content">
                                <div class="row">
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>Footwear</h4>
                                        <ul>
                                            <li><a href="index.html">Astro Trainers</a></li>
                                            <li><a href="index.html">Basketball Shoes</a></li>
                                            <li><a href="index.html">Boots</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>Clothing</h4>
                                        <ul>
                                            <li><a href="index.html">Base Layer</a></li>
                                            <li><a href="index.html">Character</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="formElementswithStaticHead.html">
                        Form
                    </a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                        Pages
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="formElementswithStaticHead.html">Form</a></li>
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

