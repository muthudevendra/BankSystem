<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/4/2017
  Time: 8:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/lifeInsurance.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="javascript:">Insurance</a></li>
            <li class="active">Life</li>
        </ul>
        <h1>Life Protection</h1>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="content-page">
                    <img src="${pageContext.request.contextPath}/layout/assets/pages/img/top-images/personalinsurance.jpg" style="width:100%; height:100%;">
                </div>
            </div>
        </div>

        <div class="container col-md-offset-2">
            <div class="row mix-block margin-bottom-40">
                <!-- TABS -->
                <div class="col-md-8 tab-style-1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#overview" data-toggle="tab">Overview</a></li>
                        <li><a href="#benefits" data-toggle="tab">Benefits</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane row fade in active" id="overview">
                            <p class="margin-bottom-10">
                            <h5><i>10% off My Life Insurance now</i></h5>
                            <br>
                            <p>Start the new year with peace of mind.</p>
                            <p>My Life Insurance will help protect your loved ones financially if the worst should
                                happen to you and you die within the term of the policy. This can help with several
                                costs such as paying off a mortgage, school fees or outstanding debts.

                                With a 10% discount on your premiums, now could be a great time to give financial
                                stability to those that you care about most.

                                Life insurance is one of the cheapest ways to protect your family's finances, should the
                                worst happen. If you have people who rely on you financially, life insurance could pay
                                out a cash lump sum, helping them with living costs, bills, mortgage payments, or even
                                your funeral expenses.</p>
                            <br>
                            <p>We are committed to helping you meet your protection needs and giving you peace of mind
                                that you are covered.</p>

                        </div>
                        <div class="tab-pane row fade" id="benefits">
                            <p>
                            <h4><i>Benefits</i></h4>
                            <ul>
                                <li>Get insured today - It's quick and easy to apply and with an instant decision you
                                    could be up and running in just a few minutes
                                </li>
                                <li>It's great value - Cover starts from just Rs.5000/- per month, and can be
                                    personalised up to Rs.500,000/-
                                </li>
                                <li>Tailored cover and payments - Use our helpful calculator to understand how much
                                    cover your loved ones might need and what that would cost per month
                                </li>
                            </ul>
                            <br><br>
                            <p class="pull-right">*Conditions Apply; </p><br>
                            <p class="text-center">For more details contact Alpha Call Center- (+94 11 2123123) 24Hour Service</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
