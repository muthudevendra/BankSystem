<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/28/2017
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/changePassword.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/profile/loginHistory">Login History</a></li>
            <li class="active"><a href="/ebank/profile/changePassword">Change Password</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">My Profile</a></li>
            <li class="active">Change Password</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>Change Password</legend>
            </div>

            <div class="col-md-9 col-md-offset-3">
                <div class="content-form-page">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <form id="changePasswordForm" action="/ebank/profile/changePassword/changePassword"
                                  method="post" class="form-horizontal form-without-legend" role="form">
                                <input type="hidden" value="${message}" id="message"/>
                                <input type="hidden" value="${status}" id="status"/>
                                <div class="form-group">
                                    <label for="userName" class="col-lg-4 control-label">User Name <span>*</span></label>
                                    <div class="col-lg-8">
                                        <input readonly type="text" value="<sec:authentication property="name"/>" class="form-control" id="userName">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="currentPassword" class="col-lg-4 control-label">Current Password <span>*</span></label>
                                    <div class="col-lg-8">
                                        <input required name="oldPassword" type="Password" class="form-control"
                                               id="currentPassword">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="newPassword" class="col-lg-4 control-label">New Password <span>*</span></label>
                                    <div class="col-lg-8">
                                        <input required name="password" type="Password" class="form-control" id="newPassword">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirmPassword" class="col-lg-4 control-label">Confirm New Password
                                        <span>*</span></label>
                                    <div class="col-lg-8">
                                        <input required type="Password" class="form-control" id="confirmPassword">
                                    </div>
                                </div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <div class="row">
                                    <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                        <button onClick="form_validate('changePasswordForm')"
                                                type="submit" class="btn btn-primary"
                                                <sec:authorize
                                                        access="!hasAuthority('ebank@changePassword_CHANGE')">
                                                    disabled="disabled"
                                                </sec:authorize>>Save
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>