<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/28/2017
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>
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
        <div class="col-lg-8 col-lg-offset-1">
            <div>
                <legend>Change Password</legend>
            </div>
        </div>
        <div class="col-md-9 col-md-offset-3">
            <div class="content-form-page">
                <div class="row">
                    <div class="col-md-7 col-sm-7">
                        <form class="form-horizontal form-without-legend" role="form">
                            <div class="form-group">
                                <label for="userName" class="col-lg-4 control-label">User Name <span
                                        class="require">*</span></label>
                                <div class="col-lg-8">
                                    <input type="text" class="form-control" id="userName">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="currentPassword" class="col-lg-4 control-label">Current Password <span
                                        class="require">*</span></label>
                                <div class="col-lg-8">
                                    <input type="Password" class="form-control" id="currentPassword">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="newPassword" class="col-lg-4 control-label">New Password <span
                                        class="require">*</span></label>
                                <div class="col-lg-8">
                                    <input type="Password" class="form-control" id="newPassword">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="confirmPassword" class="col-lg-4 control-label">Confirm New Password <span
                                        class="require">*</span></label>
                                <div class="col-lg-8">
                                    <input type="Password" class="form-control" id="confirmPassword">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                    <button type="submit" class="btn btn-primary">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
