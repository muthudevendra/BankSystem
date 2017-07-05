<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 8:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/regularDeposits.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Savings & Invest</a></li>
            <li class="active">Regular Depoists</li>
        </ul>
        <h1>REGULAR DEPOSITS ACCOUNTS</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/CertificateofDeposit.jpg" style="width:100%; height:100%;">
                </div>
            </div>
        </div>
        <div class="container col-md-offset-2">
            <div class="row mix-block margin-bottom-40">
                <div class="col-md-8 tab-style-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
                        <li><a href="#benefits" data-toggle="tab">Key Benefits</a></li>
                        <li><a href="#to" data-toggle="tab">To Whom</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h4><i>What is It</i></h4>
                            <br>
                            <p>Alpha Fixed Deposits can help you to fulfill your dream of a financially-secure future
                                for yourself and your family. You can earn a high interest for your hard-earned money
                                and have peace of mind, by seeing your wealth accumulate at an amazing speed while being
                                in the safe custody of one of the leading banks in Sri Lanka. <br><br> You do not need to be a
                                Alpha Bank account holder to enjoy high interest rates and earn an additional income on
                                your fixed deposit. A minimum deposit of Rs. 20,000/- is all what you need to open a
                                fixed deposit account. If you are a Alpha Bank account holder, then the interest earned,
                                whether monthly or annually, can be automatically transferred to your Current or Savings
                                account according to your wishes. </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>You can earn a higher rate of interest.</li>
                                <li>You can request the Bank to renew your deposit at maturity with interest earned
                                    added to the capital or renew just the capital.
                                </li>
                                <li>You can pledge the Fixed Deposit and obtain a loan instantly at concessionary
                                    interest rates.
                                </li>
                                <li>Ability to place Fxed Deposits via Online Banking - If you are already registered
                                    for our Online Banking facility, now you can place Fixed Deposits online from where
                                    ever you are at a time convenient to you by directly debiting your account
                                </li>
                                <li>Interest will be calculated daily and credited to the account monthly.</li>
                            </ul>
                            <br/>
                            <h5><i>What are the Special Benefits</i></h5>
                            <ul>
                                <li>We offers 100% Government Guarantee on all your deposits</li>
                                <li>Account holders are entitled to nomination facility.</li>
                            </ul>
                            <br><br>

                            <a href="${pageContext.request.contextPath}/layout/assets/corporate/AccountRates.pdf" download>For Interset Rates</a><br/>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour Service</p>
                        </div>
                        <div class="tab-pane fade" id="to">
                            <p>
                            <h4><i>Select a plan of your choice and receive interests monthly, quarterly, biannually,
                                annually or at maturity....
                            The best way to earn a higher interest rate for your funds</i></h4>
                            <ul>
                                <li>Any Sri Lankan citizen over 18 years of age</li>
                                <li>Minimum initial deposit - Rs. 20,000/-</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>