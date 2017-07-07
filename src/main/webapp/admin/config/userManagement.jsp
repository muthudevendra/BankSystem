<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/1/2017
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/userManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">User</li>
        </ul>

        <div class="content-page col-md-10">
            <div>
                <legend>User Management</legend>
            </div>
            <form role="form" action="/admin/config/userManagement" id="newUserTypeAuthority">
                <div class="row">
                    <div class="pull-left">
                        <button type="submit" class="btn btn-primary">New</button>
                    </div>
                </div>
            </form>
            <form role="form" id="userForm" action="/admin/config/userManagement/saveUser" method="post">
                <input type="hidden" value="${message}" id="message"/>
                <input type="hidden" value="${status}" id="status"/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="userId" value="${user.userId eq null ? '' : user.userId}" id="userId"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="userName">User Name<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="username" class="form-control" id="userName" value="${user.username}">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="password">Password<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="password" name="password" class="form-control" id="password" value="${user.password}">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="confirmPassword">Confirm Password<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="password" name="confirmPassword" class="form-control" id="confirmPassword">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="userType">User Type<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <select name="userTypeId" class="form-control" id="userType">
                            <c:forEach items="${userTypeList}" var="userType">
                                <option ${userType.userTypeId eq user.userTypeId ? 'selected' : ''}
                                        value="${userType.userTypeId}">
                                        ${userType.description}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group updateOperation" style="display: none" >
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-8">
                        <select name="enabled" class="form-control" id="masterDataStatus">
                            <c:forEach items="${statusList}" var="status">
                                <option ${status.statusSeq eq user.enabled ? 'selected' : ''}
                                        value="${status.statusSeq}">
                                        ${status.status}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedBy">${user.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedDate"><fmt:formatDate value="${user.lastModifiedDate}" pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdBy">${user.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdDate"><fmt:formatDate value="${user.createdDate}" pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="pull-right createOperation">
                        <button onclick="form_validate('userForm')" type="submit" class="btn btn-default" <sec:authorize
                                access="!hasAuthority('admin@userManagement_CREATE')">
                            disabled="disabled"
                        </sec:authorize>>Save</button>
                    </div>

                    <div class="pull-right updateOperation" style="display: none">
                        <button onclick="form_validate('userForm')" type="submit" class="btn btn-default" <sec:authorize
                                access="!hasAuthority('admin@userManagement_UPDATE')">
                            disabled="disabled"
                        </sec:authorize>>Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
