<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 8:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/womenSavingsAccount.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Savings & Invest</a></li>
            <li class="active">Womens's Savings</li>
        </ul>
        <h1>WOMEN'S SAVINGS ACCOUNTS</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/Woman'ssaving.jpg" style="width:100%; height:100%;">
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
                            <h4><i>Its all about your Life</i></h4>
                            <br>
                            <p>We believe that our responsibility extends to make opportunities available for women to invest in themselves.
                                Hence, our Advantage Woman Savings Account includes offers on skill-building courses like IT certifications, music lessons and personality development.
                                <br><br>We also have offers that help women look after themselves and their family better, like discounts on healthcare, kids education and more.</p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>You will receive an interest rate above the normal rate provided for Regular Savings Accounts, which will be one of the best rates available in the market.</li>
                                <li>Your interest will be calculated on a daily basis and credited monthly.</li>
                                <li>You will receive your very own branded ATM cum Debit card. This card provides fast, convenient, 24 x 7 unlimited access to your account from anywhere in the world, through the millions of ATMs belonging to the Cirrus or Visa network.</li>
                                <li>You can also access your account 24 hours x 7 days a week, through Online Banking and Telephone and Mobile Banking.</li>
                                <li>Gold Loans at a concessionary rate.</li>
                                <li>You can also make payments for goods and services using your ATM cum Debit card, to any merchant with a POS machine connected to Visa or Master network.</li>
                            </ul>
                            <br/>
                            <h5><i>What are the Special Benefits</i></h5>
                            <ul>
                                <li> offers free accidental hospitalisation cover of Rs 1 lakh and free accidental death cover of Rs 10 lakhs
                                    p.a. with our women’s savings account, which is not available with their regular savings account. Alpha Alliance offers a free group personal accident death insurance cover of Rs 5 lakhs.</li>
                            </ul>
                            <br><br>

                            <a href="${pageContext.request.contextPath}/layout/assets/corporate/AccountRates.pdf" download>For Interset Rates</a><br/>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour Service</p>
                        </div>
                        <div class="tab-pane fade" id="to">
                            <h4><i>Begin your savings journey with an Alpha Savings Account and manage your day-to-day transactions with ease and convenience while earning interest on your daily balance.</i></h4>
                            <ul>
                                <li>Any Sri Lankan women over 18 years of age</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
