<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/28/2017
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/userTypeManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">User Type</li>
        </ul>
        <div class="content-page col-lg-10">
            <div id="legend">
                <legend>User Type Management</legend>
            </div>
            <form role="form" action="/admin/config/userTypeManagement" id="newUserTypeAuthority">
                <div class="row">
                    <div class="pull-left">
                        <button type="submit" class="btn btn-primary">New</button>
                    </div>
                </div>
            </form>
            <form role="form" method="post" id="userTypeForm" action="/admin/config/userTypeManagement/saveUserTypeManagement">
                <input type="hidden" value="${message}" id="message"/>
                <input type="hidden" value="${status}" id="status" />
                <input type="hidden" name="userTypeId" value="${userType.userTypeId eq null ? '' : userType.userTypeId}"
                       id="userTypeId"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="userType">User Type</label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="userType" class="form-control" id="userType"
                               value="${userType.userType}">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="description">Description</label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="description" class="form-control" id="description"
                               value="${userType.description}">
                    </div>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group updateOperation" style="display: none">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-8">
                        <select name="status" class="form-control" id="masterDataStatus">
                            <c:forEach items="${statusList}" var="status">
                                <option ${status.statusSeq eq userType.status ? 'selected' : ''}
                                        value="${status.statusSeq}">
                                        ${status.status}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group updateOperation" style="display: none">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedBy">${userType.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedDate"><fmt:formatDate value="${userType.lastModifiedDate}"
                                                                         pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdBy">${userType.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdDate"><fmt:formatDate value="${userType.createdDate}"
                                                                        pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="pull-right">
                        <button onclick="form_validate('userTypeForm')" type="submit" class="btn btn-success createOperation"
                                <sec:authorize
                                        access="!hasAuthority('admin@userTypeManagement_CREATE')">
                                    disabled="disabled"
                                </sec:authorize>>Save</button>
                    </div>
                    <div class="pull-right">
                        <button onclick="form_validate('userTypeForm')" type="submit" class="btn btn-success updateOperation" style="display: none"
                                <sec:authorize
                                        access="!hasAuthority('admin@userTypeManagement_UPDATE')">
                                    disabled="disabled"
                                </sec:authorize>>Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>