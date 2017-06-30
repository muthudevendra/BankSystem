<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 24-Jun-17
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/accountStatement.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/account/accountInquiry">Account Inquiry</a></li>
            <li class="active"><a href="/ebank/account/accountStatement">Account Statement</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">

        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>My Account</li>
            <li class="active">Statement</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Account Summary</legend>
            </div>
        </div>

        <div class="content-page col-md-8 col-md-offset-2">
            <form action="/ebank/account/accountStatement/searchCustomerAccount">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="input-group">
                            <div class="row">
                                <div class="col-md-5">
                                    <label class="control-label" for="accountType">Account Type</label>
                                </div>
                                <div class="col-md-7">
                                    <select name="accountTypeId" class="form-control" id="accountType">
                                        <c:forEach items="${accountTypeList}" var="accountType">
                                            <option value="${accountType.accountTypeId}">
                                                    ${accountType.accountTypeName}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="input-group">
                            <div class="row">
                                <div class="col-md-5">
                                    <label class="control-label col-sm-2" for="customerAccountId">Account Number</label>
                                </div>
                                <div class="col-md-7">
                                    <select required name="customerAccountId" class="form-control" id="customerAccountId">
                                        <c:forEach items="${customerAccountList}" var="customerAccount">
                                            <option value="${customerAccount.customerAccountId}">
                                                    ${customerAccount.accountNo}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-1">
                      <span class="input-group-btn">
                            <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                      </span>
                    </div>
                </div>
            </form>
        </div>
        <br>
        <div class="col-md-9 col-md-offset-2 table-striped table-responsive">
            <table class="table datatable">
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Reference</th>
                    <th>Withdraw</th>
                    <th>Deposit</th>
                    <th class="text-right">Available Balance</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${accountTransactionList}" var="accountTransaction">
                    <tr ${accountTransaction.depositAmount eq null ?
                    'style="background-color: palegoldenrod"' : 'style="background-color: palegreen"'}>
                        <td><fmt:formatDate value="${accountTransaction.transferDate}" pattern="yyyy-MM-dd HH:mm"/></td>
                        <td>${accountTransaction.description}</td>
                        <td>${accountTransaction.transferTypeDescription}</td>
                        <td align="right">${accountTransaction.withdrawAmount}</td>
                        <td align="right">${accountTransaction.depositAmount}</td>
                        <td align="right">${accountTransaction.availableBalance}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
