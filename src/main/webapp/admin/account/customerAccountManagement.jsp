<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/admin/script/customerAccountManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Account</li>
        </ul>
        <div class="content-page col-md-10">
            <div>
                <legend>Account Management</legend>
            </div>
            <form action="/admin/account/customerAccountManagement/saveCustomerAccount" id="customerAccountForm" method="post" role="form">
                <input type="hidden" value="${message}" id="message"/>
                <input type="hidden" value="${status}" id="status" />
                <input type="hidden" name="customerAccountId" id="customerAccountId" value="${customerAccount.customerAccountId eq null ? '' : customerAccount.customerAccountId}"/>
                <input type="hidden" name="account.status" value="${customerAccount.account.status}" id="accountStatus"/>
                <input type="hidden" name="version" value="${customerAccount.version}"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="accountType">Account Type</label>
                    </div>
                    <div class="col-lg-8">
                        <select required name="account.accountTypeId" class="form-control" id="accountType">
                            <option></option>
                            <c:forEach items="${accountTypeList}" var="accountType">
                                <option ${accountType.accountTypeId eq customerAccount.account.accountTypeId ? 'selected' : ''}
                                        value="${accountType.accountTypeId}">
                                        ${accountType.accountTypeName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="interestMethod">Interest Method</label>
                    </div>
                    <div class="col-lg-8">
                        <select required name="account.interestCalMethod" class="form-control" id="interestMethod">
                            <option></option>
                            <c:forEach items="${interestMethodList}" var="interestMethod">
                                <option ${interestMethod.interestMethodSeq eq customerAccount.account.interestCalMethod ? 'selected' : ''}
                                        value="${interestMethod.interestMethodSeq}">
                                        ${interestMethod.interestMethod}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="currency">Currency</label>
                    </div>
                    <div class="col-lg-8">
                        <select required name="currencyId" class="form-control" id="currency">
                            <option></option>
                            <c:forEach items="${currencyList}" var="currency">
                                <option ${currency.currencySeq eq customerAccount.currencyId ? 'selected' : ''}
                                        value="${currency.currencySeq}">
                                        ${currency.currencyCode}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <hr style="width:75%"/>

                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-1">
                        <label for="mobileBank">Mobile Bank</label>
                    </div>
                    <div class="col-lg-1" style="border-right: solid 1px;">
                        <input ${customerAccount.account eq null ? 'a' : (customerAccount.account.mobileBankAvailability eq 1 ? 'checked' : 'b')}
                                value="1" type="checkbox" name="account.mobileBankAvailability" id="mobileBank">
                    </div>
                    <div class="col-md-2  col-md-offset-1">
                        <label for="onlineBank">Online Bank</label>
                    </div>
                    <div class="col-lg-1" style="border-right: solid 1px;">
                        <input ${customerAccount.account eq null ? 'a' : (customerAccount.account.onlineBankAvailability eq 1 ? 'checked' : 'b') }
                                value="1" type="checkbox" name="account.onlineBankAvailability" id="onlineBank">
                    </div>
                    <div class="col-md-2  col-md-offset-1">
                        <label value="1" for="passbook">Passbook</label>
                    </div>
                    <div class="col-lg-1">
                        <input ${customerAccount.account eq null ? 'a' : (customerAccount.account.passbookAvailability eq 1 ? 'checked' : 'b')}
                                value="1" type="checkbox" name="account.passbookAvailability" id="passbook">
                    </div>
                </div>

                <hr style="width:75%"/>
                <br>
                <br/>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="customerId">Customer</label>
                    </div>
                    <div class="col-lg-8">
                        <select required name="customerId" class="form-control" id="customerId">
                            <option></option>
                            <c:forEach items="${customerList}" var="customer">
                                <option ${customer.customerId eq customerAccount.customerId ? 'selected' : ''}
                                        value="${customer.customerId}">
                                        ${customer.fullName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <hr style="width:75%"/>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="startDate">Start Date</label>
                    </div>
                    <div class="col-lg-2">
                        <input required type="text" name="startDate" class="form-control datepicker" id="startDate"
                               value="<fmt:formatDate value="${customerAccount.startDate}" pattern="yyyy-MM-dd"/>"/>
                    </div>
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="endDate">End Date</label>
                    </div>
                    <div class="col-lg-2">
                        <input required type="text" name="endDate" class="form-control datepicker" id="endDate"
                               value="<fmt:formatDate value="${customerAccount.endDate}" pattern="yyyy-MM-dd"/>"/>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="availableBalance">Available Balance</label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="availableBalance" class="form-control" id="availableBalance"
                               value="${customerAccount.availableBalance}">
                    </div>
                </div>

                <div class="row form-group updateOperation" style="display: none">
                    <div class="col-lg-3 col-lg-offset-1">
                        <label for="masterDataStatus">Status</label>
                    </div>
                    <div class="col-lg-8">
                        <select name="status" class="form-control" id="masterDataStatus">
                            <c:forEach items="${statusList}" var="status">
                                <option ${status.statusSeq eq customerAccount.status ? 'selected' : ''}
                                        value="${status.statusSeq}">
                                        ${status.status }
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group updateOperation" style="display: none">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedBy">${customerAccount.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedDate"><fmt:formatDate value="${customerAccount.lastModifiedDate}"
                                                                         pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdBy">${customerAccount.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdDate"><fmt:formatDate value="${customerAccount.createdDate}"
                                                                        pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="pull-right">
                        <button onclick="form_validate('customerAccountForm')" type="submit" class="btn btn-success createOperation"
                                <sec:authorize
                                        access="!hasAuthority('admin@customerAccountManagement_CREATE')">
                                    disabled="disabled"
                                </sec:authorize>>Save
                        </button>
                    </div>
                    <div class="pull-right">
                        <button onclick="form_validate('customerAccountForm')" type="submit" class="btn btn-success updateOperation" style="display: none"
                                <sec:authorize
                                        access="!hasAuthority('admin@customerAccountManagement_UPDATE')">
                                    disabled="disabled"
                                </sec:authorize>>Update
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>