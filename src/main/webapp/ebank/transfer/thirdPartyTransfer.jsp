<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/24/2017
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/thirdPartyTransfer.js"></script>

<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/transfer/ownAccount">Transfer From Own Account</a></li>
            <li class="active"><a href="/ebank/transfer/thirdPartyTransfer">Third Party Transfer</a></li>
            <li><a href="/ebank/transfer/scheduleTransfer">Scheduled Transaction</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>Fund Transfer</li>
            <li class="active">Third Party</li>
        </ul>

        <div class="content-page col-md-9">
            <form action="/ebank/transfer/thirdPartyTransfer/doTransfer" id="thirdPartyTransferForm" role="form" method="post">
                <br/>
                <div class="row form-group">
                    <div class="col-sm-2 col-md-offset-1">
                        <label class="control-label" for="fromAccount">Select Account </label>
                    </div>
                    <div class="col-md-6">
                        <select onchange="get_account_balance()" required name="fromAccountId" class="form-control" id="fromAccount">
                            <option></option>
                            <c:forEach items="${customerAccountList}" var="customerAccount">
                                <option value="${customerAccount.customerAccountId}">
                                        ${customerAccount.accountNo}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-3">
                        <p id="amountInHand" class="align-left"></p>
                    </div>
                </div>
                <div class="col-lg-8 col-lg-offset-1">
                    <div>
                        <legend>Transfer Details</legend>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="receiverName">Receiver's Name </label>
                    </div>
                    <div class="col-md-5">
                        <input required name="receiverName" type="text" class="form-control" id="receiverName">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="bank">Bank </label>
                    </div>
                    <div class="col-md-5">
                        <select name="bank" required name="fromAccountId" class="form-control" id="bank">
                            <c:forEach items="${bankList}" var="bank">
                                <option></option>
                                <option value="${bank.bankId}">
                                        ${bank.bankName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="branch">Branch </label>
                    </div>
                    <div class="col-md-5">
                        <input name="branch" required type="text" class="form-control" id="branch">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="accountNumber">Receiver's AC Number </label>
                    </div>
                    <div class="col-md-5">
                        <input name="accountNo" required type="text" class="form-control" id="accountNumber">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="reAccountNumber">Re-Enter Account Number </label>
                    </div>
                    <div class="col-md-5">
                        <input required type="text" class="form-control" id="reAccountNumber">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="amount">Amount </label>
                    </div>
                    <div class="col-md-5">
                        <div class="input-group">
                            <span class="input-group-addon">LKR</span>
                            <input name="amount" required type="text" class="form-control" id="amount"/>
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="date">Date </label>
                    </div>
                    <div class="col-md-5">
                        <div class="input-group">
                            <input name="transferDate" required type="text" class="form-control datepicker" id="date">
                        </div>
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group">
                    <div class="col-md-3 col-md-offset-7">
                        <span class="input-group-btn">
                            <button onclick="form_validate('thirdPartyTransferForm')" class="btn btn-primary" type="submit">Transfer</button>
                        </span>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
