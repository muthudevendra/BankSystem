<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 08-Jun-17
  Time: 12:55 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="header">
    <div class="container">
        <a class="site-logo" href="#"><img
                src="${pageContext.request.contextPath}/layout/assets/corporate/img/logos/logo.png"
                alt="Metronic FrontEnd"></a>
        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
        <div class="header-navigation pull-right font-transform-inherit">
            <ul>
                <li>
                    <a href="/ebank"><i class="fa fa-home"></i></a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        My Account
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/ebank/account/accountInquiry">Account Inquery</a></li>
                        <li><a href="/ebank/account/accountStatement">Account Statement</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        Fund Transfer
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/ebank/transfer/ownAccount">Own Account</a></li>
                        <li><a href="/ebank/transfer/thirdPartyTransfer">Third-Party Transfer</a></li>
                        <li><a href="/ebank/transfer/scheduleTransfer">Scheduled Transfer</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        Bill Payments
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/ebank/payment/billPayment">Pay Bills</a></li>
                        <li><a href="/ebank/payment/schedulePayment">Schedule Payment</a></li>
                        <li><a href="/ebank/payment/paymentHistory">Payment History</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        My Profile
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="/ebank/profile/changePassword">Change Password</a></li>
                        <li><a href="/ebank/profile/loginHistory">Login History</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>