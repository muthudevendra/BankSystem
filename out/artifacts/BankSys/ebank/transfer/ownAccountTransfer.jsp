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

        <div class="content-page col-lg-10">
            <div>
                <legend>Transfer Details</legend>
            </div>

            <div class="col-md-12">
                <form action="/ebank/transfer/ownAccount/doTransfer" id="ownAccountTransferForm" method="post"
                      role="form">
                    <input type="hidden" value="${message}" id="message"/>
                    <input type="hidden" value="${status}" id="status"/>
                    <input type="hidden"
                           value="${ownAccountTransfer.ownAccountTransferId eq null ? '' : ownAccountTransfer.ownAccountTransferId}"
                           id="ownAccountTransferId"/>
                    <br/>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="fromAccount">From Account </label>
                        </div>
                        <div class="col-md-5">
                            <select onchange="get_account_balance()" required name="fromAccountId" class="form-control"
                                    id="fromAccount">
                                <option></option>
                                <c:forEach items="${customerAccountList}" var="customerAccount">
                                    <option ${customerAccount.customerAccountId eq ownAccountTransfer.fromAccountId ? 'selected' : ''}
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
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="toAccount">To Account </label>
                        </div>
                        <div class="col-md-5">
                            <select required name="toAccountId" class="form-control" id="toAccount">
                                <option></option>
                                <c:forEach items="${customerAccountList}" var="customerAccount">
                                    <option ${customerAccount.customerAccountId eq ownAccountTransfer.toAccountId ? 'selected' : ''}
                                            value="${customerAccount.customerAccountId}">
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
                            <label class="control-label" for="fromAccount">Currency </label>
                        </div>
                        <div class="col-md-6">
                            <select required name="currencyId" class="form-control" id="currencyId">
                                <c:forEach items="${currencyList}" var="currency">
                                    <option ${currency.currencySeq eq thirdPartyAccountTransfer.currencyId ? 'selected' : ''}
                                            value="${currency.currencySeq}">
                                            ${currency.currencyCode} - ${currency.rate}
                                    </option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-sm-2 col-md-offset-2">
                            <label class="control-label" for="description">Description </label>
                        </div>
                        <div class="col-sm-5">
                            <div class="input-group">
                            <textarea name="description"
                                      id="description" cols="30" rows="5">${ownAccountTransfer.description}</textarea>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <br/><br/>
                    <div class="row form-group">
                        <div class="col-md-3 col-md-offset-9">
                      <span class="input-group-btn">
                          <button onclick="form_validate('ownAccountTransferForm')"
                                  class="btn btn-primary createOperation" type="submit"
                                  <sec:authorize
                                          access="!hasAuthority('ebank@ownAccountTransfer_TRANSFER')">
                                      disabled="disabled"
                                  </sec:authorize>>Transfer</button>
                      </span>
                        </div>
                    </div>
                </form>
                <button onclick="view_slip()" class="btn btn-primary updateOperation" id="viewSlip"
                        style="display: none"
                        <sec:authorize
                                access="!hasAuthority('ebank@ownAccountTransfer_TRANSFER')">
                            disabled="disabled"
                        </sec:authorize>>View Slip
                </button>
            </div>
        </div>
    </div>
</div>