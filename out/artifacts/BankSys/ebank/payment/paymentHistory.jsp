<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 11:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/paymentHistory.js"></script>
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

        <div class="content-page col-lg-10">
            <div>
                <legend>Payment History</legend>
            </div>
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#paymentHistoryData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#paymentHistoryData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#paymentHistoryData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="paymentHistoryData" class="table datatable table-striped table-responsive">
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
                            <td><fmt:formatNumber value="${paymentHistory.amount}" maxFractionDigits="2" minFractionDigits="2"/> </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
