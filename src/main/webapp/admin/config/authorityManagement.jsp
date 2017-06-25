<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/24/2017
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<br/>
<div class="panel">
    <div class="panel-body">
        <div class="col-lg-8 col-lg-offset-2">
            <div id="legend">
                <legend>Authority Management</legend>
            </div>
            <br>
            <form role="form"  action="/admin/customer/authorityManagement/saveAuthority" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="authorityName">Authority Name</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" name="authorityName" class="form-control" id="authorityName">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="moduleId">Module</label>
                    </div>
                    <div class="col-lg-6">
                        <select name="moduleId" class="form-control" id="moduleId">
                            <c:forEach items="${moduleList}" var="module">
                                <option value="${module.moduleId}">${module.moduleName}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="description">Description</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" name="description" class="form-control" id="description">
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
                                <label id="modifiedBy">${module.lastModifiedBy}</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedDate">${module.lastModifiedDate}</label>
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
                                <label id="createdDate">${module.createdDate}</label>
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

