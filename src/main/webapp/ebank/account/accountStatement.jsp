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

        <div class="content-page col-lg-10">
            <div id="legend">
                <legend>Account Summary</legend>
            </div>

            <div class="col-md-12">
                <form action="/ebank/account/accountStatement/searchCustomerAccount">
                    <div class="row">
                        <div class="input-group">
                            <div class="col-md-4">
                                <label class="control-label" for="customerAccountId">Account Number</label>
                            </div>
                            <div class="col-md-6">
                                <select required name="customerAccountId" class="form-control" id="customerAccountId">
                                    <c:forEach items="${customerAccountList}" var="account">
                                        <option ${account.customerAccountId eq customerAccount.customerAccountId ? 'selected' : ''}
                                                value="${account.customerAccountId}">
                                                ${account.accountNo}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-md-1">
                            <span class="input-group-btn">
                                <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                            </span>
                            </div>
                        </div>
                    </div>
                    <br>
                </form>
            </div>
            <br>
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#accountStatementData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#accountStatementData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#accountStatementData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="accountStatementData" class="table datatable table-striped table-responsive">
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
                            <td><fmt:formatDate value="${accountTransaction.transferDate}"
                                                pattern="yyyy-MM-dd HH:mm"/></td>
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
</div>
