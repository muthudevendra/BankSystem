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

        <div class="content-page col-lg-10">
            <div>
                <legend>Pay Bill</legend>
            </div>
            <form method="post" id="billPaymentForm" role="form" action="/ebank/payment/billPayment/doPay">
                <input type="hidden" value="${message}" id="message"/>
                <input type="hidden" value="${status}" id="status"/>
                <input type="hidden" value="${billPayment.billPaymentId eq null ? '' : billPayment.billPaymentId}"
                       id="billPaymentId"/>
                <div class="content-page col-md-8 col-md-offset-3">
                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="fromAccount">From Account </label>
                        </div>
                        <div class="col-md-6">
                            <select onchange="get_account_balance()" required name="fromAccountId" class="form-control"
                                    id="fromAccount">
                                <option></option>
                                <c:forEach items="${customerAccountList}" var="customerAccount">
                                    <option ${customerAccount.customerAccountId eq billPayment.fromAccountId ? 'selected' : ''}
                                            value="${customerAccount.customerAccountId}">
                                            ${customerAccount.accountNo}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <p id="amountInHand" class="align-left"></p>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="payment">Pay To </label>
                        </div>
                        <div class="col-md-4">
                            <select name="paymentType" required class="form-control" id="payment">
                                <option></option>
                                <c:forEach items="${paymentTypeList}" var="paymentType">
                                    <option ${paymentType.paymentTypeSeq eq billPayment.paymentType ? 'selected' : ''}
                                            value="${paymentType.paymentTypeSeq}">
                                            ${paymentType.paymentType}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <input required name="referenceNo" value="${billPayment.referenceNo}"
                                   type="text" class="form-control" id="referenceNo" placeholder="Account Number">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="amount">Amount </label>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <span class="input-group-addon">Rs</span>
                                <input required name="amount" value="${billPayment.amount}" type="text"
                                       class="form-control" id="amount">
                                <span class="input-group-addon">LKR</span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <p class="align-left"></p>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="paymentDate">Payment Date</label>
                        </div>
                        <div class="col-md-6">
                            <div class="input-group">
                                <input required onchange="check_transfer_date()" name="paymentDate"
                                       value="<fmt:formatDate value="${billPayment.paymentDate}" pattern="dd-MM-yyyy"/>"
                                       type="text" class="form-control datepicker" id="paymentDate">
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-6 col-md-offset-3">
                            <p id="paymentDateDetail" class="align-left"></p>
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div class="row form-group">
                        <div class="col-md-3 col-md-offset-7">
                    <span class="input-group-btn">
                        <button onclick="form_validate('billPaymentForm')" class="btn btn-primary" type="submit"
                                <sec:authorize
                                        access="!hasAuthority('ebank@billPayment_PAY')">
                                    disabled="disabled"
                                </sec:authorize>>Pay</button>
                    </span>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
