<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/21/2017
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/moduleManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Module</li>
        </ul>

        <div class="content-page col-md-9">
            <div class="col-lg-offset-1">
                <div>
                    <legend>Account Type</legend>
                </div>
            </div>
            <form role="form" action="/admin/config/moduleManagement/saveModule" id="moduleForm" method="post">
                <input type="hidden" name="moduleId" value="${module.moduleId eq null ? '' : module.moduleId}" id="moduleId"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="moduleName">Module Name</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" name="moduleName" class="form-control" id="moduleName" value="${module.moduleName}">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="description">Description</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" name="description" class="form-control" id="description" value="${module.description}">
                    </div>
                </div>

                <div class="row form-group updateOperation" style="display: none;">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedBy">${module.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedDate"><fmt:formatDate value="${module.lastModifiedDate}"
                                                                         pattern="dd-MM-yyyy"/></label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-offset-2">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdBy">${module.createdBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdDate"><fmt:formatDate value="${module.createdDate}"
                                                                        pattern="dd-MM-yyyy"/></label>
                            </div>
                        </div>
                    </div>
                </div>

                <br/>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <div class="row">
                    <div class="col-md-1 col-md-offset-6">
                        <button type="submit" class="btn btn-default col-md-offset-9 createOperation"
                                <sec:authorize
                                        access="!hasAuthority('admin@moduleManagement_CREATE')">
                                    disabled="disabled"
                                </sec:authorize>>Save</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-default updateOperation" style="display: none"
                                <sec:authorize
                                        access="!hasAuthority('admin@moduleManagement_UPDATE')">
                                    disabled="disabled"
                                </sec:authorize>>Update</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>