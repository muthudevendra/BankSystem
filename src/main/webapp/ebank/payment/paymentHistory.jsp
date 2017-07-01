<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/payment/billPayment">Bill Payment</a></li>
            <li><a href="/ebank/payment/schedulePayment">Schedule Payment</a></li>
            <li class="active"><a href="/ebank/payment/paymentHistory">Payment History</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.html">E-Banking</a></li>
            <li>Bill Payment</li>
            <li class="active">Payment History</li>
        </ul>

        <div class="content-page">
            <div class="col-md-8 col-md-offset-1 table-striped table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>Account Number</th>
                        <th>Payment Receiver</th>
                        <th>Reference No</th>
                        <th>Payed Date</th>
                        <th class="text-right">Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${paymentHistoryList}" var="paymentHistory">
                        <tr>
                            <td>${paymentHistory.fromAccount.accountNo}</td>
                            <td>${paymentHistory.paymentTypeDescription}</td>
                            <td>${paymentHistory.referenceNo}</td>
                            <td><fmt:formatDate value="${paymentHistory.paymentDate}" pattern="dd-MM-yyyy"/></td>
                            <td>${paymentHistory.amount}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
