<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 6:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/home.js"></script>
<div class="main">
    <div class="container">
        <div class="row service-box margin-bottom-40">
            <div class="col-md-4 col-sm-4">
                <div class="list-group">
                    <div class="service-box-heading">
                        <a href="#" class="list-group-item list-group-item-info">
                            <em><i class="fa fa-book blue"></i></em>
                            <span>Recent Transactions</span>
                        </a>
                    </div>
                    <c:forEach items="${thirdPartyTransferList}" var="thirdPartyTransfer">
                        <a href="#" onclick="load_transfer(${thirdPartyTransfer.thirdPartyAccountTransferId})"
                           class="list-group-item">
                            To ${thirdPartyTransfer.accountNo} - ${thirdPartyTransfer.targetBank.bankName}
                            - <fmt:formatNumber value="${thirdPartyTransfer.amount}" maxFractionDigits="2" minFractionDigits="2"/> ${thirdPartyTransfer.currency.currencyCode}</a>
                    </c:forEach>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="list-group">
                    <div class="service-box-heading">
                        <a href="#" class="list-group-item list-group-item-success">
                            <em><i class="fa fa-user-secret red"></i></em>
                            <span>Recent Payments</span>
                        </a>
                    </div>
                    <c:forEach items="${billPaymentList}" var="billPayment">
                        <a href="#" onclick="load_bill(${billPayment.billPaymentId})" class="list-group-item">
                            To ${billPayment.paymentTypeDescription} - ${billPayment.referenceNo}
                            - <fmt:formatNumber value="${billPayment.amount}" maxFractionDigits="2" minFractionDigits="2"/> </a>
                    </c:forEach>
                </div>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="list-group">
                    <div class="service-box-heading">
                        <a href="#" class="list-group-item list-group-item-success">
                            <em><i class="fa fa-user-secret red"></i></em>
                            <span>Available Balance</span>
                        </a>
                    </div>
                    <c:forEach items="${customerAccountList}" var="customerAccount">
                        <a href="#" onclick="load_customer_account(${customerAccount.customerAccountId})" class="list-group-item">
                        ${customerAccount.accountNo} - <fmt:formatNumber value="${customerAccount.availableBalance}" maxFractionDigits="2" minFractionDigits="2"/> ${customerAccount.currency.currencyCode}</a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>