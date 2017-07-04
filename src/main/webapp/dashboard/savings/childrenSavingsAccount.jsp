<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/18/2017
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/dashboard/script/childrenSavingsAccount.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Savings & Invest</a></li>
            <li class="active">Children's Savings</li>
        </ul>
        <h1>CHILDREN'S SAVINGS ACCOUNTS</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/Children'sSavings.jpg"
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
                        <li><a href="#benefits" data-toggle="tab">Key Benefits</a></li>
                        <li><a href="#to" data-toggle="tab">To Whom</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h4><i>Afraid of your child's future</i></h4>
                            <br>
                            <p>Every child undertakes a long journey to adulthood, and along the way, he or she needs
                                financial resources for his/her education, and for important landmarks in life. <br><br>That’s
                                why Alpha Savings Certificate from the Alpha Alliance
                                Bank will come in handy for a smooth, financially secure transition to maturity.
                                <br><br>
                                Alpha Childrens Savings Certificates enable you to build a fund for your childs future
                                for a
                                relatively small sum of money.
                            </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>Initial deposit of Rs10K or USD100 (or any currency equivalent)</li>
                                <li>Birthday suprises</li>
                                <li>Bonus interest of 25% on the month of the childs birthday</li>
                                <li>Grade 5 scholarship achievers will be reward as follows.</li>
                                <br>
                                <table class="table table-striped table-hover table-responsive">
                                    <thead>
                                    <tr>
                                        <th>Grade 5 scholarship achievers</th>
                                        <th>Schools of Grade 5 scholarship achievers</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>Ranked Island's 1st Rs. 150,000/-</td>
                                        <td>Rs. 25, 000/- to the school of the child ranked 1st in the district</td>
                                    </tr>
                                    <tr>
                                        <td>Ranked Island's 2nd Rs. 100,000/-</td>
                                        <td>Rs. 20, 000/- to the school of the child ranked 2nd in the district</td>
                                    </tr>
                                    <tr>
                                        <td>Ranked Island's 3rd Rs. 75,000/-</td>
                                        <td>Rs. 15, 000/- to the school of the child ranked 3rd in the district</td>
                                    </tr>
                                    <tr>
                                        <td>Rs. 10,000/- each for top 5 achievers of each district</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </ul>
                            <br/>
                            <h5>If your child wishes to travel abroad for educational purposes, we can arrange for the
                                following:</h5>
                            <ul>
                                <li>Free for life supplementary HSBC Advance credit card, that could be used for an
                                    emergency
                                </li>
                                <li>Special study loans</li>
                            </ul>
                            <br>
                            <h5>By maintaining a balance of Rs. 500,000/- or more, your child also receives the
                                following additional benefits:</h5>
                            <ul>
                                <li>Free annual Healthcare Insurance cover of Rs.100,000/- for hospitalisation expenses
                                    in any emergency.
                                </li>
                                <li>ree annual Personal Accident Insurance of Rs.100,000/- for a parent and the child.
                                </li>
                            </ul>
                            <a href="${pageContext.request.contextPath}/layout/assets/corporate/AccountRates.pdf"
                               download>For Interset Rates</a><br/>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour
                                Service</p>
                        </div>
                        <div class="tab-pane fade" id="to">
                            <ul>
                                <li>Alpha Savings is happy to introduce a Saving Account that will also encourage your
                                    children to save and build themselves a secure future
                                </li>
                                <li>Punchi Alpha is a savings account meant for little ones up to the age of 7 years.
                                    The account can be opened and operated by a parent or guardian on behalf of the
                                    child.
                                </li>
                                <li>Alpha Nerds Savings Accounts are for children between the ages of 7 to 16 years.
                                    What makes it unique is that it can be opened and operated by a child over 7 years
                                    of age.
                                    <br>It can also be opened and operated by a parent or in their absence, by a
                                    grandparent or guardian. All what you need is a minimum deposit of Rs. 5/= to open a
                                    Account.
                                </li>
                            </ul>
                            <h4><i>What you need to bring</i></h4>
                            <ul>
                                <li>Original birth certificate of the child together with a photocopy</li>
                                <li>National Identity Card, Driving License or Passport of the parent or the guardian
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
