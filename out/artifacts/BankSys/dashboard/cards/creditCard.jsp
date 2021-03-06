<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/creditCard.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Cards</a></li>
            <li class="active">credit cards</li>
        </ul>
        <h1>Alpha Credit Cards</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/creditcard.jpg" style="width:100%; height:100%;">
                </div>
            </div>
        </div>

        <div class="container col-md-offset-2">
            <div class="row mix-block margin-bottom-40">
                <div class="col-md-8 tab-style-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
                        <li><a href="#benefits" data-toggle="tab">Key Benefits</a></li>
                        <li><a href="#essential" data-toggle="tab">Essential</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h4><i>What is it</i></h4>
                            <br>
                            <p>
                                Alpha Alliance solid and stable tradition along with our ties with Cirrus and Visa have made our cards one of the most widely used in Sri Lanka and abroad.
                            </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>Enjoy lower interest rates</li>
                                <li>Interest free installment schemes</li>
                                <li>Year round COMDEALS discounts at selected outlets</li>
                                <li>06 convenient settlement cycles</li>
                                <li>Facility of settling credit card payments at over 240 branches island wide</li>
                            </ul>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour
                                Service
                            </p>
                        </div>
                        <div class="tab-pane fade" id="essential">
                            <p>
                            <h4><i>Essentials</i></h4>
                            <br><br/>
                            <ul>
                                <li>
                                    Your cash is safe
                            </li>
                                <li>Quick and convenient</li>
                                <li>Tied with Cirrus and Visa, accepted worldwide</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

