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
        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>User Type</legend>
            </div>
        </div>
        <div class="content-page col-md-9">
            <form role="form" method="post" id="userTypeform"action="/admin/config/userTypeManagement/saveUserTypeManagement">
                <input type="hidden" name="userTypeId" value="${userType.userTypeId eq null ? '' : userType.userTypeId}" id="userTypeId"/>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="userType">User Type</label>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" name="userType" class="form-control" id="userType" value="${userType.userType}">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="description">Description</label>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" name="description" class="form-control" id="description" value="${userType.description}">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="status">Status</label>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        <div class="col-lg-3">
                            <select name="status" class="form-control" id="status">
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
                            <div class="col-md-6">
                                <label id="modifiedBy">${userType.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedDate">${userType.lastModifiedDate}</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-offset-2">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdBy">${userType.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdDate">${userType.createdDate}</label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col-md-1 col-md-offset-8">
                        <button type="submit" class="btn btn-success createOperation">Save</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-default updateOperation" style="display: none">Update</button>
                    </div>
                    <%--<div class="col-md-1">--%>
                        <%--<button type="submit" class="btn btn-danger">Delete</button>--%>
                    <%--</div>--%>
                </div>
            </form>
        </div>
    </div>
</div>