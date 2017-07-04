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
            <li><a href="javascript:">Savings & Invest</a></li>
            <li class="active">Current Accounts</li>
        </ul>
        <h1>GENERAL CURRRENT ACCOUNTS</h1>
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
                            <p>Alpha general current account enables you to easily issue or deposit cheques with
                                complete freedom and while enjoying the full convenience of modern-day banking. You need
                                not step in to the branch at which you have opened your current account in order to
                                operate it. Since all our branches are electronically linked, all your cheque
                                transactions can be performed at any of our branches. You can also view and initiate any
                                number of transactions of any nature, by using our user-friendly Internet Banking
                                facility too. </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h5>Benefits</h5>
                            <ul>
                                <li>Credit within one day from any bank for Alpha current account cheques.</li>
                                <li>Immediate encashment of cheques from any one of our branches located island wide,
                                    even if you are not a holder of a Alpha Current Account.
                                </li>
                                <li>Cheque clearing commissions are not charged on cheques which are cleared in areas
                                    located away from Colombo.
                                </li>
                                <li>Immediate overdraft (OD) through the FLEXI facility which links all your Alpha
                                    Savings Accounts to your Alpha Current Account.
                                </li>
                                <li>Make immediate payments for all utility bills at any time, through our wide network
                                    of ATMs and our user-friendly internet banking solution.
                                </li>
                            </ul>
                            <br><br>

                            <a href="#">For Interset Rates</a><br/>
                            <p>*Conditions Apply;<br> For more details contact Alpha Call Center- (+94 11 2123123) 24
                                Hour Service</p>
                        </div>
                        <div class="tab-pane fade" id="to">
                            <p>
                            <h5>“Select a plan of your choice and receive interests monthly, quarterly, biannually,
                                annually or at maturity....
                                The best way to earn a higher interest rate for your funds”</h5>
                            <ul>
                                <li>Any Sri Lankan citizen over 18 years of age</li>
                                <li>Screening clients for competency of maintaining current account of high esteem</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>