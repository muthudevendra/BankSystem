<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 8:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/personalLoans.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Loans</a></li>
            <li class="active">Personal Loans</li>
        </ul>
        <h1>PERSONAL LOANS</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/personalloan.jpg" style="width:100%; height:100%;">
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
                        <li><a href="#essentals" data-toggle="tab">Essentials</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h4><i>What is It</i></h4>
                            <br>
                            <p>To have that perfect wedding, a vacation, your chid's education or much desired budget,
                                you no longer need to wait to fulfill your aspirations , with Alpha Personal Loans.
                                <br><br>
                                We are here to help you at your financial needs by provding our personal loan designed
                                to suit your individual needs and repayment capacity while you enjoy our service.
                            </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>Suits for any purpose</li>
                                <li>Available for slaried individuals</li>
                                <li>Available form Rs.200,000/- to Rs.5,000,000/-</li>
                                <li>Flexible repayment rates</li>
                                <li>Attarctive Interest Rates</li>
                                <li>Minimum Documents</li>
                            </ul>
                            <br><br>

                            <a href="#">For Interset Rates</a><br/>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour Service</p>
                        </div>
                        <div class="tab-pane fade" id="essentals">
                            <p>
                            <h4><i>Who can apply</i></h4>
                            <ul>
                                <li>Sri Lankan citizens who age between 20-60 years (Loan to be settled within the
                                    retirement age)
                                </li>
                                <li>Minimum monthly fixed income of LKR. 50,000/-</li>
                            </ul>
                            <br>
                            <h5><i>Documents to be submitted :</i></h5>
                            <ul>
                                <li>Valid National identity card/ Driving License or Passport</li>
                                <li>Letter of confirmation from employer regarding employment</li>
                                <li>Evidence of Income - last pay slip & Bank statement of last 3 month</li>
                            </ul>
                            <ul>Other
                                <li>Utility Bill</li>
                                <li>Guarantor's income details and Bank Statements or property Deed/ Survey Plan</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
