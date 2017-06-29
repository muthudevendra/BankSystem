<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/28/2017
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/userTypeAuthorityManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">User Authority</li>
        </ul>
        <div class="col-lg-8 col-lg-offset-1">
            <div>
                <legend>User Authority</legend>
            </div>
        </div>
        <div class="content-page col-md-9">
            <form role="form" action="/admin/config/userTypeAuthorityManagement/saveUserTypeAuthority" method="post" id="userTypeAuthorityform">
                <input type="hidden" name="userTypeAuthorityId" value="${userTypeAuthority.userTypeAuthorityId eq null ? '' : userTypeAuthority.userTypeAuthorityId}" id="userTypeId"/>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="usertype">User Type</label>
                    </div>
                    <div class="col-lg-8">
                        <select name="userTypeId" class="form-control" id="userTypeId">
                            <c:forEach items="${userTypeList}" var="userType">
                                <option ${userType.userTypeId eq userTypeAuthority.userTypeId ? 'selected' : ''}
                                        value="${userType.userTypeId}">
                                        ${userType.description}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="authoritytype">Authority Type</label>
                    </div>
                    <div class="col-lg-8">
                        <select name="authorityId" class="form-control" id="authorityId">
                            <c:forEach items="${authorityList}" var="authority">
                                <option ${authority.authorityId eq userTypeAuthority.authorityId ? 'selected' : ''}
                                        value="${authority.authorityId}">
                                        ${authority.authorityName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-3">
                        <select name="status" class="form-control" id="status">
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
                <div class="row form-group">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedBy">${userTypeAuthority.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedDate">${userTypeAuthority.lastModifiedDate}</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-offset-2">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdBy">${userTypeAuthority.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdDate">${userTypeAuthority.createdDate}</label>
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
