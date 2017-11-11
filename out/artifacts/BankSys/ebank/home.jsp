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
                <li class="navUrl" id="dashboard">
                    <a href="/ebank"><i class="fa fa-home"></i></a>
                </li>
                <li class="dropdown navUrl" id="account">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        My Account
                    </a>
                    <ul class="dropdown-menu">
                        <li class="navUrl" id="accountInquiry"><a href="/ebank/account/accountInquiry">Account Inquery</a></li>
                        <li class="navUrl" id="accountStatement"><a href="/ebank/account/accountStatement">Account Statement</a></li>
                    </ul>
                </li>
                <li class="dropdown navUrl" id="transfer">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        Fund Transfer
                    </a>
                    <ul class="dropdown-menu">
                        <li class="navUrl" id="ownAccount"><a href="/ebank/transfer/ownAccount">Own Account</a></li>
                        <li class="navUrl" id="thirdParty"><a href="/ebank/transfer/thirdPartyTransfer">Third-Party Transfer</a></li>
                        <li class="navUrl" id="scheduleTransfer"><a href="/ebank/transfer/scheduleTransfer">Scheduled Transfer</a></li>
                    </ul>
                </li>
                <li class="dropdown navUrl" id="payment">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        Bill Payments
                    </a>
                    <ul class="dropdown-menu">
                        <li class="navUrl" id="payBill"><a href="/ebank/payment/billPayment">Pay Bills</a></li>
                        <li class="navUrl" id="schedulePayment"><a href="/ebank/payment/schedulePayment">Schedule Payment</a></li>
                        <li class="navUrl" id="paymentHistory"><a href="/ebank/payment/paymentHistory">Payment History</a></li>
                    </ul>
                </li>
                <li class="dropdown navUrl" id="profile">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:">
                        My Profile
                    </a>
                    <ul class="dropdown-menu">
                        <li class="navUrl" id="changePassword"><a href="/ebank/profile/changePassword">Change Password</a></li>
                        <li class="navUrl" id="loginHistory"><a href="/ebank/profile/loginHistory">Login History</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>