<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/schedulePayment.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/payment/billPayment">Bill Payment</a></li>
            <li class="active"><a href="/ebank/payment/schedulePayment">Schedule Payment</a></li>
            <li><a href="/ebank/payment/paymentHistory">Payment History</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>Bill Payment</li>
            <li class="active">Schedule Payment</li>
        </ul>
        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Schedule Payment</legend>
            </div>
        </div>
        <div class="col-md-9 col-md-offset-2 table-striped table-responsive">
            <table class="table datatable">
                <thead>
                <tr>
                    <th>From Account</th>
                    <th>To</th>
                    <th>Amount</th>
                    <th>Date</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${schedulePaymentList}" var="schedulePayment">
                    <tr>
                        <td>${schedulePayment.fromAccount.accountNo}</td>
                        <td>${schedulePayment.referenceNo}</td>
                        <td>${schedulePayment.amount}</td>
                        <td><fmt:formatDate value="${schedulePayment.paymentDate}" pattern="dd-MM-yyyy"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
