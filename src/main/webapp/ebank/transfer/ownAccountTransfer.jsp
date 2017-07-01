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
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/ownAccountTransfer.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li class="active"><a href="/ebank/transfer/ownAccount">Transfer From Own Account</a></li>
            <li><a href="/ebank/transfer/thirdPartyTransfer">Third-Party Transfer</a></li>
            <li><a href="/ebank/transfer/scheduleTransfer">Scheduled Transfer</a></li>
        </ul>
    </div>
</div>

<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>Fund Transfer</li>
            <li class="active">Transfer</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div>
                <legend>Transfer Details</legend>
            </div>
        </div>

        <div class="content-page col-md-9">
            <form action="/ebank/transfer/ownAccount/doTransfer" id="ownAccountTransferForm" method="post" role="form">
                <br/>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="fromAccount">From Account </label>
                    </div>
                    <div class="col-md-5">
                        <select onchange="get_account_balance()" required name="fromAccountId" class="form-control" id="fromAccount">
                            <option></option>
                            <c:forEach items="${customerAccountList}" var="customerAccount">
                                <option value="${customerAccount.customerAccountId}">
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
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="toAccount">To Account </label>
                    </div>
                    <div class="col-md-5">
                        <select required name="toAccountId" class="form-control" id="toAccount">
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
                    <div class="col-sm-2 col-md-offset-2">
                        <label class="control-label" for="amount">Amount </label>
                    </div>
                    <div class="col-sm-5">
                        <div class="input-group">
                            <span class="input-group-addon">Rs</span>
                            <input name="amount" value="${ownAccountTransfer.amount}"
                                   type="text" class="form-control" id="amount"
                                   required>
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-sm-2 col-md-offset-2">
                        <label class="control-label" for="description">Description </label>
                    </div>
                    <div class="col-sm-5">
                        <div class="input-group">
                            <textarea name="description" id="description" cols="30" rows="5"></textarea>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <br/><br/>
                <div class="row form-group">
                    <div class="col-md-3 col-md-offset-9">
                      <span class="input-group-btn">
                          <button onclick="form_validate('ownAccountTransferForm')" class="btn btn-primary" type="submit"
                                  <sec:authorize
                                          access="!hasAuthority('ebank@ownAccountTransfer_TRANSFER')">
                                      disabled="disabled"
                                  </sec:authorize>>Transfer</button>
                      </span>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
