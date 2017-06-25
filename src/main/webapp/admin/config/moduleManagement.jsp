<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/21/2017
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp"%>
<script type="text/javascript" src="../script/moduleManagement.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Module</li>
        </ul>
        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Module Management</legend>
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
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedBy">Lakshitha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
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

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <div class="row">
                    <div class="col-md-1 col-md-offset-6">
                        <button type="submit" class="btn btn-default col-md-offset-9"
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