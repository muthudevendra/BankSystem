<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/21/2017
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp"%>
<script type="text/javascript" src="../script/moduleManagement.js"></script>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="col-lg-8 col-lg-offset-2">
            <div id="legend">
                <legend>Authority Management</legend>
            </div>
            <br>
            <form role="form" action="moduleManagement/saveModule" method="post">
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-2">
                        <label for="moduleName">Module Name</label>
                    </div>
                    <div class="col-lg-6">
                        <input type="text" name="moduleName" class="form-control" id="moduleName">
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

                <div class="row form-group">
                    <h5>
                        <div class="col-md-1 col-md-offset-1">
                            <span class="label label-info">Created Date <span class="badge badge-pill badge-default"> Created Date </span></span>
                        </div>
                        <div class="col-md-1 col-md-offset-2">
                            <span class="label label-info">Created By <span class="badge badge-pill badge-default"> Lakshitha </span></span>
                        </div>
                        <div class="col-md-1 col-md-offset-2">
                            <span class="label label-info">Last Modified Date <span class="badge badge-pill badge-default"> Date </span></span>
                        </div>
                        <div class="col-md-1 col-md-offset-2">
                            <span class="label label-info">Last Modified By <span class="badge badge-pill badge-default"> Lakshitha </span></span>
                        </div>
                    </h5>
                </div>
                <br/>

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <div class="row">
                    <div class="col-md-1 col-md-offset-8">
                        <button type="submit" class="btn btn-default col-md-offset-10"
                                <sec:authorize
                                        access="!hasAuthority('admin@moduleManagement_CREATE')">
                                    disabled="disabled"
                                </sec:authorize>>Save</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-default">Update</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-default">Delete</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>