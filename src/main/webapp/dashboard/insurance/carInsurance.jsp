<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 8:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/carInsurance.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Insurance</a></li>
            <li class="active">Vehicle Protection</li>
        </ul>
        <h1>Vehicle Protection</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/carinsurance.jpg"
                         style="width:100%; height:100%;">
                </div>
            </div>
        </div>

        <div class="container col-md-offset-2">
            <div class="row mix-block margin-bottom-40">
                <!-- TABS -->
                <div class="col-md-8 tab-style-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
                        <li><a href="#benefits" data-toggle="tab">Benefits</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h4><i>What is It</i></h4>
                            <br>
                            <p>Looking to insure your car? We can offer you a competitive quote in minutes from our
                                panel of leading insurers.

                                Alpha Alliance car insurance is arranged and administered by BISL Limited and
                                underwritten by a panel of insurers.</p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>3 year guarantee on repairs carried out at approved garages</li>
                                <li>24-hour emergency windscreen helpline</li>
                                <li>New car replacement if your car is stolen and not recovered so long as the car is
                                    less than 12 months old and you’ve owned it since new
                                </li>
                                <li>Vandalism cover if your car is maliciously damaged</li>
                                <li>Courtesy car – whilst your car is at one of our approved repairers (subject to
                                    availability and eligibility).
                                </li>
                            </ul>
                            <br><br>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour
                                Service</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
