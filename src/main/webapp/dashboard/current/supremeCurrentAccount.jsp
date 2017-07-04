<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:;">Savings & Invest</a></li>
            <li class="active">Current Accounts</li>
        </ul>
        <h1>SUPREME CURRENT ACCOUNTS</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/frontend-slider/bg9.jpg" style="width:100%; height:100%;">
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
                            <h5>What is It</h5>
                            <br>
                            <p>Alpha Supreme Current Account is a supremely elite account designed for our most
                                respected account holders, who have placed their trust in us and have maintained a
                                perfect record for more than three years.The dedicated account with benefits
                                is on offer for clients who have not had a single cheque returned due to lack of funds
                                for a minimum of three years and for having maintained a required minimum balance, while
                                processing a required minimum number of transactions in a year.
                            </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h5>Benefits</h5>
                            <ul>
                                <li>Immediate encashment of cheques from any one of our branches located islandwide,
                                    even if you are not a holder of a Alpha Current Account.
                                </li>
                                <li>Alpha current account cheque book can be received instantly, without any
                                    additional charges
                                </li>
                                <li>Make immediate payments for all utility bills at any time, through our wide network
                                    of ATMs and our user-friendly internet banking solution.
                                </li>
                                <li>Alpha Bank crossed cheques can be deposited at any branch and realized via another
                                    branch.
                                    Receive immediate SMS alerts of your cheque transactions on your mobile.
                                </li>
                            </ul>
                            <br/>
                            <h5>What are the Special Benefits?</h5>
                            <ul>
                                <li>Reduction on charges per cheque leaf</li>
                                <li>No charges on cheque redeposit</li>
                                <li>No charges on outward cheque returns</li>
                            </ul>
                            <br><br>

                            <a href="#">For Interset Rates</a><br/>
                            <p>*Conditions Apply;<br> For more details contact Alpha Call Center- (+94 11 2123123) 24
                                Hour Service</p>
                            </p>
                        </div>
                        <div class="tab-pane fade" id="to">
                            <p>
                            <h5>“Select a plan of your choice and receive interests monthly, quarterly, biannually,
                                annually or at maturity....
                                The best way to earn a higher interest rate for your funds”</h5>
                            <ul>
                                <li>Any Sri Lankan citizen over 18 years of age</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
