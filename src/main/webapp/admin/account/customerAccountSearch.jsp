<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/29/2017
  Time: 7:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/admin/script/customerAccountSearch.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Search Account</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>Accounts</legend>
            </div>
            <form method="post" action="/admin/account/customerAccountSearch/searchCustomerAccounts" role="form">
                <div class="row">
                    <div class="col-md-offset-1">
                        <div class="row">
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="accountType">Account Type</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <select name="accountType" class="form-control" id="accountType">
                                        <option></option>
                                        <c:forEach items="${accountTypeList}" var="accountType">
                                            <option ${accountType.accountTypeId eq customerAccount.accountType ? 'selected' : ''}
                                                    value="${accountType.accountTypeId}">
                                                    ${accountType.accountTypeName}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="interestMethod">Interest Method</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <select name="interestMethod" class="form-control" id="interestMethod">
                                        <option></option>
                                        <c:forEach items="${interestMethodList}" var="interestMethod">
                                            <option ${interestMethod.interestMethodSeq eq customerAccount.interestMethod ? 'selected' : ''}
                                                    value="${interestMethod.interestMethodSeq}">
                                                    ${interestMethod.interestMethod}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="customer">Customer</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input name="customer" value="${customerAccount.customer}" type="text" class="form-control" id="customer">
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        <span class="input-group-btn pull-right">
                            <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                        </span>
                        </div>
                    </div>
            </form>
            <br/>
            <div class="col-md-12">
                <table class="table table-striped table-responsive">
                    <thead>
                    <tr>
                        <th>Account Type</th>
                        <th>Interest Method</th>
                        <th>Mobile Banking</th>
                        <th>Online Banking</th>
                        <th>Passbook</th>
                        <th>Customer Name</th>
                        <th>Created Date</th>
                        <th>Created By</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${customerAccountList}" var="customerAccount">
                        <tr onclick="load_customer_account(${customerAccount.customerAccountId})">
                            <td>${customerAccount.account.accountType.accountTypeName}</td>
                            <td>${customerAccount.account.interestCalMethodDescription}</td>
                            <td>${customerAccount.account.mobileBankAvailability eq 1 ? 'Yes' : 'No'}</td>
                            <td>${customerAccount.account.onlineBankAvailability eq 1 ? 'Yes' : 'No'}</td>
                            <td>${customerAccount.account.passbookAvailability eq 1 ? 'Yes' : 'No'}</td>
                            <td>${customerAccount.customer.fullName}</td>
                            <td><fmt:formatDate value="${customerAccount.createdDate}" pattern="dd-MM-yyyy HH:ss"/> </td>
                            <td>${customerAccount.createdBy}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>