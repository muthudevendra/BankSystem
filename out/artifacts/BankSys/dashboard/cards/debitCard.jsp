<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 9:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/debitCard.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Cards</a></li>
            <li class="active">debit cards</li>
        </ul>
        <h1>Alpha Debit Cards</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/debitcard.jpg"
                         style="width:100%; height:100%;">
                </div>
            </div>
        </div>
        <div class="container col-md-offset-2">
            <div class="row mix-block margin-bottom-40">
                <div class="col-md-8 tab-style-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
                        <li><a href="#benefits" data-toggle="tab">Key Benefits</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h4><i>What..</i></h4>
                            <br>
                            Present your master and Visa Shopping Debit Card at the time of transaction. The merchant
                            will swipe it through the authorization terminal and enter the purchase information
                            The terminal processes the transaction and confirms availability of funds. A sales receipt
                            will be issued and the transaction amount is automatically deducted from your account.
                            Verify the amount on the sales receipt and place your signature on it
                            <p>
                            </p>
                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>
                                    Awide range of deals and promotions
                                </li>
                                <li>Entitled for exclusive at clothing outlets, Hotels, jewellery & Health and many
                                    more
                                </li>
                                <li>can withdraw up to Rs.250,000/-</li>
                            </ul>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
