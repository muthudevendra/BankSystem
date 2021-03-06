<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 7:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/accountTypeManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Account Type</li>
        </ul>

        <div class="content-page col-lg-10">
            <div>
                <legend>Account Type Management</legend>
            </div>
            <form role="form" action="/admin/account/accountTypeManagement" id="newUserTypeAuthority">
                <div class="row">
                    <div class="pull-left">
                        <button type="submit" class="btn btn-primary">New</button>
                    </div>
                </div>
            </form>
            <form action="/admin/account/accountTypeManagement/saveAccountType" role="form" method="post" id="accountTypeForm">
                <input type="hidden" value="${message}" id="message"/>
                <input type="hidden" value="${status}" id="status" />
                <input type="hidden" name="accountTypeId" value="${accountType.accountTypeId}" id="accountTypeId"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="accounttype">Account Name</label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="accountTypeName"
                               value="${accountType.accountTypeName}"
                               class="form-control" id="accounttype">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="description">Description</label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="description"
                               value="${accountType.description}"
                               class="form-control" id="description">
                    </div>
                </div>
                <hr style="width:75%">
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="minDeposit">Minimum Deposit</label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="minDeposit"
                               value="${accountType.minDeposit}"
                               class="form-control" id="minDeposit">
                    </div>
                    <div class="col-lg-2">
                        <label for="annualCost">Annual Cost</label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="annualCost"
                               value="${accountType.annualCost}"
                               class="form-control" id="annualCost">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="minAge">Minimum Age</label>
                    </div>
                    <div class="col-lg-3">
                        <input required type="text" name="minAge"
                               value="${accountType.minAge}"
                               class="form-control" id="minAge">
                    </div>
                    <div class="col-lg-2">
                        <label for="maxAge">Maximum Age</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="maxAge"
                               value="${accountType.maxAge}"
                               class="form-control" id="maxAge">
                    </div>
                </div>
                <hr style="width:75%">
                <div class="row form-group updateOperation" style="display: none">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-3">
                        <select name="status" class="form-control" id="masterDataStatus">
                            <c:forEach items="${statusList}" var="status">
                                <option ${status.statusSeq eq accountType.status ? 'selected' : ''}
                                        value="${status.statusSeq}">
                                        ${status.status}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <br/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group updateOperation" style="display:none;">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedBy">${accountType.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedDate"><fmt:formatDate value="${accountType.lastModifiedDate}"
                                                                         pattern="dd-MM-yyyy HH:mm:ss"/></label></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdBy">${accountType.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdDate"><fmt:formatDate value="${accountType.createdDate}"
                                                                        pattern="dd-MM-yyyy HH:mm:ss"/></label></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <span class="input-group-btn">
                        <div class="pull-right createOperation">
                            <button onclick="form_validate('accountTypeForm')" type="submit" class="btn btn-success"
                                    <sec:authorize
                                            access="!hasAuthority('admin@accountTypeManagement_CREATE')">
                                        disabled="disabled"
                                    </sec:authorize>>Save
                            </button>
                        </div>
                        <div class="pull-right updateOperation" style="display: none">
                            <button type="submit" class="btn btn-success"
                                    <sec:authorize
                                            access="!hasAuthority('admin@accountTypeManagement_UPDATE')">
                                        disabled="disabled"
                                    </sec:authorize>>Update
                            </button>
                        </div>
                    </span>
                </div>
            </form>
        </div>
    </div>
</div>