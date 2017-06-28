<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/accountManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Account</li>
        </ul>
        <div class="content-page col-md-9">
            <div class="col-lg-offset-1">
                <div>
                    <legend>Account Details</legend>
                </div>
            </div>
            <form action="/admin/account/accountManagement/saveAccount" method="post" role="form">
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="accountType">Account Type</label>
                    </div>
                    <div class="col-lg-3">
                        <select name="accountTypeId" class="form-control" id="${customerAccount.account.accountTypeId}">
                            <c:forEach items="${accountTypeList}" var="accountType">
                                <option ${accountType.accountTypeId eq account.accountTypeId ? 'selected' : ''} value="${accountType.accountTypeId}">
                                        ${accountType.accountTypeName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="interestMethod">Interest Method</label>
                    </div>
                    <div class="col-lg-3">
                        <select name="status" class="form-control" id="${customerAccount.account.interestCalMethod}">
                            <c:forEach items="${interestMethodList}" var="interestMethod">
                                <option ${interestMethod.interestMethodSeq eq account.interestCalMethod ? 'selected' : ''}
                                        value="${interestMethod.interestMethodSeq}">
                                        ${interestMethod.interestMethod}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <hr style="width:75%"/>

                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label for="mobileBank">Mobile Bank</label>
                    </div>
                    <div class="col-lg-1" style="border-right: solid 1px;">
                        <input type="checkbox" name="mobileBank" id="mobileBank" >
                    </div>
                    <div class="col-md-2">
                        <label for="onlineBank">Online Bank</label>
                    </div>
                    <div class="col-lg-1" style="border-right: solid 1px;">
                        <input type="checkbox" name="onlineBank" id="onlineBank">
                    </div>
                    <div class="col-md-2">
                        <label for="passbook">Passbook</label>
                    </div>
                    <div class="col-lg-1">
                        <input type="checkbox" name="passbook" id="passbook">
                    </div>
                </div>

                <hr style="width:75%"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-lg-offset-2">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-3">
                        <select name="accountTypeId" class="form-control" id="status">
                            <c:forEach items="${accountStatusList}" var="accountStatus">
                                <option ${accountStatus.accountstatusSeq eq account.status ? 'selected' : ''} value="${accountStatus.accountstatusSeq}">
                                        ${accountStatus.accountstatus }
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <br>
                <br/>

                <div class="col-lg-offset-1">
                    <div>
                        <legend>Customer Account Details</legend>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="customer">Customer ID</label>
                    </div>
                    <div class="col-lg-3">
                        <select name="accountTypeId" class="form-control" id="customerId">
                            <c:forEach items="${customerList}" var="customer">
                                <option  value="${customer.customerId}">
                                        ${customer.fullName }
                                </option>
                            </c:forEach>
                        </select>

                    </div>
                </div>


                <hr style="width:75%"/>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="startDate">Start Date</label>
                    </div>
                    <div class="col-lg-2">
                        <input type="text" name="startDate" class="form-control" id="startDate" value="${customerAccount.startDate}">
                    </div>
                    <div class="col-lg-2">
                        <label for="endDate">End Date</label>
                    </div>
                    <div class="col-lg-2">
                        <input type="text" name="endDate" class="form-control" id="endDate" value="${customerAccount.endDate}">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="availableBalance">Available Balance</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="availableBalance" class="form-control" id="availableBalance" value="${customerAccount.availableBalance}">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-lg-offset-2">
                        <label for="customerstatus">Status</label>
                    </div>
                    <div class="col-lg-3">
                        <select name="accountTypeId" class="form-control" id="${customerAccount.status}">
                            <c:forEach items="${customerStatusList}" var="status">
                                <option  value="${status.customerstatusSeq}">
                                        ${status.customerstatus }
                                </option>
                            </c:forEach>
                        </select>

                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedBy">Lakshitha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedDate">2017/06/26</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-offset-2">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdBy">Lakshitha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdDate">2017/06/24</label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col-md-1 col-md-offset-8">
                        <button type="submit" class="btn btn-success">Save</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-default">Update</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>