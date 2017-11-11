<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 8:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/flexibleDeposits.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Savings & Invest</a></li>
            <li class="active">Flexible Deposits</li>
        </ul>
        <h1>FLEXIBLE DEPOSITS ACCOUNTS</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/fixeddeposit.jpg" style="width:100%; height:100%;">
                </div>
            </div>
        </div>

        <div class="container col-md-offset-2">
            <div class="row mix-block margin-bottom-40">
                <!-- TABS -->
                <div class="col-md-8 tab-style-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
                        <li><a href="#benefits" data-toggle="tab">Key Benefits</a></li>
                        <li><a href="#to" data-toggle="tab">To Whom</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h4><i>FLEXI ALPHA</i></h4>
                            <br>
                            <p>Have you been planning to own the latest gadgets or doing a lot of fun things for months,
                                but find it difficult to save for it regularly? It's time you tried flexyAlpha - A fun and
                                flexible way of saving online to fulfill your wishes. It is a flexible Recurring Deposit
                                that lets you save for your goals as and when you have the funds and earn better
                                interest rates just like a Fixed Deposit </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>Yearly statement to help keep track of your account activities</li>
                                <li>Interest accrued on a daily basis and paid yearly</li>
                                <li>Enjoy higher interest rate than standard accounts</li>
                                <li>Flexibility to withdraw your funds once a year to meet those unexpected needs</li>
                            </ul>
                            <br><br>

                            <a href="${pageContext.request.contextPath}/layout/assets/corporate/AccountRates.pdf" download>For Interset Rates</a><br/>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour Service</p>
                        </div>
                        <div class="tab-pane fade" id="to">
                            <ul>
                                <li>Any Sri Lankan citizen over 15 years of age</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
