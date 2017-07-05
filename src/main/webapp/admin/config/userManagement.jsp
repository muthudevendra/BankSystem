<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/1/2017
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
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
            <form role="form" id="userForm" action="/admin/config/userManagement/saveUser" method="post">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="userName">User Name<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="text" name="username" class="form-control" id="userName">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="password">Password<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="password" name="password" class="form-control" id="password">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="confirmPassword">Confirm Password<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <input required type="password"  class="form-control"
                               id="confirmPassword">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-3 col-md-offset-1">
                        <label for="userType">User Type<span class="require">*</span></label>
                    </div>
                    <div class="col-lg-8">
                        <select name="userType" class="form-control" id="userType">
                            <option>
                            </option>
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
                                <label id="modifiedBy"></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="modifiedDate"><fmt:formatDate value="" pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdBy"></label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-7">
                                <label id="createdDate"><fmt:formatDate value="" pattern="dd-MM-yyyy HH:mm:ss"/></label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="pull-right">
                        <button onclick="form_validate('userForm')" type="submit" class="btn btn-default">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
