<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/18/2017
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/regularSavingsAccount.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Savings & Invest</a></li>
            <li class="active">Regular Savings</li>
        </ul>
        <h1>REGULAR SAVINGS ACCOUNTS</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/Regularsavin.jpg" style="width:100%; height:100%;">
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
                            <h4><i>What is the best gift you can offer to a yourself</i></h4>
                            <br>
                            <p class="text-center">It is a good habit to save a fraction of your hard earned money.</p>
                            <br>
                            <p>We at Alpha
                                Alliance promise you to safeguard your money and appreciate the value of your savings
                                through our dedication to customer service. Alpha Alliance offers you a wide variety of
                                savings accounts to choose whatever suits for your lifestyle.
                            </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>Interest for a minimum balance of Rs. 100/-</li>
                                <li>Loans against deposits at a lesser interest rate.</li>
                                <li>ATM Master Card/Visa Debit Card/Shopping card facility.</li>
                                <li>100% government guarantee on all your savings and interest earned thereon.</li>
                                <li>Standing order facility.</li>
                                <li>Interest will be calculated daily and credited to the account monthly.</li>
                            </ul>
                            <br/>
                            <h5><i>What are the Special Benefits?</i></h5>
                            <ul>
                                <li>We offers 100% Government Guarantee on all your deposits</li>
                                <li>Account holders are entitled to nomination facility.</li>
                            </ul>
                            <br><br>

                            <a href="${pageContext.request.contextPath}/layout/assets/corporate/AccountRates.pdf" download>For Interset Rates</a><br/><br>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour Service</p>
                        </div>
                        <div class="tab-pane fade" id="to">
                            <h5>Begin your savings journey with an Alpha Savings Account and manage your day-to-day
                                transactions with ease and convenience while earning interest on your daily
                                balance.
                            </h5><br>
                            <ul>
                                <li>Any Sri Lankan citizen over 18 years of age</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
