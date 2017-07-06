<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/28/2017
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/userTypeAuthorityManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">User Authority</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>User Type Authority Management</legend>
            </div>
            <form role="form" id="newUserTypeAuthority">
                <div class="row">
                    <div class="pull-left">
                        <button type="submit" class="btn btn-primary">New</button>
                    </div>
                </div>
            </form>
            <form role="form" action="/admin/config/userTypeAuthorityManagement/saveUserTypeAuthority" method="post" id="userTypeAuthorityForm">
                <input type="hidden" value="${message}" id="message"/>
                <input type="hidden" value="${status}" id="status" />
                <input type="hidden" name="userTypeAuthorityId"
                       value="${userTypeAuthority.userTypeAuthorityId eq null ? '' : userTypeAuthority.userTypeAuthorityId}"
                       id="userTypeAuthorityId"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="userTypeId">User Type</label>
                    </div>
                    <div class="col-lg-8">
                        <select required name="userTypeId" class="form-control" id="userTypeId">
                            <option></option>
                            <c:forEach items="${userTypeList}" var="userType">
                                <option ${userType.userTypeId eq userTypeAuthority.userTypeId ? 'selected' : ''}
                                        value="${userType.userTypeId}">
                                        ${userType.userType}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="authorityId">Authority Type</label>
                    </div>
                    <div class="col-lg-8">
                        <select required name="authorityId" class="form-control select-picker" id="authorityId">
                            <option></option>
                            <c:forEach items="${authorityList}" var="authority">
                                <option ${authority.authorityId eq userTypeAuthority.authorityId ? 'selected' : ''}
                                        value="${authority.authorityId}">
                                        ${authority.authorityName}
                                </option>
                            </c:forEach>
                        </select>
                        <input type="hidden" id="search" placeholder="search"/>
                        <ul class="list-group" id="result"></ul>
                    </div>
                </div>
                <div class="row form-group updateOperation" style="display: none">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-8">
                        <select name="status" class="form-control" id="masterDataStatus">
                            <c:forEach items="${statusList}" var="status">
                                <option ${status.statusSeq eq userTypeAuthority.status ? 'selected' : ''}
                                        value="${status.statusSeq}">
                                        ${status.status}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <br/>
                <div class="row form-group updateOperation" style="display: none">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedBy">${userTypeAuthority.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedDate"><fmt:formatDate value="${userTypeAuthority.lastModifiedDate}" pattern="dd-MM-yyyy HH:ss"/></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdBy">${userTypeAuthority.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdDate"><fmt:formatDate value="${userTypeAuthority.createdDate}" pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row">
                    <div class="pull-right">
                        <button onclick="form_validate('userTypeAuthorityForm')" type="submit" class="btn btn-success createOperation"
                                <sec:authorize
                                        access="!hasAuthority('admin@userTypeAuthorityManagement_CREATE')">
                                    disabled="disabled"
                                </sec:authorize>>Save
                        </button>
                    </div>
                    <div class="pull-right">
                        <button onclick="form_validate('userTypeAuthorityForm')" type="submit" class="btn btn-success updateOperation" style="display: none"
                                <sec:authorize
                                        access="!hasAuthority('admin@userTypeAuthorityManagement_UPDATE')">
                                    disabled="disabled"
                                </sec:authorize>>Update
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>