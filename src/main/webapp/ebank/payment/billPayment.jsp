<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/20/2017
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/billPayment.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li class="active"><a href="/ebank/payment/billPayment">Bill Payment</a></li>
            <li><a href="/ebank/payment/schedulePayment">Schedule Payment</a></li>
            <li><a href="/ebank/payment/paymentHistory">Payment History</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>Bill Payment</li>
            <li class="active">Pay</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Pay Bill</legend>
            </div>
        </div>
        <form method="post" role="form" action="/ebank/payment/billPayment/doPay">
            <div class="content-page col-md-8 col-md-offset-3">
                <div class="row form-group">
                    <div class="col-md-2">
                        <label class="control-label" for="fromAccount">From Account </label>
                    </div>
                    <div class="col-md-6">
                        <select onchange="get_account_balance()" required name="fromAccountId" class="form-control"
                                id="fromAccount">
                            <c:forEach items="${customerAccountList}" var="customerAccount">
                                <option ${customerAccount.customerAccountId eq billPayment.fromAccountId ? 'selected' : ''}
                                        value="${customerAccount.customerAccountId}">
                                        ${customerAccount.accountNo}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <p id="amountInHande" class="align-left"></p>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2">
                        <label class="control-label" for="payment">Pay To </label>
                    </div>
                    <div class="col-md-4">
                        <select name="paymentType" class="form-control" id="payment">
                            <c:forEach items="${paymentTypeList}" var="paymentType">
                                <option ${paymentType.paymentTypeSeq eq billPayment.paymentType ? 'selected' : ''}
                                        value="${paymentType.paymentTypeSeq}">
                                        ${paymentType.paymentType}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="col-md-4">
                        <input name="referenceNo" value="${billPayment.referenceNo}"
                               type="text" class="form-control" id="referenceNo">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2">
                        <label class="control-label" for="amount">Amount </label>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">Rs</span>
                            <input name="amount" value="${billPayment.amount}" type="text" class="form-control"
                                   id="amount">
                            <span class="input-group-addon">.00</span>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <p class="align-left"></p>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2">
                        <label class="control-label" for="date">Payment Date</label>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <input name="paymentDate"
                                   value="<fmt:formatDate value="${billPayment.paymentDate}" pattern="dd-MM-yyyy"/>"
                                           type="text" class="form-control datepicker" id="date">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <p class="align-left"></p>
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group">
                    <div class="col-md-3 col-md-offset-7">
                    <span class="input-group-btn">
                        <button class="btn btn-primary" type="submit">Pay</button>
                    </span>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
